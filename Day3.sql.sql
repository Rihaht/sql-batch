create database org
use org
create table worker
(
worker_id int primary key not null ,
first_name char(25),
last_name char(25),
salary varchar (15),
dept char(25)
)
drop table worker
select * from worker
insert into worker values(1,'Monika','Arora','20000','HR')
insert into worker values(2,'Niharika','Verma','25000','Admin')
insert into worker values(3,'Vishal','Singhal','30000','HR')
insert into worker values(4,'Amitabh','Singh','25000','Developer')
insert into worker values(5,'Vivek','Bhati','30000','Tester')
--firstname  from workertable using alias  --que1
select first_name as Worker_name from worker
--print upper case  --que2
select upper (first_name)from worker
--unique value  --que3
select distinct dept from worker
--print length  --que5
select distinct len(dept)from worker
--first three char  --que4
select substring (first_name ,1,3 )from worker
--merge and print into single column que6
select concat(first_name,last_name) as Complete_name from worker
--print selected name  --que7
select * from worker where first_name in('monika','vishal')
--que8
select * from worker where dept like'admin%'
--que9
select * from worker where first_name like'%a'
--que10
select *from worker where first_name like '%a%'