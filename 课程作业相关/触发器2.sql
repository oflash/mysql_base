
-- alter table 居民出入 add 出次数 integer default(0);
-- alter table 居民出入 add 入次数 integer default(0);

-- 统计居民出入情况 出， 入 次数

-- 统计水, 电费
create trigger tri_优惠
on 缴费项
after insert as
begin
	declare @danjia float;
	declare @shuliang float;
	declare @jfr char(6);
	select @danjia = 单价, @shuliang = 数量, @jfr = 缴费人编号
	from inserted;
	update 缴费
	set 金额 = @shuliang * @danjia
	where 缴费人编号 = @jfr;
end