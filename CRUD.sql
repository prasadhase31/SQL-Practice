create database crud;
use crud;
create table Student(id int primary key,name varchar(10),age int,marks double);
insert into Student(id,name,age,marks) values(1,"Siddhu",23,93),(2,"Prasad",24,90);