-- �½����ݿ�
create database С����ҵ����;

-- �½���
create table ס��
(
	ס����� char(6) not null,
	�������� varchar(10),
	�ֻ��� char(11),
	�����ʼ� varchar(20),
	��ַ varchar(30)
);
create table С��
(
	С������ varchar(20) not null,
	С����ַ varchar(30) not null,
	С����� float
);
create table ����Ա
(
	��� char(6) not null,
	���� varchar(10),
	�Ա� char(2),
	���� integer,
	���� varchar(16),
	�ֻ��� char(11)
);
create table ά�޹�
(
	�ֻ��� char(11) not null,
	���� varchar(10),
	���� varchar(20),
	�Ա� char(2),
	ά�ޱ�� char(6) not null
);
create table ά��
(
	ԭ�� varchar(30),
	ʩ������ datetime,
	ʩ����λ varchar(30),
	ά�ޱ�� char(6) not null,
	�������ֻ� char(11)
);
create table �ɷ���
(
	��� char(6) not null,
	���� varchar(20),
	���� float,
	��ֹ���� datetime,
	�ɷ��˱�� char(6),
	���� float
);
create table �ɷ�
(
	�ɷ����� datetime not null,
	�ɷ�ʱ�� datetime not null,
	��� float,
	�ɷ����� varchar(20) not null,
	�ɷ��˱�� char(6) not null
);
create table �������
(
	������ char(6) not null,
	�������� char(2),
	����ʱ��
		datetime not null,
	�������� datetime not null
);

-- �������Լ��
alter table ס�� add constraint pk_ס�� primary key(ס�����);
alter table С�� add constraint pk_С�� primary key(С����ַ, С������);
alter table ����Ա add constraint pk_����Ա primary key(���);
alter table ά�޹� add constraint pk_ά�޹� primary key(�ֻ���, ά�ޱ��);
alter table ά�� add constraint pk_ά�� primary key(ά�ޱ��);
alter table �ɷ��� add constraint pk_�ɷ��� primary key(���);
alter table �ɷ� add constraint pk_�ɷ� primary key(�ɷ��˱��, �ɷ�����, �ɷ�����, �ɷ�ʱ��);
alter table ������� add constraint pk_������� primary key(������, ����ʱ��, ��������);

-- ������
alter table �ɷ� add constraint fk_�ɷ�_ס��
	foreign key(�ɷ��˱��) references ס�� (ס�����);
alter table �ɷ��� add constraint fk_�ɷ���_ס��
	foreign key(�ɷ��˱��) references ס�� (ס�����);
alter table ά�޹� add constraint fk_ά�޹�_ά��
	foreign key(ά�ޱ��) references ά�� (ά�ޱ��);
alter table ������� add constraint fk_�������_ס��
	foreign key(������) references ס�� (ס�����);

-- ��Ӽ��Լ��
alter table ������� add constraint ck_�������_�������� check(�������� = '��' or �������� = '��');
alter table ס�� add constraint ck_ס��_ס����� check(ס����� like 'ZH____');
alter table ������� add constraint ck_�������_������ check(������ like 'ZH____');
alter table �ɷ� add constraint ck_�ɷ�_�ɷ��˱�� check(�ɷ��˱�� like 'ZH____');
alter table �ɷ��� add constraint ck_�ɷ���_�ɷ��˱�� check(�ɷ��˱�� like 'ZH____');
alter table ����Ա add constraint ck_����Ա_��� check(��� like 'BJ____');
alter table ά�� add constraint ck_ά��_ά�ޱ�� check(ά�ޱ�� like 'WX____');
alter table �ɷ��� add constraint ck_�ɷ���_��� check(��� like 'JF____');
alter table ����Ա add constraint ck_����Ա_�Ա� check(�Ա� = '��' or �Ա� = 'Ů');
alter table ά�޹� add constraint ck_ά�޹�_�Ա� check(�Ա� = '��' or �Ա� = 'Ů');
alter table �ɷ� add constraint ck_�ɷ�_��� check(��� >= 0);
alter table �ɷ��� add constraint ck_�ɷ���_���� check(���� >= 0);


