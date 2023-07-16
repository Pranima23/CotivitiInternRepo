REM   Script: Row_Level_Trigger_Assignment
REM   This is row level trigger that stores old salary and new salary of the employees in the sal_hist table when salary of employees is incremented in the emp1 table.

CREATE TABLE emp1 
( 
    fname VARCHAR2(50), 
    lname VARCHAR2(50), 
    gender VARCHAR2(5), 
    sal NUMBER(19,4) 
);

INSERT INTO emp1 
    SELECT 'Pranima', 'Kansakar', 'F', 12000 FROM DUAL UNION 
    SELECT 'Krisha', 'Shrestha', 'F', 13000 FROM DUAL UNION 
    SELECT 'Ishar', 'Maharjan', 'M', 14000 FROM DUAL UNION 
    SELECT 'Hritik', 'Thapa', 'M', 15000 FROM DUAL UNION 
    SELECT 'Salina', 'Koirala', 'F', 16000 FROM DUAL;

COMMIT;

SELECT * FROM emp1;

CREATE TABLE sal_hist( 
    emp_fname VARCHAR2(50), 
    emp_lname VARCHAR2(50), 
    increased VARCHAR2(10), 
    changeon DATE, 
    old_salary NUMBER(19,4), 
    new_salary NUMBER(19, 4) 
);

CREATE OR REPLACE TRIGGER trg_increase_salary 
BEFORE UPDATE OF sal ON emp1 
FOR EACH ROW 
BEGIN 
	INSERT INTO sal_hist(emp_fname, emp_lname, increased, changeon, old_salary, new_salary)  
    VALUES (:old.fname, :old.lname, 'YES', SYSDATE, :old.sal, :new.sal); 
END;
/

UPDATE emp1 SET sal = sal * 1.1;

SELECT * FROM emp1;

SELECT * FROM sal_hist;

