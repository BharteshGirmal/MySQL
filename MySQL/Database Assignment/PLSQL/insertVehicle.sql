drop procedure if exists insertVehicle;
delimiter $$
create procedure insertVehicle(in _number varchar(45), in _model varchar(45), in _type varchar(45), in _capacity  varchar(45))
begin
	declare _vehicleNumber varchar(45);
	select number into _vehicleNumber from vehicle where number = _number;
	if _vehicleNumber is null then
		insert into vehicle values (default, _number, _model, _type, _capacity);

		select "New vehicle inserted" as "Message";
	else
		select "Vehicle already present" as "Message";
	end if;

	
end$$
delimiter ;