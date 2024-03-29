Assignment-2
▪ Create a table with the following information:
Name of table: student
columns and data types: rollno number(6) (PK), name varchar(20), branch varchar(20);
create table student_02(rollno int(6) primary key,
 -> name varchar(20),
 -> branch varchar(20));
//display the table
desc student_02;
1. Inserting data into the student table
insert into student_02 values(
 -> 1,'Rima','CSE');
insert into student_02 values(
 -> 2,'Trina','MBA');
insert into student_02 values(
 -> 3,'Srija','MBA');
insert into student_02 values(
 -> 4,'Ram','ECE');
insert into student_02 values(
 -> 5,'Akash','EEN');
//show the full table
select * from student_02;
2.Altering table by adding new column class varchar(20)
alter table student_02 add class varchar(20);
//show the table
select * from student_02;
3.Deleting a row from the table
delete from student_02 where rollno=5;
//show the table
select * from student_02;
4.Drop column branch
alter table student_02 drop column branch;
//show the table
select * from student_02;
5.Alter table by changing the data type of rollno to number(8).
alter table student_02 modify rollno int(8);
//show the table
select * from student_02;
6.Delete all the data from student table.
delete from student_02;
//show the table
select * from student_02;
7.Delete the table.
drop table student_02;
//show the table
select * from student_02;
