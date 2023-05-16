
create view 卫生评比 as
select  top 100 * from 宿舍 order by 卫生情况 desc


--go
--create procedure 卫生评比情况
--@宿舍号  char(3)
--as
--begin
--select * from 卫生评比 where 宿舍号= @宿舍号
--end