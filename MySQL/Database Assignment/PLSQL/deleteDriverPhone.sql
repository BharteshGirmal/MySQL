drop procedure if exists deleteDriverPhone;
delimiter $$
create procedure deleteDriverPhone(in _oldPhone varchar(10))
begin
	declare x varchar(10);
	select number into x from driver_phone where number = _oldPhone;
	
	if x is not null then
		delete from driver_phone where number = _oldPhone;
		select "Driver phone deleted" as "Message";
	else
		select "Phone not found..." as Message;
	end if;
end$$
delimiter ;
