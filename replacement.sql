Replacement
Assignment 3>>qn.V>>Display min,total,avg salary of each 
dept.
mysql> select min(salary),sum(salary),avg(salary) from emp_02 group by deptid;
Assignment 3>>qn.VIII>>Display the details of employees 
working at ‘G floor’.
mysql> select * from emp_02 join dept_02 on dept_02.deptid=emp_02.deptid where dloc='G floor'; 
(for both curtecian product & naturaljoin)
mysql> select * from emp_02,dept_02 where dept_02.deptid=emp_02.deptid and dloc='G floor'; 
(for natural join)
Assignment 3>>qn.IX>>Display the count of employees in 
each dept.
mysql> select count(*) from emp_02 group by deptid;
Assignment 3>>qn.X>> Display the department which 
employees have average salary greater than 14000.
(group by by emp.deptid or dept.dept→doesn’t matter)
mysql> select dept_02.deptid,dname,dloc from dept_02 join emp_02 on 
emp_02.deptid=dept_02.deptid group by emp_02.deptid having Avg(emp_02.salary)>14000;
