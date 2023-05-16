-- 1.创建一个员工表  //0男 1 女
-- create table employee(
--    id  int,
--    name varchar(50),
--    sex  bit(1),
--    brithday date,
--    entry_date date,
--    job  varchar(200),
--    salary double(6,2),
--    resume text
-- );

-- 2.在上面员工表的基本上增加一个image列。
-- alter table employee add image blob;

-- 3.修改job列，使其长度为60。
-- alter table employee modify job varchar(60);

-- 4.删除sex列。
-- alter table employee drop sex;

-- 5.表名改为user。
-- rename table employee to user;

-- 6.修改表的字符集为utf-8
-- alter table user character set gbk;
-- alter table user character set utf8;

-- 7.列名name修改为username
-- alter table user change column name username varchar(20);

-- 8.查看所有表
-- show tables;

-- 9.查看表的创建细节
-- show create table user;

-- 10.删除表
-- drop table user;






