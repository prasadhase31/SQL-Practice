create database joins;
use joins;

create table employee(id int,name varchar(10),address varchar(10),mobNo text(10),salary double,dept_id int);

insert into employee(id ,name ,address ,mobNo ,salary ,dept_id ) values(10,'Prasad','Pune','9325050515',45000,101);

select * from employee;
insert into employee(id ,name ,address ,mobNo ,salary ,dept_id ) values(11,'Siddhu','Mumbai','9126050515',50000,102);

select * from employee;

create table department(dept_id int,dept_name varchar(10));

insert into department(dept_id,dept_name) values(101,'IT');
insert into department(dept_id,dept_name) values(102,'HR');

select * from department;
drop table department;

select e.name,d.dept_name from employee e inner join department d on e.dept_id=d.dept_id;

select e.name,d.dept_name from employee e left join department d on e.dept_id=d.dept_id;

select e.name,d.dept_name from employee e right join department d on e.dept_id=d.dept_id;

select e.name,d.dept_name from employee e cross join department d;

select e.name,d.dept_name
from employee e
left join department d
on e.dept_id=d.dept_id

union

select e.name,d.dept_name
from employee e
right join department d
on e.dept_id=d.dept_id;


select count(*) from employee;
select count(*) from employee where address='Pune';
select id,count(*) from employee group by id;
select id,count(*) from employee group by id having count(*)>2;
 select count(distinct address) from employee;
 
 select sum(salary) from employee;
 select sum(salary) from employee where address='Pune';
 select dept_id, sum(salary) from employee group by dept_id;
 select dept_id,sum(salary) from employee group by dept_id having sum(salary)>40000;
 
 select max(salary) from employee;
 select dept_id,max(salary) from employee group by dept_id;
 select address,max(salary) from employee group by address;
  -- Method 1 for higest salary --
  select * from employee where salary=(select max(salary) from employee);
  
  -- Method 2 --
  select * from employee order by salary desc limit 1;
  
  -- Method 1 of 2nd highest salary --
  select max(salary) from employee where salary<(select max(salary) from employee);
  
  -- Method 2 --
  select * from employee order by salary desc limit 1 offset 1;
  
  select avg(salary) from employee;
  select dept_id,avg(salary) from employee group by dept_id;
  select avg(salary) from employee where address="Mumbai";
  select dept_id,avg(salary) from employee group by dept_id having avg(salary)>40000;
  select avg(salary) from employee where address !='Pune';
  
  -- Subqueries --
  
  select name from employee e where exists(select * from department d where e.dept_id=d.dept_id);
  select * from employee where salary > (select avg(salary) from employee);
  select * from employee where dept_id in(select dept_id from department);
  select * from employee where salary=(select max(salary) from employee);
  SELECT *FROM employee WHERE (dept_id, salary) IN (
    SELECT dept_id, MAX(salary)
    FROM employee
    GROUP BY dept_id
);
  select * from employee where salary > any(select salary from employee where dept_id=101);
  
--  Find the employee having the lowest salary. --
  select * from employee where salary  = (select min(salary) from employee);
  
  -- Find employees whose salary is greater than the average salary. --
  select * from employee where salary > (select avg(salary) from employee);
  
  -- Find employees working in departments located in Pune --
  select * from employee where dept_id in (select dept_id from department where address="Pune");
  
  -- Find employees not working in Pune departments --
  select * from employee where dept_id not in(select dept_id from department where address !="Pune");
  
  -- Find departments that have at least one employee. --
  select * from department d where exists(select * from employee e where d.dept_id = e.dept_id);
  
  