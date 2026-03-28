create database Prasad;
show databases;
use Prasad;

create table employee(id int auto_increment primary key,name varchar(20),salary double,address varchar(20),mobNo int,date_of_birth date);

insert into employee(id,name,salary,address,mobNo) values (11,'Prash',45000,'Pune',9345281038);

alter table employee modify mobNo varchar(10);

insert into employee(id,name,salary,address,mobNo,date_of_birth) values (11,'Prash',45000,'Pune','9345281038','2003-03-31');

update employee set salary=35000 where id=11;

select * from employee;

insert into employee(id,name,salary,address,mobNo,date_of_birth) values (11,'Prash',45000,'Pune','93452838','2003-03-31');

select * from employee;




select name from employee;

delete from employee where id=11;

create table emp(id int primary key,name varchar(20),salary double,address varchar(20),mobNo text);

insert into emp(id,name,salary,address,mobNo) values (1,'Siddhi',50000,'Pune',7372929172);
select * from emp;
select * from employee;

insert into employee(id,name,salary,address,mobNo,date_of_birth) values (2,'Prasad',45000,'Pune','8574635213','2003-03-31');
select * from employee;

select * from emp where name='Siddhi';

insert into emp(id,name,salary,address,mobNo) values (2,'Siddhi',50000,'Pune',7372929172),(3,'Siddhuu',50000,'Pune',7372929172);

select * from emp;

update employee set salary=65000 where id=2;

use Prasad;

drop table emp;
select name from employee;
select address from employee;
select * from employee where address='Pune';

select * from employee where salary>40000;

rename table employee to department;

 select * from department;
 
 alter table department drop mobNo;
 
 select * from department;
 
 rename table department to employee;