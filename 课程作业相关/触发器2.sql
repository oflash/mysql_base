
-- alter table ������� add ������ integer default(0);
-- alter table ������� add ����� integer default(0);

-- ͳ�ƾ��������� ���� �� ����

-- ͳ��ˮ, ���
create trigger tri_�Ż�
on �ɷ���
after insert as
begin
	declare @danjia float;
	declare @shuliang float;
	declare @jfr char(6);
	select @danjia = ����, @shuliang = ����, @jfr = �ɷ��˱��
	from inserted;
	update �ɷ�
	set ��� = @shuliang * @danjia
	where �ɷ��˱�� = @jfr;
end