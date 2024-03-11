drop procedure if exists updateDriverPhone;
delimiter $$
create procedure updateDriverPhone(in _oldPhone varchar(10), _newPhone varchar(10))
begin
	declare x varchar(10);
	select number into x from driver_phone where number = _oldPhone;
	
	if x is not null then
		update driver_phone set number = _newPhone where number = _oldPhone;

		select "Driver phone updated" as "Message";
	else
		select "Phone not found..." as Message;
	end if;
end$$
delimiter ;
