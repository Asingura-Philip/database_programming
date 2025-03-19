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
	member_id int primary key ,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(30),
    phone_number varchar(30)
);



create table borrowed_books(
	borrow_id int primary key auto_increment,
    member_id int ,
    book_id int,
    borrow_date date,
    return_date date,
    foreign key(member_id) references members(member_id),
    foreign key(book_id) references books(book_id)
);

alter table borrowed_books auto_increment = 701;
-- drop table borrowed_books;

-- add autoincriment
alter table books modify column book_id int auto_increment;
alter table books auto_increment = 5001;


alter table members modify column member_id int auto_increment;
alter table members auto_increment = 3001;
-- add data
insert into books(title,author,year_published,genre) values('Tom & Jerry','Walt',1980,'Kids book');
insert into Books (title, author, year_published, genre) 
VALUES 
  ('The Catcher in the Rye', 'J.D. Salinger', 1951, 'Fiction'),
  ('To Kill a Mockingbird', 'Harper Lee', 1960, 'Fiction'),
  ('1984', 'George Orwell', 1949, 'Dystopian'),
  ('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'Fiction');
  
select * from books;

insert into Members (first_name, last_name, email, phone_number)
VALUES
  ('John', 'Doe', 'john.doe@email.com', '123-456-7890'),
  ('Jane', 'Smith', 'jane.smith@email.com', '987-654-3210'),
  ('Alice', 'Johnson', 'alice.johnson@email.com', '555-555-5555');
insert into Members (first_name, last_name, email, phone_number)
VALUES
  ('Jason', 'stathm', 'js.st@email.com', '123-456-7812'),
  ('Vin', 'Disel', 'vin.diz@email.com', '123-456-7834');

select * from members;

insert into borrowed_books(member_id,book_id,borrow_date,return_date) values(3001,5002,'2025-2-4','2025-2-14');
insert into borrowed_books(member_id,book_id,borrow_date,return_date) values(3003,5001,'2025-2-6','2025-2-12');
insert into borrowed_books(member_id,book_id,borrow_date,return_date) values(3002,5003,'2025-2-6',null);


select * from borrowed_books;

select * from books where year_published > 1950;
select * from borrowed_books where return_date = null;
update borrowed_books set return_date = '2025-03-2' where borrow_id = 704;

delete from borrowed_books where member_id = 3003;
delete from members where member_id = 3003;









