-- �ɽɷ��Ż���
create trigger tri_�Ż�
on �ɷ�
after insert as
begin
	declare @jine float;
	select @jine = ���
	from inserted;
	update �ɷ�
	set ��� = @jine * 0.9;
end

