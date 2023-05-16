-- 11.查询表中所有学生的信息
-- select * from student;

-- 12.查新表中所有学生的姓名和对应的英语成绩
-- select name,english from student;

-- 13.过滤表中重复英语数据
-- select distinct english from student;

-- 14.在所有学生分数上加10分特长分。
-- select name,chinese + 10, english + 10, math = 10 from student;

-- 15.统计每个学生的总分
-- select id,chinese + english + math from student;

-- 16.使用别名表示学生分数
-- select name, (chinese + english + math) as sum from student;

-- 17.查询姓名为'xxx'的学生成绩
-- select * from student where name = 'c++';

-- 18.查新英语成绩大于90分的同学
-- select * from student where english > 90;

-- 19.查询总分大于220分的所有同学
-- select name,(chinese + english + math) as sum from student
-- 	where (chinese + english + math) > 220;

-- 20.查询英语分数在80 - 90之前的同学。
-- select * from student where english > 80 and english < 90;
-- -- 以下两个等价
-- select * from student where english between 84 and 89;
-- select * from student where english >= 84 and english <= 89;

-- 21.查询数学分数为89,90,91的同学。
-- select * from student where math = 89 or math = 90 or math = 91;
-- -- 等价于
-- select * from student where math in(89,90,91);

-- 22.查询所有姓李的学生成绩
-- select * from student where name like 'c%';		-- c, c++, c#, css
-- select * from student where name like 'c_';		-- c#

-- 23.查新数学分数 > 80，语文分 > 80的同学
-- select * from student where math > 80 and chinese > 80;

-- 24.查询没有分数的学生
-- select * from student where chinese is null;

-- 25.查新语文成绩不大于90的学生
-- select * from student where not(chinese > 90);
-- select * from student where chinese <= 90;

-- 26.对数学成绩排序后输出。(默认是升序，降序用desc)
-- select name, math from student order by math;

-- 27.对总分排序后输出，然后再按从高到低的顺序输出
-- select name, (chinese + english + math) as sum from student order by sum desc;

-- 28.对姓李的学生成绩排序输出
-- select name,(chinese + english + math) as sum from student
-- 	where name like 'c%' order by sum desc;

-- 29.统计一个班级共有多少学生
-- select count(*) from student;

-- 30.统计数学成绩大于等于90的学生有多少个
-- select count(*) from student where math >= 90;

-- 31.统计总分大于200的人数有多少
-- select count(*) from student where math + english + chinese > 200;

-- count说明：如果count(列)，某行的该列数据为空，count值不计数该行。
-- select count(math) from student;

-- 32.统计一个班级数学总成绩
-- select sum(math) from student;
-- select count(math) from student;
-- select sum(math)/count(math) from student;	-- 平均成绩

-- 33.统计一个班级语文、英语、数学各科的总成绩 
-- select sum(math), sum(chinese), sum(english) from student;

-- 34.统计一个班级语文数学英语的成绩总和
-- select sum(math + chinese + english) from student;

-- 35.统计一个班级语文成绩平均分
-- select sum(chinese) / count(chinese) from student;

-- 36.求一个班级数学平均分，注意：avg某一列并不计算null的行
-- select avg(english) from student;

-- 37.求一个班级总分平均分
-- select avg(chinese + math + english) from student;

-- 38.求班级最高分和最低分
-- select max(math + chinese + english), min(math + chinese + english)
-- 	from student;

-- 39.对订单表中商品归类后，显示每一类商品的总价
-- select product, sum(price) from orders group by product;

-- 40.查询购买了哪些商品，并且每类总价大于100的商品
-- select product from orders group by product having sum(price) > 100;

-- 子查询
-- select count(*) from
-- 	(select product from orders group by product having sum(price) > 100) as aa

-- 查询出来的东西叫结果集
-- (select product from orders group by product having sum(price) > 100) as aa

