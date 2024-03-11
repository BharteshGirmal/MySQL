drop procedure if exists insertDriverLicence;
delimiter $$
create procedure insertDriverLicence(in _driverID int, _code varchar(45), _DOI date, _DOE date)
begin
	declare x int;
	select driver.id into x from driver where driver.ID = _driverID;
	if x is not null then
		insert into driver_Licence values (default, _driverID, _code, _DOI, _DOE );

		select concat("New driver licence inserted... for driverID is: ", _driverID) as Message from driver_licence order by id desc limit 1;
	else
		select "Driver not found..." as Message;
	end if;
end$$
delimiter ;
