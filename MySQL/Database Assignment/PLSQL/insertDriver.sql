drop procedure if exists insertDriver;
delimiter $$
create procedure insertDriver(in _namefirst varchar(45), in _namelast varchar(45), _emailID varchar(45), _address varchar(128))
begin
	declare _driverID int;
	insert into driver values (default,_namefirst, _namelast, _emailID);

	select concat("New driver inserted... and  your ID is: ", id) as Message from driver order by id desc limit 1;
	select id into _driverID from driver order by id desc limit 1;
	insert into driver_address values(default,_driverID, _address);
	
end$$
delimiter ;
