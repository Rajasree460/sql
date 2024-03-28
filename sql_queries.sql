//sql (extra) -solved queries
Q.1>> What is the sal of the person ‘BB’?
select sal from emp_02 where name='BB';
Q.2>> Find the name,sal,dname after doing cartesian product of emp & dept table.
select name,sal,dname from emp_02,dept_02 where emp_02.deptid=dept_02.deptid;
Q.3>>Find the name of the employees who work in IT dept and earn more than 12k.
select name from emp_02,dept_02 where emp_02.deptid=dept_02.deptid and sal>12000 and 
dname='IT';
Q.4>>Find the office location of the person names ‘EE’.
select dloc from dept_02 where deptid=(select deptid from emp_02 where name='EE');
Q.5>>Find the emp’s strength of IT dept.
select COUNT(*) from emp_02 where deptid=(select deptid from dept_02 where dname='IT');
Q.6>>Insert values to emp.
insert into emp_02 values(6,'FF',22000,'02');
//print the table
select * from emp_02;
Q.7>>Delete data from emp.
delete from emp_02 where empid=6;
//print the table
select * from emp_02;
