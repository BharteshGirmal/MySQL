drop procedure if exists deleteDriver;
delimiter $$
create procedure deleteDriver(in _driverID int)
begin
	declare x int;
	select ID into x from driver where ID = _driverID;
	if x is not null then
		delete from driver_licence where id = _driverID;
		delete from driver_phone where id = _driverID;
		delete from driver_address where id = _driverID;
		delete from driver where id = _driverID;
	
		select "Driver deleted..." as "Message";
	else
		select "Driver not found..."  as "Message";
	end if;
end$$
delimiter ;