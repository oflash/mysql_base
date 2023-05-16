-- 由缴费优惠项
create trigger tri_优惠
on 缴费
after insert as
begin
	declare @jine float;
	select @jine = 金额
	from inserted;
	update 缴费
	set 金额 = @jine * 0.9;
end

