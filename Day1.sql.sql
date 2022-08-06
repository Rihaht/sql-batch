create database sqlbatch2
create table batch2
(
EID int,
EName varchar(15),
EContact varchar(10),
EDesignation varchar(15)
)
insert into batch1 values(1,'Peter','9876543212','Developer')
insert into batch1 values(2,'Paul','9876543712','Designer')
insert into batch1 values(3,'Sam','9872543212','Developer')
insert into batch1 values(4,'John','9876563212','Developer')
insert into batch1 values(5,'Jancy','9876143212','Designer')
insert into batch1 values (6,'Gayatheri','894834848','Software')


select * from batch1
delete from batch1 where EID=1
truncate table batch1
alter table batch1 add mobile varchar(15)
insert into batch1 values(1,'Peter','9876543212','Developer','456557575')
update batch1 set mobile ='7397101918' where eid=2
insert into batch1 values(8,'Uma','98744848','Businss','7549575955')
select mobile as checkin from batch1


 sp_rename 'batch1.mobile','checkin','column'
 create schema sqltraine
 create table  demo
 (
 id int
 )
 select * from demo
 drop schema if exists sqltraine
 update batch1 set checkin ='in' where eid=2
 update batch1 set checkin ='in' where eid=3
 update batch1 set checkin ='in' where eid=1
 update batch1 set checkin ='out' where eid=4
 update batch1 set checkin ='in' where eid=5
 update batch1 set checkin ='out' where eid=6
 update batch1 set checkin ='in' where eid=8
 insert into batch1 values(10,'thahir',7546865,'Admin','in')
 select * from batch1
 alter table batch1 add salary varchar(15)
 update batch1 set salary =20000 where eid =1
  update batch1 set salary =15000 where eid =2
   update batch1 set salary =20000 where eid =3
    update batch1 set salary =15000 where eid =4
	 update batch1 set salary =18000 where eid =5
	  update batch1 set salary =25000 where eid =6
	   update batch1 set salary =17500 where eid =8
	    update batch1 set salary =16000 where eid =9
		 update batch1 set salary =20000 where eid =10
		 --relational
		 select * from batch1 where salary<20000
		 select * from batch1 where salary>20000
		 --logical
		 select * from batch1 where salary <=20000 And EDesignation='developer'