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

alter table orders auto_increment=201;

insert into orders(product_name,price) values
	('Laptop',500000),
    ('Smartphone',300000),
    ('Tablet',450000),
    ('Headphones',40000);
    

-- 1
    
DELIMITER //

CREATE PROCEDURE procedure1()
BEGIN
    SELECT MIN(amount) AS LeastAmountReceived
    FROM donation
    WHERE Department = 'CT';
END //

DELIMITER ;

    
    --2
DELIMITER //

CREATE PROCEDURE procedure2()
BEGIN
    SELECT Department, SUM(amount) AS TotalAmountReceived
    FROM donation
    GROUP BY Department;
END //

DELIMITER ;
-- 3
DELIMITER //

CREATE PROCEDURE procedure3()
BEGIN
    DELETE FROM donation
    WHERE amount IS NULL;
END //

DELIMITER ;
-- 4
DELIMITER //

CREATE PROCEDURE procedure4(IN old_department VARCHAR(10), IN new_department VARCHAR(10))
BEGIN
    UPDATE donation
    SET Department = new_department
    WHERE Department = old_department;
END //

DELIMITER ;


--
ALTER TABLE donation
ADD CONSTRAINT check_amount
CHECK (amount BETWEEN 12000 AND 25000);
--
ALTER TABLE donation
ADD CONSTRAINT check_department
CHECK (Department IN ('CT', 'SOT', 'SOB'));

