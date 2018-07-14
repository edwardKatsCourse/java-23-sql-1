SELECT * FROM userdb.users;


INSERT INTO users (FIRST_NAME, LAST_NAME) VALUES ('Peter', 'Dale');
insert into users (FIRST_NAME, LAST_NAME, SALARY) VALUES ('Michael', 'Daniels', 8800.00);
#INSERT INTO TABLE_NAME (COLUMN_NAME) VALUES (COLUMN_VALUES);

#WHERE column_name = value
select * from users where LAST_NAME = 'Joe';
select * from users where LAST_NAME != 'Joe';
select * from users where SALARY is null;
select * from users where SALARY is not null;
#WHERE column_name = value AND column_name = value
select * from users where LAST_NAME = 'Walter' and SALARY = 25000.50;
select * from users where SALARY > 10000.00; 
select * from users where SALARY >= 10000.00;
#insert 10 users
#3 of them - without salary
#1 SALARY - 25000 
#2 SALARY - 15000/12000
#3 SALARY < 10000

#LAST NAMES MUST DUPLICATE (7 duplicate last names, 6-8 first names)
#select all users with salary > 10000
#select all users with last_name (one of duplicates) and salary = null
#select all users with ID > 4, last_name = 'one of duplicates' and salary > 10000 and first_name = 'any of the existing'

#AND, OR 
select * from users where salary > 10000.00 ;
select * from users where salary > 10000.00 or salary is null;

select * from users where FIRST_NAME = 'Peter' or (FIRST_NAME = 'Jane' and SALARY is null);

select * from users where FIRST_NAME = 'Peter' or FIRST_NAME = 'Sarah' or FIRST_NAME = 'Jane';
#vs
select * from users where FIRST_NAME in ('Peter', 'Sarah', 'Jane');

#SELECT .... WHERE .... ORDER BY COLUMN_NAME DEC/ASC
#SELECT .... ORDER BY COLUMN_NAME DEC/ASC
select * from users order by LAST_NAME asc;

#insert MOREEE USERS with different salaries:
#	insert 10 more users
#	any first and last names | preferrable to have duplicated
#	at least 4 users with null salary

#select by :
#	multiple last names (at least 2) 
#	or multiple first names (at least 2-3) 
#	and salary not null
#	order by salary in ascending order

select * from users;


#UPDATE table_name SET column_name = new_value WHERE ID = № AND column_name = current_value;
#UPDATE table_name SET column_name_1 = new_value, column_name_2 = new_value WHERE ID = № AND column_name = current_value;
#DELETE FROM table_name WHERE column_name = value;

#case sensitivity: USERS = users, FIRST_NAME = first_name
#NULL:
# UPDATE - column_name = NULL
# WHERE - column_name is (is not) NULL
update users set FIRST_NAME = 'Maria', LAST_NAME = 'Smith', SALARY = 1.00 where ID = 5;
select * from users where ID = 5;
delete from users where SALARY  = 1.00;
select * from users where ID = 5;

select FIRST_NAME from users;

#Find all records, where salary is null
#Update all records, where salary is null
#Delete all records, where salary < 7000

#AGGREGATIONAL FUNCTIONS

#count
select count(*) from users;

#avg - average
select avg(SALARY) from users;

#min
select min(SALARY) from users;

#max
select max(SALARY) from users;

#sum
select sum(salary) from users;


select * from users;

select FIRST_NAME, LAST_NAME, min(SALARY) from users;



