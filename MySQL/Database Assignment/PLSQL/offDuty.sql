drop procedure if exists offDuty;
delimiter $$
create procedure offDuty()
begin
	declare x int;
	DECLARE EXIT HANDLER FOR 1452 SELECT 'Driver not found';  
	
	select * from driver where not exists (select * from onduty where driver.id = onduty.driverID);
end$$
delimiter ;