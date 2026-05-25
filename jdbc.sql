create database JDBC;
use JDBC;
show databases;

create table Students(id int auto_increment primary key,name varchar(255) not null,age int not null,marks double not null);
describe Students;
insert into Students(name,age,marks)values("Prasad",23,95),("Siddhu",22,94),("Shubham",24,99);
select * from Students;
delete from Students where id=5;