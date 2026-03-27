create database Prasad;
show databases;
use Prasad;

create table employee(id int auto_increment primary key,name varchar(20),salary double,address varchar(20),mobNo int);

insert into employee(id,name,salary,address,mobNo) values (11,'Prash',45000,'Pune',9345281038);

alter table employee modify mobNo varchar(10);

insert into employee(id,name,salary,address,mobNo) values (11,'Prash',45000,'Pune',9345281038);

update employee set salary=35000 where id=11;

select * from employee;

select name from employee;

delete from employee where id=11;

create table emp(id int primary key,name varchar(20),salary double,address varchar(20),mobNo text(10));

insert into emp(id,name,salary,address,mobNo) values (1,'Siddhi',50000,'Pune',7372929172);
select * from emp;
select * from employee;