

/*
drop procedure if exists proc1;
delimiter $
create procedure proc1(in D_Name varchar(20))
begin
	declare x int default 0;
	
	select deptno into x from dept where dname=D_Name;
	
	if x=0 then 
	select "No Department Record is Present" as "Message" ;
	
	else
		select * from emp where deptno=x;
		select * from dept where deptno=x;
	end if;
end $
delimiter ;
*/

/*
drop procedure if exists Proc2 ;
delimiter $
create procedure Proc2(in Name varchar(20)) 
begin
declare x int;

declare _EMPNO int ; 
declare _ENAME varchar(20) ;
declare _GENDER char(1);
declare _JOB varchar(20) ;
declare  _MGR int ;
declare _HIREDATE DATE ;
declare _SAL int;
declare _COMM int;
declare _DEPTNO int;
declare _BONUSID int ;
declare _USERNAME varchar(20) ;
declare _PWD  varchar(20) ;
declare _PHONE varchar(20) ;
declare _isActive bool;
declare _SrNO int ; 

declare C1 cursor for select * from emp;

select deptno into x from dept where dname=Name;
select x;


open C1;
	forloop:loop
			fetch C1 into _EMPNO , _ENAME,_GENDER ,_JOB, _MGR ,_HIREDATE ,_SAL ,_COMM 
						,_DEPTNO ,_BONUSID , _USERNAME,_PWD ,_PHONE ,_isActive ,_SrNO ;
		if _DEPTNO=x then
			select _EMPNO , _ENAME,_GENDER ,_JOB, _MGR ,_HIREDATE ,_SAL ,_COMM 
				,_DEPTNO ,_BONUSID , _USERNAME,_PWD ,_PHONE ,_isActive ,_SrNO ;
		end if ;
	end loop forloop;
close C1 ;


end $
delimiter ;
*/


drop trigger if exists T1 ;
delimiter $
create trigger T1 before insert on N for each row;
declare x int ;
declare y varchar(20) ;
begin
select x=T1 from M;
select y=T2 from M;
if x = select T1 from N and y=select T2 from N then
select "The Record is Already Present in Table M";
end if;
end $ 
delimiter ;