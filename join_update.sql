Assignment-3
▪ Create two tables with the following information:
Name of table: emp
columns and data types: empid varchar (10) (PK), name varchar(20), deptid varchar(10), salary 
number(8);
create table emp_02(empid varchar(10) primary key,
 -> name varchar(20),
 -> deptid varchar(10),
 -> salary int(8));
//display the table
desc emp_02;
Name of table: dept
columns and data types: deptid varchar (10) (PK), dname varchar(20), dloc varchar(20);
create table dept_02(deptid varchar(10) primary key,
 -> dname varchar(20),
 -> dloc varchar(20));
//display the table
desc dept_02;
Write queries for the following:
I. Inserting some data into both the tables
//for emp_02
insert into emp_02 values(
 -> '01','AA','01',10000);
insert into emp_02 values(
 -> '02','BB','01',20000);
insert into emp_02 values(
 -> '03','CC','02',15000);
insert into emp_02 values(
 -> '04','DD','02',12000);
insert into emp_02 values(
 -> '05','EE','02',13000);
 //show the full table
 
 select * from emp_02;
//for dept_02
insert into dept_02 values(
 -> '01','sales','G floor');
insert into dept_02 values(
 -> '02','IT','3rd floor');
//show the full table
select * from dept_02;
II .Find the name of highest paying employee of each department
select emp_02.name from emp_02
 -> where emp_02.salary in
 -> (select max(salary) from emp_02 group by deptid);
III .Display the records of emp table who are working in department name ‘Sales’.
select empid,name,deptid,salary from emp_02 where deptid=(select deptid from dept_02 
where dname='sales');
(or)
select * from emp_02 where deptid=(select deptid from dept_02 where dname='sales');
IV .Display the records of emp table in descending order of the salary.
select * from emp_02 order by salary desc;
V .Display the minimum, total, average salary of each dept.
select MIN(salary),SUM(salary),AVG(salary) from emp_02 join dept_02 on 
emp_02.deptid=dept_02.deptid group by dept_02.deptid;
VI .Display the minimum, total, average salary of each job.
select dname,MIN(salary),SUM(salary),AVG(salary) from emp_02 join dept_02 on 
emp_02.deptid=dept_02.deptid group by dept_02.deptid;
VII .Display the count of employee who earns more than the overall average salary.
select COUNT(*) from emp_02 where salary>(select AVG(salary) from emp_02);
VIII .Display the details of employees working at ‘1st floor’.
select * from emp_02 where deptid=(select deptid from dept_02 where dloc='1st floor');
VIII .Display the details of employees working at ‘3
rd floor’.
select * from emp_02 where deptid=(select deptid from dept_02 where dloc='3rd floor');
IX .Display the count of employees in each department.
select COUNT(*) from emp_02 join dept_02 on emp_02.deptid=dept_02.deptid group by 
dept_02.deptid;
X .Display the department which employees have average salary greater than 20000. 
select dname from dept_02 join emp_02 on emp_02.deptid=dept_02.deptid group by 
dept_02.deptid having AVG(emp_02.salary)>20000;
(or)
X .Display the department which employees have average salary greater than 14000.
select dname from dept_02 join emp_02 on emp_02.deptid=dept_02.deptid group by 
dept_02.deptid having AVG(emp_02.salary)>14000;
(or)
select dept_02.deptid,dname,dloc from dept_02 join emp_02 on 
emp_02.deptid=dept_02.deptid group by dept_02.deptid having AVG(emp_02.salary)>14000;
