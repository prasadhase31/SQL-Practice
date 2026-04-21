
-- create database practice1;
-- use practice1;
-- show databases;

-- create table emp(id int,name varchar(10),address varchar(10),mobNo varchar(10),date_of_birth date,salary double);

-- insert into emp(id,name,address,mobNo,date_of_birth,salary) values(1,'Prasad','Pune',9325648321,'2003-03-31',45000);

create database clause;

use clause;

create table emp(id int,name varchar(10),address varchar(10),mobNo varchar(10),date_of_birth date,salary double);

 select * from emp;
insert into emp(id,name,address,mobNo,date_of_birth,salary) values(2,'Siddhu','Mumbai',9325788321,'2003-06-10',50000);
 
 select * from emp;
 
 select * from emp where address like 'Pune';
 
 
 
