create table employeee
(
EID INT PRIMARY KEY,
ENAME VARCHAR(20) NOT NULL,
EDESIGNATION VARCHAR(20) NOT NULL
);
select * from employeee
insert  into employeee values(1,'Mohamed','admin')
insert  into employeee values(2,'john','admin'),(3,'peter','developer'),(4,'sam','QA team')
insert into employeee(EID,ENAME)values (9,'daisy')
create table batch2
(
id int not null,
name varchar(25) not null,
salary varchar(25) not null
);
select * from batch2
insert  into batch2 values(1,'thahir','2000')
--composite primary key
alter table batch2 add constraint pk_idname primary key(id,name)
insert into batch2 values(2,'ram','4000')
--check,default,unique key
create table volting
(
ID int primary key,
Name varchar(25)unique not null,
dob datetime not null check (dob <= current_timestamp),
age int not null check(age >=18),
designation varchar(25) default 'self-employeed'
)
insert into volting values (1,'John','2000-02-07 12:46:30',22,'IT employe')
select * from volting
insert into volting values (2,'jo','2003-02-07 12:40:30',22,'IT employe')
insert into volting values (3,'hen','2005-02-07 12:46:30',23,'IT employe')
insert into volting(ID,Name,dob,age )values (4,'hello','2001-02-07 12:46:30',22)
insert into volting(ID,name,dob,age )values (5,'gang','2001-02-07 12:46:30',22)
--primary key and foreign key
create table dept
(
did int primary key,
dname varchar(20) not null
)
insert into dept values(1,'Admin')
insert into dept values(2,'Developer')
insert into dept values(3,'Designer')
insert into dept values(4,'Tester')
insert into dept values (5,'QA ')
select * from dept
delete from dept where did=1
update dept set did=100 where did=1
create table emp
(
eid int primary key,
ename varchar(25)not null,
salary money,
dno int foreign key references dept (did)
)
insert into emp values(100,'John',25000,1)
insert into emp values(101,'Jancy',25000,2)
insert into emp values(102,'Joanna',28000,1)
insert into emp values(103,'Jamie',35000,3)

select * from emp
--parent table
create table parent
(
pid int primary key,
pname varchar(20) not null
)
insert into parent values(1,'p1')
insert into parent values(2,'p2')
insert into parent values(3,'p3')
--child table
create table child
(
cid int primary key,
cname varchar (20) not null,
pno int foreign key references parent (pid) on delete cascade on update cascade
)
insert into child values(100,'c1',1)
insert into child values(101,'c2',2)
insert into child values(102,'c3',1)
insert into child values(103,'c4',3)
select * from child

