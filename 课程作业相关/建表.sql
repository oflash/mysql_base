-- 新建数据库
create database 小区物业管理;

-- 新建表
create table 住户
(
	住户编号 char(6) not null,
	户主姓名 varchar(10),
	手机号 char(11),
	电子邮件 varchar(20),
	地址 varchar(30)
);
create table 小区
(
	小区名称 varchar(20) not null,
	小区地址 varchar(30) not null,
	小区面积 float
);
create table 保洁员
(
	编号 char(6) not null,
	姓名 varchar(10),
	性别 char(2),
	年龄 integer,
	类型 varchar(16),
	手机号 char(11)
);
create table 维修工
(
	手机号 char(11) not null,
	姓名 varchar(10),
	类型 varchar(20),
	性别 char(2),
	维修编号 char(6) not null
);
create table 维修
(
	原因 varchar(30),
	施工日期 datetime,
	施工单位 varchar(30),
	维修编号 char(6) not null,
	报修人手机 char(11)
);
create table 缴费项
(
	编号 char(6) not null,
	名称 varchar(20),
	数量 float,
	截止日期 datetime,
	缴费人编号 char(6),
	单价 float
);
create table 缴费
(
	缴费日期 datetime not null,
	缴费时间 datetime not null,
	金额 float,
	缴费名称 varchar(20) not null,
	缴费人编号 char(6) not null
);
create table 居民出入
(
	居民编号 char(6) not null,
	出入类型 char(2),
	出入时间
		datetime not null,
	出入日期 datetime not null
);

-- 添加主键约束
alter table 住户 add constraint pk_住户 primary key(住户编号);
alter table 小区 add constraint pk_小区 primary key(小区地址, 小区名称);
alter table 保洁员 add constraint pk_保洁员 primary key(编号);
alter table 维修工 add constraint pk_维修工 primary key(手机号, 维修编号);
alter table 维修 add constraint pk_维修 primary key(维修编号);
alter table 缴费项 add constraint pk_缴费项 primary key(编号);
alter table 缴费 add constraint pk_缴费 primary key(缴费人编号, 缴费名称, 缴费日期, 缴费时间);
alter table 居民出入 add constraint pk_居民出入 primary key(居民编号, 出入时间, 出入日期);

-- 添加外键
alter table 缴费 add constraint fk_缴费_住户
	foreign key(缴费人编号) references 住户 (住户编号);
alter table 缴费项 add constraint fk_缴费项_住户
	foreign key(缴费人编号) references 住户 (住户编号);
alter table 维修工 add constraint fk_维修工_维修
	foreign key(维修编号) references 维修 (维修编号);
alter table 居民出入 add constraint fk_居民出入_住户
	foreign key(居民编号) references 住户 (住户编号);

-- 添加检查约束
alter table 居民出入 add constraint ck_居民出入_出入类型 check(出入类型 = '出' or 出入类型 = '入');
alter table 住户 add constraint ck_住户_住户编号 check(住户编号 like 'ZH____');
alter table 居民出入 add constraint ck_居民出入_居民编号 check(居民编号 like 'ZH____');
alter table 缴费 add constraint ck_缴费_缴费人编号 check(缴费人编号 like 'ZH____');
alter table 缴费项 add constraint ck_缴费项_缴费人编号 check(缴费人编号 like 'ZH____');
alter table 保洁员 add constraint ck_保洁员_编号 check(编号 like 'BJ____');
alter table 维修 add constraint ck_维修_维修编号 check(维修编号 like 'WX____');
alter table 缴费项 add constraint ck_缴费项_编号 check(编号 like 'JF____');
alter table 保洁员 add constraint ck_保洁员_性别 check(性别 = '男' or 性别 = '女');
alter table 维修工 add constraint ck_维修工_性别 check(性别 = '男' or 性别 = '女');
alter table 缴费 add constraint ck_缴费_金额 check(金额 >= 0);
alter table 缴费项 add constraint ck_缴费项_数量 check(数量 >= 0);


