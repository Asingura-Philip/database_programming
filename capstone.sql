create database capstone;

use capstone;

create table users(
	user_id int primary key auto_increment,
    fullname varchar(50),
    contact varchar(20),
    email varchar(50) not null unique,
    field varchar(30),
    userType varchar(10),
    password varchar(255) not null
    
);

insert into users(fullname,contact, email, field, userType, password) values
('admin',999,'admin@email.com','admin','job_seeker','adminpassword');

INSERT INTO users (full_name, contact, email, user_field, user_type, password) VALUES
('John Doe', '123-456-7890', 'john.doe@example.com', 'Software Developer', 'Job Seeker', 'hashedpassword123'),
('Jane Smith', '987-654-3210', 'jane.smith@example.com', 'Graphic Designer', 'Employer', 'hashedpassword456'),
('Alice Johnson', '555-123-4567', 'alice.johnson@example.com', 'Marketing', 'Employer', 'hashedpassword789'),
('Bob Brown', '444-555-6666', 'bob.brown@example.com', 'Product Manager', 'Employer', 'hashedpassword101'),
('Charlie Davis', '777-888-9999', 'charlie.davis@example.com', 'Job Seeker', 'User', 'hashedpassword112'),
('Emily White', '333-444-5555', 'emily.white@example.com', 'Job Seeker', 'User', 'hashedpassword131');


create table jobs(
	job_id int primary key auto_increment,
    title varchar(40),
    company varchar(255),
    location varchar(30),
    user_id INT,
	FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

create table applications(
	employee_id int,
    application_no int,
    application_date date
);

insert into jobs(title,company,location,user_id) values
	('developer','UCU','Mukono',4),
    ('UI/UX designer','Refactory','Entebbe',4);
    
select * from jobs;
select * from users;
drop table jobs;










CREATE TABLE employers (
    employer_id INT PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(50),
    email VARCHAR(50) NOT NULL UNIQUE,
    contact VARCHAR(20),
    company_name VARCHAR(50),
    password VARCHAR(255) NOT NULL
);

CREATE TABLE jobs (
    job_id INT PRIMARY KEY AUTO_INCREMENT,
    employer_id INT,
    title VARCHAR(100),
    description TEXT,
    location VARCHAR(100),
    company VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (employer_id) REFERENCES employers(employer_id) ON DELETE CASCADE
);

CREATE TABLE job_applications (
    application_id INT PRIMARY KEY AUTO_INCREMENT,
    job_id INT,
    applicant_name VARCHAR(50),
    applicant_email VARCHAR(50),
    application_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id) ON DELETE CASCADE
);


CREATE TABLE job_seekers (
    seeker_id INT PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(50),
    email VARCHAR(50) NOT NULL UNIQUE,
    contact VARCHAR(20),
    field VARCHAR(50),
    password VARCHAR(255) NOT NULL
);

CREATE TABLE work_experience (
    work_id INT PRIMARY KEY AUTO_INCREMENT,
    seeker_id INT,
    job_title VARCHAR(100),
    company VARCHAR(100),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (seeker_id) REFERENCES job_seekers(seeker_id) ON DELETE CASCADE
);



















