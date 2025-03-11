create database trial;
use trial;

create table employee(
employee_id int,
first_name varchar(30),
last_name varchar(30),
hourly_pay int,
hire_date date 
);

create table staff(
staff_id int,
first_name varchar(30),
last_name varchar(30),
dept_no int
);

select * from employee;

desc employee;

update employee set hire_date ="2025-3-2" where employee_id = 101;

insert into employee values(101,"John","thunder",35000,"2025-3-2"),
(102,"Bartho","Lomwew",35000,"2025-3-19"),
(103,"Andrew","Monger",35000,"2025-2-22"),
(104,"Peter","Monger",35000,"2025-2-23");

select first_name,last_name from employee where hourly_pay = 35000;

insert into employee values(105,"Judas","Dontdodis",0,current_date());


create table products(
product_id int,
product_name varchar(30),
price int
); 

alter table products add constraint unique(product_name);

select * from products;

insert into products values(901,"maize",5500),
(902,"beans",4000),
(903,"peas",4000),
(904,"rice",6000);

alter table products modify price int not null;

insert into products values(905,"potatos",6000);

update employee set hourly_pay = 31000 where employee_id = 105;

 set sql_safe_updates = 0;

-- check constraint
alter table employee add constraint chk_pay check(hourly_pay >= 30000);

select * from employee;

insert into employee values(106,"Nathan","Niel",40000,current_date());

 -- drop check
 alter table employee drop constraint chk_pay;
 
 insert into employee values(107,"Matthew","Cycamore",20000,current_date());




