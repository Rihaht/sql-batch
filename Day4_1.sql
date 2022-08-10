use org
--function
--user defined
--scalar function

--cube
create function cube(@a int)
returns int
as 
begin
return @a*@a*@a
end
select dbo.cube(2) as Result

--age cal
create function CalcAge(@dob date)
returns int
as
begin
Declare @age int
set @age=datediff(year,@dob,getdate())
return @age
end
select dbo.CalcAge('1998-04-03') as Age

create table demo
(
sno int,
dob varchar(15),
Age int
)
select * from demo
select sno,dob,dbo.CalcAge(dob) as Age from demo

--Inline table-valued -
use sqlbatch
select * from batch1
create function Student_details(@id int)
returns table
as 

 return (select EID,EName,EDesignation from batch1 where EID=@id)

select * from dbo.Student_details(3)

--multi statement table
create function Student_club()
returns @table table (StudentID int,StudentName varchar(25),Studentclub int )
as
begin
insert into @table
select cid,clubName,Clubno from SClub
return
end
select * from batch3
alter table SClub add Sname varchar(15)
alter table SClub add Clubno int
select * from SClub

select * from dbo.Student_club()

--stored procedure
-- pre-compiled statements

create procedure proc_students_Dept
as
begin
select eid,ename,edesignation from batch1
end
exec proc_students_Dept
exec [sys].[xp_logininfo]


--sp with parameters
create procedure sp_clubdetails(@club int)
as
begin
return (select eid,ename,edesignation from batch1 eid = @club)
end
exec sp_clubdetails @club=202


