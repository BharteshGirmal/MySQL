drop procedure if exists searchDriver;
delimiter $$
create procedure searchDriver(in _driverID int)
begin
	declare x int default false;
	select true into x from driver where id = _driverID;
	if x then 
		select driver.ID, namefirst, namelast, emailID, address, number, code, DOI, DOE from driver, driver_address, driver_phone, driver_licence where driver.id = driver_address.driverID and driver.ID = driver_phone.driverID and driver.ID = driver_Licence.driverID and driver.ID = _driverID;
	else
		select "Driver Not found!"  as "Message";
	end if;
end$$
delimiter ;