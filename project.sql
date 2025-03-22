create database project_db;

-- drop table users;
use project_db;

create table users(
	fullname varchar(50),
    email varchar(50) primary key,
    contact varchar(15),
    userType varchar(20),
    
);

insert into users(first_name,last_name) values('james','north'),('nek','oli'),('tern','plio');
