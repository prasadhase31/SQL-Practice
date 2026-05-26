create database mcs;
use mcs;

create table student(id int,name varchar(30),marks double,age int);
insert into student(id,name,marks,age) values(1,"Prasad",91,23),(2,"Siddhu",93,22);

select * from student;
select name from student where id=1;