create database test;
use test;

create table signup(
	id int auto_increment primary key,
    username varchar(40) not null,
    email varchar(40) not null,
    password varchar(30) not null
);




