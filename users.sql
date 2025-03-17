-- user account james that logs into cs database
-- deprive this user from being able to update details of only the salary column
-- in the employee table in the cs db .other columns should be updatable

create user 'seven'@'localhost' identified by 'seven';
 alter user 'six'@'localhost' identified by 'six123';
 
rename user 'eight'@'localhost' to 'demo'@'localhost';
alter user 'seven'@'localhost' password expire;
   
   
alter user 'demo'@'localhost' account lock;
alter user 'demo'@'localhost' account unlock;
    
select current_user();
grant select , insert on bscs.* to 'six'@'localhost';
    
grant select on bscs.employee to 'ten'@'localhost';
grant insert,update on bscs.employee to 'ten'@'localhost';
    
revoke insert, update on bscs.employee from 'ten'@'localhost';
    
show grants for 'ten'@'localhost';
    
    
create role data_entrant;
grant insert, select on bscs.employee to data_entrant;
    
 select user,host from mysql.user;
    