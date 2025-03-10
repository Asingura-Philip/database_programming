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

select * from products;

insert into products values(901,"maize",5500),
(902,"beans",4000),
(903,"peas",4000),
(904,"rice",6000);

alter table products modify price int not null;

insert into products values(905,"potatos",6000);

 set sql_safe_updates = 0;

-- check constraint
alter table employee add constraint chk_pay check(hourly_pay >= 30000);

select * from employee;

insert into employee values(106,"Nathan","Niel",40000,current_date());

 -- drop check
 alter table employee drop constraint chk_pay;
 
 insert into employee values(107,"Matthew","Cycamore",20000,current_date());

