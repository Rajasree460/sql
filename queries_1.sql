Create the above tables; Insert the data.
//for sales
create table sales_02(orderid varchar(4),
 -> purchaseamount int(6),
 -> purchasedate date,
 -> custid varchar(6));
desc sales_02;
 
insert into sales_02 values(‘11’,2000,'2023-08-15',’402’);
insert into sales_02 values(‘12’,1000,'2023-07-25',’403’);
insert into sales_02 values(‘13’,2000,'2023-07-15',’405’);
insert into sales_02 values(‘14’,1000,'2023-08-25',’401’);
insert into sales_02 values(‘15’,2000,'2023-07-10',’405’);
insert into sales_02 values(‘16’,1500,'2023-08-15',’401’);
insert into sales_02 values(‘17’,2500,'2023-07-12',’402’);
insert into sales_02 values(‘18’,1600,'2023-08-15',’401’);
select * from sales_02;
//for emp
create table emp_2(empid varchar(6),
 -> name varchar(20),
 -> age int(4),
 -> salary int(8));
desc emp_2;
insert into emp_2 values('401','Anu',22,50000);
insert into emp_2 values('402','Shane',29,80000);
insert into emp_2 values('403','Rohan',34,100000);
insert into emp_2 values('404','Scott',44,100000);
insert into emp_2 values('405','Tiger',35,80000);
select * from emp_2;
Find out the names of all the customers who purchased more than 
3000 in total.
select name from emp_2 join sales_02 on emp_2.empid = sales_02.custid group by name having 
SUM(sales_02.purchaseamount)>3000;
Find the name of the customer who earn the 2nd highest salary.
select name from emp_2 where salary in (select max(salary) from emp_2 where salary < (select 
max(salary) from emp_2));
Find the name of the customer with highest total order amount.
select name from sales_02 join emp_2 on emp_2.empid=sales_02.custid group by name order by 
sum(purchaseamount) desc limit 1;
Find the salary of the customer who purchased maximum times.
select salary from emp_2 join sales_02 on emp_2.empid=sales_02.custid group by name,salary order 
by count(orderid) desc limit 1;
Find the total sales of the month August.
select sum(purchaseamount) from sales_02 where month(purchasedate)=8;
How many purchases have been made in July.
select count(*) from sales_02 where month(purchasedate)=7;
Find the details of purchase made after the purchase of Rohan.
select orderid, purchaseamount, purchasedate, name from sales_02 join emp_2 on sales_02.custid = 
emp_2.empid where purchasedate > ( select purchasedate from sales_02 join emp_2 on 
sales_02.custid = emp_2.empid where name = 'Rohan' );
/*select sysdate() from dual;
*/
