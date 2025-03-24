create database capstone;

use capstone;

create table users(
	user_id int primary key auto_increment,
    full_name varchar(50),
    contact varchar(20),
    email varchar(50) not null unique,
    user_field varchar(30),
    user_type varchar(10),
    password varchar(255) not null
    
);

INSERT INTO users (full_name, contact, email, user_field, user_type, password) VALUES
('John Doe', '123-456-7890', 'john.doe@example.com', 'Software Developer', 'Job Seeker', 'hashedpassword123'),
('Jane Smith', '987-654-3210', 'jane.smith@example.com', 'Graphic Designer', 'Employer', 'hashedpassword456'),
('Alice Johnson', '555-123-4567', 'alice.johnson@example.com', 'Marketing', 'Employer', 'hashedpassword789'),
('Bob Brown', '444-555-6666', 'bob.brown@example.com', 'Product Manager', 'Employer', 'hashedpassword101'),
('Charlie Davis', '777-888-9999', 'charlie.davis@example.com', 'Job Seeker', 'User', 'hashedpassword112'),
('Emily White', '333-444-5555', 'emily.white@example.com', 'Job Seeker', 'User', 'hashedpassword131');


create table jobs(
	job_id int primary key auto_increment,
    job_title varchar(40),
    job_description varchar(255)
);

create table applications(
	employee_id int,
    application_no int,
    application_date date
);

insert into jobs(job_title,job_description) values
	('developer','should know react js'),
    ('UI/UX designer','convasant with figma');
    
select * from jobs;
select * from users;