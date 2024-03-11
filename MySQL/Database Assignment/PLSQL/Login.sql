drop procedure if exists Login;
delimiter $$
create procedure Login(in _driverID int)
begin
	declare x int;
    declare y int;
	select driver.ID into x from driver where driver.ID = _driverID;
    select driverID into y from onduty where driverID = _driverID;
	
    if x is not null then
		if y is null then
			insert into onduty values(default, _driverID, CURRENT_DATE(), "on duty");
			select concat("Driver ", _driverID, " successfully logged in...") as "Message";
        else
			select "Driver already logied in" as "Message";
        end if;
    else
		select "Driver not found" as "Message";
    end if;
end$$
delimiter ;