CREATE TABLE student(
id INT auto_increment PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
gender ENUM('Male','Female','Other'),
date_of_birth DATE,
created_at timestamp default current_timestamp
);

insert into student values("Siddhi Hase","siddhi@gmail.com","Female","2003-06-10");
USE demo;

INSERT INTO student(name, email, gender, date_of_birth)
VALUES ('Prasad Hase', 'siddhu@gmail.com', 'Male', '2003-03-31');
use demo;