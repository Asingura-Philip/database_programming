create database WORK2;

use work2;



create table donation(
	DonorID varchar(20) primary key,
    Department varchar(10),
    amount int
);

insert into donation values
	('D/25','CT',25000),
	('D/67','SOT',12000),
    ('D/45','CT',15000),
    ('D/46','SOB',null),
    ('D/50','SOT',11000)
;
    
select * from donation;

-- create a procedure named procedure1 that displays the least amount recieved by the computing department

create procedure procedure1()
delimiter //
create procedure procedure1()
begin
    select MIN(amount) as LeastAmountReceived
    from donation
    where Department = 'CT';
end //

delimiter ;

-- create a procedure named procedure2 that displays the total amount recieved per depertment
delimiter //

create procedure procedure2()
begin
    select Department, SUM(amount) AS TotalAmountReceived
    from donation
    group by Department;
end //

delimiter ;


-- create a procedure named procedure3 that will delete any record where the amount recieved is not captured
delimiter //

create procedure procedure3()
begin
    delete from donation
    where amount is null;
end //

delimiter ;


-- create a procedure named procedure4 that will change the name of any department
delimiter //

create procedure procedure4(in old_department varchar(10), in new_department varchar(10))
begin
    update donation
    set Department = new_department
    where Department = old_department;
end //

delimiter ;


-- create a procedure named procedure5 that will eliminate any record where the amount recieved is below a given amount
delimiter //

create procedure procedure5(IN min_amount INT)
begin
    delete from donation
    where amount < min_amount;
end //

delimiter ;

-- append a constraint to the donation table to ensure the only values captured in department are CT,SOT,SOB
alter table donation add constraint check_department
check (Department in ('CT', 'SOT', 'SOB'));


-- append a constraint to the donation table to ensure the only values captured in the donation table range from 12000 to 25000
alter table donation add constraint check_amount
check (amount between 12000 and 25000);

-- values captured in the DonarID must start with letter D and should be 4 characters
alter table donation add constraint check_donorid_format
check (DonorID REGEXP '^D[0-9]{3}$');


-- append a column SNO on the department table. this SNO should have SNO auto incremented strarting from SNO=4
alter table donation add column SNO int auto_increment primary key;
alter table donation auto_increment = 4;


