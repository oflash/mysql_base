-- ͳ�Ʊ������	�ܱ��޴���
-- alter table ά�� add ά�޴��� integer;

create trigger tri_ά��
on ά��
after insert
as
begin
	declare @weixiubianhao char(6);
	declare @weixiucishu integer;
	select @weixiubianhao = ά�ޱ��, @weixiucishu = ά�޴��� from inserted;
	update ά��
	set ά�޴��� = count(@weixiubianhao)
	where ά�ޱ�� = @weixiubianhao;
end
