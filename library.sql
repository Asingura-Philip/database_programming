create database library;

use library;

create table books(
	book_id int primary key,
    title varchar(100),
    author varchar(50),
    year_published int,
    genre varchar(50)
);
desc books;

create table members(
	member_id int primary key,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(30),
    phone_number varchar(30)
);

create table borrowed_books(
	borrow_id int primary key,
    member_id int ,
    book_id int,
    borrow_date date,
    return_date date,
    foreign key(member_id) references members(member_id),
    foreign key(book_id) references books(book_id)
);
desc borrowed_books;

-- add autoincriment
alter table books modify column book_id int auto_increment;
alter table books auto_increment = 5001;
-- add data
insert into books(title,author,year_published,genre) values('Tom & Jerry','Walt',1980,'animation');