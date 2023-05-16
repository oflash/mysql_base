-- 1.定义主键约束
-- create table teacher(
-- 	id int primary key,
-- 	name varchar(20)
-- );
-- insert into teacher values(10, 'python');

-- 2.定义主键自动增长
-- drop table teacher;
-- create table teacher(
-- 	id int primary key auto_increment,
-- 	name varchar(20)
-- );
-- insert into teacher(name) values('java');

-- 3.定义唯一约束

-- create table teacher1(
-- 	id int primary key auto_increment,
-- 	name varchar(20) unique
-- );
-- insert into teacher1(name) values('java2');
-- insert into teacher1(name) values('java1');

-- 4.定义非空约束
-- create table teacher2(
-- 	id int primary key auto_increment,
-- 	name varchar(20) unique not null
-- );
-- insert into teacher2(name) values('java0');
-- insert into teacher2(name) values('java2');

-- 5.定义外键约束
-- 一对一表关系
create table husbent(
	id int primary key auto_increment,
	name varchar(20) unique not null
);

create table wife(
	id int primary key auto_increment,
	name varchar(20) unique not null,
	husbent_id int,
	constraint husbent_id_FK foreign key(husbent_id) references husbent(id)
);

-- 一对多
-- 多对多

