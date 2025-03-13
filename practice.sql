create database practice;

use practice;

create table customers(
	customer_id int primary key auto_increment,
    first_name varchar(20),
    last_name varchar(20),
    email varchar(50)
);

alter table customers auto_increment =300;

insert into customers (first_name,last_name,email) values
	('John','Doe','john@example.com'),
	('jane','smith','jane@example.com'),
    ('mike','wasowski','mike@example.com'),
    ('emily','brown','emily@example.com');
    
select * from customers;

create table orders(
	order_id int primary key auto_increment,
    customer_id int,
    order_date date,
    total_amount int,
    foreign key(customer_id) references customers(customer_id)
);

alter table orders auto_increment = 110;

insert into orders(customer_id,order_date,total_amount) values
	(301,'2025-3-1',45000);

insert into orders(customer_id,order_date,total_amount) values
	(302,'2025-3-3',36000),
    (303,'2025-3-5',93000),
    (304,'2025-3-9',67000);


select * from orders;

create table products(
	product_id int primary key auto_increment,
    product_name varchar(60),
    price int
    );

alter table products auto_increment=201;

insert into products(product_name,price) values
	('Laptop',500000),
    ('Smartphone',300000),
    ('Tablet',450000),
    ('Headphones',40000);
    
select * from products;