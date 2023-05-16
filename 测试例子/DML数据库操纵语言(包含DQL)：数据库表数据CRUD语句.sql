-- 1.使用insert语句向表中插入三个员工的信息
-- create table employee(
-- 	id int,
-- 	name varchar(50),
-- 	sex bit(1),
-- 	brithday date,
-- 	entry_date date,
-- 	job varchar(200),
-- 	salary double(6,2),
-- 	resume text
-- );

-- insert into employee(id, name, sex, brithday, entry_date, job, salary, resume)
-- 	values(1,'asm',0,'1988-01-01','2011-04-04','develper','100','student');

-- 说明一：可以省略字段名，但是字段的数据需要给全
-- insert into employee
-- 	values(2,'c',0,'1988-01-01','2011-04-04','develper','100','student');

-- 说明二：可以直接插入部分字段
-- insert into employee(id, name) values(3, 'c++');

-- 说明三：插入中文需要调整客户端，由于客户端的编码是gbk，这个问题是windows对于客户端编码的要求，
-- 不需要解决，编码过程中，是没有乱码的。
-- show variables like 'char%';
-- set character_set_client = utf8;
-- -- set character_set_client = gkb;
-- insert into employee(id, name) values(4, '易语言');
--
-- show variables like 'char%';
-- set character_set_results = utf8;
-- -- set character_set_results = gkb;


-- 2.将所有员工薪水修改为5000元
-- update employee set salary = 5000;

-- 3.将姓名为'xxx'的员工薪水修改为3000元
-- update employee set salary = 3000 where name = '易语言';
-- 注意：开发中写update一定先写为where

-- 4.将姓名为'xxx'的员工薪水修改为4000,job改为'yyy'
-- update employee set salary = 9000, job = 'c#' where id = 4;

-- 5.将'xxx'的薪水在原有的基础上增加1000元
-- update employee set salary = salary + 1000 where id = 2;

-- 6.删除某一列的数据
-- update employee set job = null;

-- 7.删除表中名称为'xxx'的记录
-- delete from employee where id = 4;

-- 8.删除表中所有记录
-- delete from employee;

-- 9.使用truncate删除表中记录
-- truncate table employee;

-- 10.delete和truncate都能删除表中所有数据，区别是什么？
-- delete命令删除，是一条一条删除
-- truncate命令，是一次性drop整个表，再重建这个表
-- 如果表中数据量很大，用truncate；delete语句如果删除，主键仍然被占用。



