drop procedure if exists insertDriverPhone;
delimiter $$
create procedure insertDriverPhone(in _driverID int, _driverPhone varchar(10))
begin
	declare x int;
	select driver.id into x from driver where driver.ID = _driverID;
	if x is not null then
		insert into driver_phone values (default,_driverID, _driverPhone);

		select concat("New driver phone inserted... and  your ID is: ", id) as Message from driver_phone order by id desc limit 1;
	else
		select "Driver not found..." as Message;
	end if;
end$$
delimiter ;
