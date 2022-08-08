select * from batch1
select avg(salary) as 'Average Salary' from batch1
select min(salary) as 'Minimum Salary' from batch1
select max(salary) as 'Maximum Salary' from batch1
select count(salary) as 'Count Salary' from batch1
select sum(salary) as 'sum Salary' from batch1
use sqlbatch

create table batch3
(
EID int,
Ename varchar(15),
Econtact varchar(15),
Salary int 
);
select * from batch3
insert into batch3 values(1,'Peter','9876543212',20000)
insert into batch3 values(2,'Paul','9876543712',15000)
insert into batch3 values(3,'Sam','9872543212',20000)
insert into batch3 values(4,'John','9876563212',15000)
insert into batch3 values(5,'Jancy','9876143212',18000)
insert into batch3 values (6,'Gayathri','894834848',25000)

select avg(Salary) as 'Average Salary' from batch3
select sum(Salary) as 'sum Salary' from batch3
select count(Salary) as 'Count Salary' from batch3

alter table batch3 add  EDesignation varchar(15)
update batch3 set EDesignation ='Developer' where eid =1
  update batch3 set EDesignation='Designer' where eid =2
   update batch3 set EDesignation ='Developer' where eid =3
    update batch3 set EDesignation ='Developer' where eid =4
	 update batch3 set EDesignation ='Designer' where eid =5
	  update batch3 set EDesignation ='Software' where eid =6

	  --select avg(Salary) as 'Average Salary',Edesignation from batch3 where Edesignation='Developer'
	  --group
	  	 select avg(Salary) as 'Average Salary',Edesignation from batch3 group by Edesignation
		 --having
select avg(Salary) as 'Average Salary',Edesignation from batch3 group by Edesignation having  Edesignation='Designer'
--order by clause
select * from batch3 order by Salary
select * from batch3 order by Salary desc
select * from batch3 order by Salary desc,eid desc
use sqlbatch
select * from employeee
--create synonym
create synonym e2 for employeee
select * from e2
--drop synonym
drop synonym if exists e2

create table students
(
SID int primary key,
SName varchar(25) not null,
SDept int not null,
SClub int not null
)
--alter datatypes
alter table students alter column SDept varchar(15)
alter table students alter column SClub varchar(15)

create table SDept
(
DID int primary key,
DeptName varchar(25) not null
)
create table SClub
(
Cid int primary key,
clubName varchar(25) not null
)
select * from students
select * from SDept
select * from SClub

insert into students values(1,'Sam','CSE','Sports')
insert into SDept values(1,'CSE')
--inner join
select * from students
select * from SDept
select SID,SName,SDept,DID from students inner join SDept on SDept=DeptName


select students.SID,students.SName,students.SDept,SDept.DID from students inner join SDept on students.SDept=SDept.DeptName
select s.SID,s.SName,d.DeptName,s.SClub from students as s inner join SDept as d on s.SDept=d.DeptName inner join SClub as c on s.SClub=c.clubName
--left,right,full
select SID,SName,SDept,DID from students left join SDept on SDept=DeptName
select SID,SName,SDept,DID from students right join SDept on SDept=DeptName
select SID,SName,SDept,DID from students full join SDept on SDept=DeptName

--cross
select * from SDept cross join SClub

--CREATE SEQUENCE
create sequence empid as INT start with 1 increment by 5
create table sample1
(
id int primary key ,
name varchar(20)
)
insert into sample1 values(NEXT VALUE FOR EMPID,'Peter')
select * from sample1
insert into sample1 values(NEXT VALUE FOR EMPID,'Paul')
insert into sample1 values(NEXT VALUE FOR EMPID,'John')
--alter sequence
alter sequence empid restart with 1 increment by 1

create table sample2
(
id int primary key ,
name varchar(20)
)
insert into sample2 values(NEXT VALUE FOR EMPID,'Peter')
select * from sample2
insert into sample2 values(NEXT VALUE FOR EMPID,'Paul')
insert into sample2 values(NEXT VALUE FOR EMPID,'John')

alter sequence empid restart with 1 increment by 1

select NEXT VALUE FOR EMPID