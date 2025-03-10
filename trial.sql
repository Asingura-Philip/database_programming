create database trial;
use trial;

create table employee(
employee_id int,
first_name varchar(30),
last_name varchar(30),
hourly_pay decimal(5,2),
hire_date date 
);

select * from employee;

desc employee;

update employee set hire_date ="2025-3-2" where employee_id = 101;

insert into employee values(102,"John","thunder",3.50,"2025-3-2"),
(102,"Bartho","Lomwew",3.50,"2025-3-19"),
(103,"Andrew","Monger",3.50,"2025-2-22"),
(104,"Peter","Monger",3.50,"2025-2-23");

select first_name,last_name from employee where hourly_pay = 3.50;

insert into employee values(105,"Judas","Dontdodis",0,current_date());


create table products(
product_id int,
product_name varchar(30),
price int
); 

alter table products add constraint unique(product_name);

