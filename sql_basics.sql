//sql basic operations(remainimgs)
//update the demo_table(emp_02)[join isn’t needed]
update demo_table set sal=sal*1.1 where empid=5;
//print the table
select * from demo_table;
//update (join is needed)
update demo_table set sal=sal*1.1 where deptid=(select deptid from demo_table2 where 
dname='IT');
//print the table
select * from demo_table;
//select & where
select name from demo_table where sal>15000;
//join two tables demo_table(emp_02) & demo_table2(dept_02)
select * from demo_table,demo_table2;
//drop(delete) the column sal from emp_02(demo_table) join 
demo_table2(dept_02)
alter table demo_table2 drop column sal;
//print the joined table
select * from demo_table,demo_table2;
//aggregate
select AVG(sal) from demo_table where deptid=(select deptid from demo_table2 where dname='IT');
