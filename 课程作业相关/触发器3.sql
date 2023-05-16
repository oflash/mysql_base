-- 统计报修情况	总报修次数
-- alter table 维修 add 维修次数 integer;

create trigger tri_维修
on 维修
after insert
as
begin
	declare @weixiubianhao char(6);
	declare @weixiucishu integer;
	select @weixiubianhao = 维修编号, @weixiucishu = 维修次数 from inserted;
	update 维修
	set 维修次数 = count(@weixiubianhao)
	where 维修编号 = @weixiubianhao;
end
