REM   Script: SQL_Day_3
REM   NULL, COMMIT, ETC

SELECT DISTINCT 
FROM 
hr.employees;

SELECT DISTINCT department_id 
FROM 
hr.employees;

SELECT COUNT(DISTINCT department_id) 
FROM 
hr.employees;

SELECT COUNT(DISTINCT department_id), COUNT(department_id) 
FROM 
hr.employees;

SELECT COUNT(DISTINCT department_id), COUNT(department_id) 
    	-- count(department): count + 1 if not null 
FROM 
hr.employees;

SELECT 
	* 
FROM 
	hr.employees E 
WHERE 
	e.first_name LIKE 'S%';

SELECT 
	* 
FROM 
	hr.employees E 
WHERE 
	e.first_name LIKE 's%';

SELECT 
	* 
FROM 
	hr.employees E 
WHERE 
	e.first_name LIKE 'Sa%';

SELECT 
	* 
FROM 
	hr.employees E 
WHERE 
	e.first_name LIKE 'S%' -- wildcard: % 
	OR 
	e.first_name LIKE 'A%';

CREATE TABLE students( 
    s_id VARCHAR2(50), 
    s_name VARCHAR2(100) 
);

INSERT INTO students(s_id, s_name) 
VALUES ('024322-18', 'Pranima Kansakar');

SELECT * FROM students;

COMMIT;

INSERT INTO students(s_name, s_id) 
SELECT 'Krisha Shrestha', '023445-18' FROM dual;

COMMIT;

SELECT * FROM students;

SELECT sysdate FROM dual;

SELECT upper('hi') FROM dual;

select fn_sum(2, 3) from dual;

CREATE OR REPLACE FUNCTION fn_sum(p_first_params number, p_second_params number) 
	return number 
as 
begin 
	return p_first_params + p_second_params; 
end;
/

select fn_sum(2, 3) from dual;

insert into students 
select '', '' from dual;

commit;

select * from students;

insert into students 
select null, null from dual;

commit;

select * from students;

insert into students 
select ' ', ' ' from dual;

commit;

select * from students;

select * from students where s_id is null;

