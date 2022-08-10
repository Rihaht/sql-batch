use sqlbatch

--index


select * from students where sid=1

-- 2 types - CLUSTERED/NON-CLUSTERED INDEX
--CLUSTERED - PRIMARY KEY->CLUSTERED INDEX(ONLY 1)->LEAF NODE->STRUCTURED FORMAT(DATA)->CLUSTERED TABLE

select * from batch1
create clustered index ix_eid on batch1(eid)

--NON CLUSTERED INDEX - UNSTRUCTURED FORMAT 
create index ix_ename on batch1(ename)

--UNIQUE NON CLUSTERED INDEX
create unique index ix_sname on batch1(EName)

--FILTERED INDEX
select * from batch1 where ename='John'
create index ix_ename on batch1(ename) where ename='John'

--TRIGGERS-4 TYPES
--DML,DDL,CLR,LOGON

--DML-INSERT,UPDATE,DELETE

select * from SClub

create trigger trg_insert
on Sclub
FOR INSERT
as
begin
	print 'You cannot insert data'
	rollback transaction --undo the insert query
end

drop trigger trg_insert

insert into SClub values(7,'danceri','chii',01)

create trigger trg_dml
on SClub
FOR INSERT,UPDATE,DELETE
as
begin
	print 'You cannot perform DML Operations'
	rollback transaction --undo the DML Statements
end

insert into SClub values(7,'fan','vhii',04)
update SClub set Cid=6 where Cid=07
delete from SClub where Cid=5
select * from SClub

drop trigger trg_dml

--disable trigger trg_dml on SClub
--enable trigger trg_dml on SClub





--DDL TRIGGER
--Database Scoped
--Server Scoped

--DATABASE SCOPED
create trigger trg_ddl
on database
for CREATE_TABLE,ALTER_TABLE,DROP_TABLE
AS
	begin
		print 'You cannot perform DDL Operations on sqlbatch db'
		rollback transaction --undo the DML Statements
	end

disable trigger trg_ddl on database
disable trigger trg_dml on database


--SERVER SCOPED
create trigger trg_ddlserver
on ALL SERVER
for CREATE_TABLE,ALTER_TABLE,DROP_TABLE
AS
	begin
		print 'You cannot perform DDL Operations on SERVER'
		rollback transaction --undo the DML Statements
	end
	disable TRIGGER trg_ddlserver on ALL SERVER
	
	insert into SClub values(8,'danceri','chii',02)
	alter table SClub add moblie int
	--transition
	select * from SClub

BEGIN TRANSACTION
	insert into SClub values(14,'Liam','sai',2,787878) -- gets commited
	SAVE TRANSACTION insert_stmt
	delete from SClub where cid=14 --rollback
ROLLBACK TRANSACTION insert_stmt
COMMIT TRANSACTION

