create database collegedb; 


use collegedb;

create table student (
rollno int,
name varchar(50),
dept varchar(20),
age int,
phone varchar(15)
);


create table course (
courseid int,
coursename varchar(50),
credits int
);


alter table student add city varchar(30);

alter table student add semester int;

alter table student rename column phone to mobileno;

drop table course;


insert into student values
(101,'rahul','cse',20,'9876543201','delhi',3),
(102,'amit','cse',21,'9874778391','patna',4),
(103,'sumit','cse',22,'9875778791','lucknow',5),
(104,'puja','ece',26,'9876523201','kota',2),
(105,'ravi','ce',26,'8846523265','bhopal',6);

select * from student;

select rollno, name from student;

select * from student where dept = 'cse';

select * from student where age>20;

update student set dept = 'ece' where rollno =101;

update student set city ='patna' where name='rahul';

update student set age =age+1;

delete from student where rollno=105;

delete from student;
