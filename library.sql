create database library;

use library;

create table books(
	book_id int primary key,
    title varchar(100),
    author varchar(50),
    year_published int,
    genre varchar(50)
);

create table members(
	member_id int primary key,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(30),
    phone_number varchar(30)
);