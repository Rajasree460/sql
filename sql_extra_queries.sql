//sql remaining quires
Q.8>> Find the name of the person who earns the max sal.
select name from emp_02 where sal=(select MAX(sal) from emp_02);
Q.9>> Find the name of the person who earns more than the 
avg sal of all depts.
select name from emp_02 where sal>all(select AVG(sal) from emp_02 group by deptid);
Q.10>> Find the name of the person who earns more than 
the avg sal of/in sales dept.
select name from emp_02 where salary>(select AVG(salary) from emp_02 where deptid=(select 
deptid from dept_02 where dname='sales'));
Q.11>> Find the name of the person who earns more than 
the max sal of IT dept.
select name from emp_02 where salary>(select MAX(salary) from emp_02 where deptid=(select 
deptid from dept_02 where dname='IT'));
Q.12>>Find the name of the dept with highest emp strength.
select dname from dept_02 join(select deptid,count(*) as emp_count from emp_02 group by deptid 
order by emp_count desc limit 1) emp_02 on dept_02.deptid=emp_02.deptid;
Q.13>>Find the dept id of the dept with highest emp 
strength.
select dept_02.deptid from dept_02 join(select deptid,count(*) as emp_count from emp_02 group 
by deptid order by emp_count desc limit 1) emp_02 on dept_02.deptid=emp_02.deptid;
Q.14>> Find the name of the persons who earn the highest 
sal of his/her dept.
select name from emp_02 where (deptid,salary) in (select deptid,MAX(salary) from emp_02 group 
by deptid);
Q.15>> Find the name of the persons who earn more than 
the avg sal of his/her dept.
select name from emp_02 where salary > (select AVG(salary) from emp_02 where emp_02.deptid=
dept_02.deptid);
