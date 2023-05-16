--------------------------------------------DDL（Data Definition Language）数据库定义语言1,库操作------------------------------
-- 1.创建一个名称为mydb_cmd1的数据库。
-- create database mydb_cmd1;

-- 2.创建一个使用utf-8/gbk字符集的mydb_cmd2数据库。
-- create database mydb_cmd2 character set gbk;

-- 3.创建一个使用utf-8字符集，并带校对规则的mydb_cmd3数据库。
-- create database mydb_cmd3 character set utf8 collate utf8_general_ci;

-- 4.查看当前数据库服务器中的所有数据库
-- show databases;(*****)

-- 5.查看前面创建的mydb_cmd2数据库的定义信息
-- show create database mydb_cmd2;

-- 6.删除前面创建的mydb_cmd1数据库
-- drop database mydb_cmd1;(*****)

-- 7.查看服务器中的数据库，并把其中某一个库的字符集修改为utf8;
-- alter database mydb_cmd2 character set utf8; 
-- show create database mydb_cmd2;


-- 8.备份test库中的数据，并恢复
create database test;
use test;
show tables;
create table demo(
  id int,
  name varchar(10)
);
insert into demo(id,name) values('1','zhangsan');
select * from demo;


-- 下面可在图形界面中使用
第一，备份数据库：
windows命令：mysqldump -u 用户名 -p 数据库名 > 文件名.sql
mysqldump -uroot -p test>c:\test.sql
root
在相应的路径下，生成了一个备份文件

第二，恢复数据库
mysql -uroot -proot
drop database test;
两种方法恢复该数据：
  1.用sql命令
  Source 文件名.sql
    1）创建数据库
    create database test;    use test;   show tables;
    2)用文件恢复数据
     source c:\test.sql
  2.用windows命令
    1）创建数据库
      create database test;    use test;   show tables;
    2）用windows命令恢复数据
    mysql -uroot -p test<c:\test.sql

