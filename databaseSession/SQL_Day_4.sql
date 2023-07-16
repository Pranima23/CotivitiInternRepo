REM   Script: SQL_Day_4
REM   null, update, insert, upper, like ,queries, etc

select nvl('', 'apple') from dual;

select nvl('apple', 'ball') from dual;

selcet * from hr.employees;


select;

select * from hr.employees;

select * from hr.employees where commission_pct is null;

update hr.employees 
set  
commission_pct = nvl(commision_pct, 1.5);

update hr.employees 
set  
commission_pct = nvl(commission_pct, 1.5);

select commission_pct ,nvl (commission_pct,1.5) from hr.employees where 
commission_pct is null;

select commission_pct ,nvl (commission_pct,1.5) from hr.employees where 
commission_pct is null; -- NVL() function allows you to replace null with a more meaningful alternative in the results of a query.;

update hr.employees 
set  
commission_pct = nvl(commission_pct, 1.5);

select * from hr.employees where salary > 2000;

select * from hr.employees where salary > 20000;

delete from hr.employees where salary > 20000;

SELECT COUNT(*) FROM hr.employees WHERE salary >= 10000;

SELECT COUNT(*) FROM hr.employees WHERE salary > 10000;

SELECT COUNT(*) FROM hr.employees WHERE salary >= 10000;

CREATE TABLE students( 
    s_id VARCHAR2(20), 
    s_fname VARCHAR2(50), 
    s_lname VARCHAR2(50), 
    dob DATE, 
    gender CHAR(1) 
);

INSERT INTO students (s_id, s_fname, s_lname, dob, gender) 
VALUES ('S001', 'John', 'Doe', TO_DATE('2000-01-01', 'YYYY-MM-DD'), 'M');

INSERT INTO students (s_id, s_fname, s_lname, dob, gender) 
VALUES ('S002', 'Jane', 'Smith', TO_DATE('1999-05-15', 'YYYY-MM-DD'), 'F');

INSERT INTO students (s_id, s_fname, s_lname, dob, gender) 
VALUES ('S003', 'Michael', 'Johnson', TO_DATE('2001-08-20', 'YYYY-MM-DD'), 'M');

INSERT INTO students (s_id, s_fname, s_lname, dob, gender) 
VALUES ('S003', 'M'ichael', 'Johnson', TO_DATE('2001-08-20', 'YYYY-MM-DD'), 'M');

COMMIT;

SELECT * FROM students WHERE s_name LIKE 'J%';

SELECT * FROM students WHERE s_fname LIKE 'J%';

SELECT * FROM students WHERE s_fname = 'john';

SELECT * FROM students WHERE UPPER(s_fname) LIKE 'J%';

SELECT * FROM students WHERE UPPER(s_fname) LIKE 'J%';

