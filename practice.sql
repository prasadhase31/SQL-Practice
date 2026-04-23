
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
 -- where clause
 select * from emp where address like 'Pune';
 
 select * from emp where salary > 40000;
 
 select * from emp where salary<30000;
 
 select * from emp where name='Prasad';
 
 select * from emp where id=2;
 
 select * from emp where salary>=45000;
 
 select * from emp where salary<>30000;
 
 select * from emp where address<>'Mumbai';
 
 select * from emp where salary between 30000 and 50000;
 
 select * from emp where id in(1,2,3);
 
 select * from emp where address='Pune' and salary>30000;
 
 select * from emp where address='Pune' or address='Mumbai';
 
 select * from emp where salary<30000 or address='Pune';
 
 select * from emp where name like 'P%';
 
 select * from emp where name like '%dh%';
 
 select * from emp where name like '_i%';
 
 select * from emp where mobNo like '9%';
 
 select salary,avg(salary) from emp group by salary;
 
 select * from emp where address='Pune' and salary not  between 30000 and 40000;
 
 select * from emp;
 
 -- order by
 select * from emp order by salary asc;
 select * from emp order by salary desc;
 
 select * from emp order by name;
  select * from emp order by name desc;
  
  select * from emp order by id;
  
  select * from emp order by address;
 select * from emp order by salary;
 
 select * from emp where address='Pune' order by salary desc;
 
 select * from emp where salary>30000 order by name;
 
 select * from emp order by date_of_birth;
 
 select * from emp  order by address, salary;
 select * from emp order by salary,name;
 select * from emp order by salary asc limit 2;
 select * from emp order by salary desc limit 2;
 select * from emp where address='Pune' order by salary desc;
 select * from emp where name like 'P%' order by name;

-- highest salary
 select * from emp order by salary desc limit 1;
 select * from emp order by salary asc limit 1;
 
 -- 2nd highest salary 
 select * from emp order by salary desc limit 1 offset 1;
 select * from emp where salary=(select distinct salary from emp order by salary desc limit 1 offset 1);
 
-- group by

select address,count(*) from emp group by address;

select address,count(*) from emp group by address;
select address,sum(salary)from emp group by address;
select address,avg(salary) from emp group by address;

