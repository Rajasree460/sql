//SQL_basic_operations
//create table
create table demo_table(empid int(3),
 -> name varchar(50),
 -> sal int(6),
 -> deptid varchar(3));
//show table
desc demo_table;
//insert datas
insert into demo_table values(
 -> 1,'AA',10000,'01');
insert into demo_table values(
 -> 2,'BB',20000,'01');
insert into demo_table values(
 -> 3,'CC',15000,'02');
insert into demo_table values(
 -> 4,'DD',12000,'02');
insert into demo_table values(
 -> 5,'EE',13000,'02');
//print the whole table
select * from demo_table;
//create another table
create table demo_table2(deptid varchar(3),dname varchar(50),dloc varchar(50));
//show that table
desc demo_table2;
//insert datas to that table
insert into demo_table2 values('01','sales','g floor'),('02','IT','3rd floor');
//print the table
select * from demo_table2;
//alter that table
alter table demo_table2 add sal int(5);
//print the table
select * from demo_table2;
//update that table
update demo_table2 set sal=16000 where deptid='01';
update demo_table2 set sal=14000 where deptid='02';
//print the table
select * from demo_table2;
alter table demo_table2 modify deptid int(3); //modify
//create another table
create table demo_table3(dept_id varchar(3),d_name varchar(50));
//show the table
desc demo_table3;
 
//insert datas to that table
insert into demo_table3 values('01','CSE'),('02','MBA');
//print the table
select * from demo_table3;
//delete from demo_table3
delete from demo_table3 where d_name='MBA';
//print the table 
select * from demo_table3;
// delete a col from demo_table3
alter table demo_table3 drop column d_name;
//print the table
select * from demo_table3;
//delete demo_table3
drop table demo_table3;
//print the table after deletion
select * from demo_table3;
