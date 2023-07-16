-- trigger
-- we use triggers in daily life, for example, recharge cards
-- balance update + expiry data extend.
-- atm machine bata paisa nikalda msg aako
-- hospital lab report: link, details like username and pwd

 

-- Trigger: Event, Condition, Action
-- Event - any DML operation, eg table update, delete, insert, merge
-- condition - subscriber id to send the msg to
-- Action - SMS

 

-- 1. Statement level trigger
-- 2. Row level trigger

 

-- 1. Statement level trigger
/*
UPDATE STUDENTS
SET GRADE = "A";
-- PROVIDED THERE ARE 50,000 STUDENTS

 

UPDATE STUDENTS
SET GRADE = "A"
WHERE STD_ID = "1234"

 

When we write statement level trigger, trigger is
called after the statement
or before the statement
"ONLY ONCE"

 

for example we write trigger to backup the table at 10pm daily

 

INSERT INTO TBL_BKP (column1, col2, ..)
SELECT *
FROM DAILY_TRANSACTION
WHERE DAY = "TODAY'S DATE"
-- AT 10PM, run this query daily! we use trigger here.

 

before backup, notify through email or sms
after backup also, notify through email or sms

 

we use statement level trigger
one trigger only for before
one trigger for after
*/

 

/*
ROW LEVEL TRIGGER
all the records
trigger called after inserting each record
one trigger per row

 

for example
same sms to all subscribers
about wishing happy new year, etc

 

syntax: FOR EACH ROW
*/

 

-- STATEMENT LEVEL TRIGGER
/*
CREATE OR REPLACE TRRIGGER trg_send_sms_recharge
timing and event
ON table_name
BEGIN
    STATEMENTS
END;
*/

 

INSERT INTO tbl_backup 
SELECT *
FROM tbl_daily_transaction
WHERE tran_date = '5/20/2023';

 

CREATE OR REPLACE TRIGGER trg_before_daily_emp_backup_10_pm
BEFORE INSERT ON tbl_backup
BEGIN
    v_current_time := SYSDATE();
    BEGIN
        EXECUTE IMMEDIATE sp_send_sms(v_current_time);
    END;
END;

 

CREATE OR REPLACE PROCEDURE sp_send_sms(p_time DATE)
IS
BEGIN
    email or sms pathaune code
    cursor looping garera tbl_email_ph WHERE designation = 'System Analyst'
END;

 

-- before backup initiated
-- "Backup has been started at v_current_time"

 

CREATE OR REPLACE TRIGGER trg_after_daily_emp_backup_10_pm
AFTER INSERT ON tbl_backup
BEGIN
    v_current_time := SYSDATE();
    EXECUTE IMMEDIATE sp_send_sms(v_current_time);
END;

 

--after backup completed
-- "Backup has been completed at v_current_time"

 

-- ROW LEVEL TRIGGER
-- when we update
-- UPDATE EMP SET SALARY = SALARY * 1.1 WHERE DEPT_ID = 40;
CREATE OR REPLACE TRIGGER trg_increase_salary_emp
BEFORE UPDATE OF salary ON employee
FOR EACH ROW --> this will help to execute the trigger per row
BEGIN
    -- CALL ANY PROCEDURE
        -- WHERE LOG RAKHNE PROCEDURE
        -- 
    INSERT INTO sal_history(emp_idold_salary, new_salary, increased, changedOn) 
    VALUES(emp_id, :old.salary, :new.salary, 'YES', SYSDATE);

 

/*in the databse there is locking system
when any table is in the dml operation mode, then database system
has the provision of locking the table
so trigger waits
once operations are over, trigger initiated
*/
END;



-- statement level trigger: for each row
-- event: update of emp1 table, sal column
-- timing: before

 


--requirement
-- we have table emp1 which contains sal column which holds salary of employee
-- we need to log the record in the next table so that we can have information of when was the last time the salary was updated

 

CREATE TABLE EMP1
(
    FNAME VARCHAR2(50),
    LNAME VARCHAR2(50),
    GENDER VARCHAR2(5),
    SAL NUMBER(19,4)
);

 

INSERT INTO EMP1
    SELECT 'PRANIMA', 'KANSAKAR', 'F', 12000 from dual UNION
    SELECT 'PRANIMA', 'KANSAKAR', 'F', 13000 from dual UNION
    SELECT 'PRANIMA', 'KANSAKAR', 'F', 14000 from dual UNION
    SELECT 'PRANIMA', 'KANSAKAR', 'F', 15000 from dual UNION
    SELECT 'PRANIMA', 'KANSAKAR', 'F', 12000 from dual UNION
    SELECT 'PRANIMA', 'KANSAKAR', 'F', 13000 from dual UNION
    SELECT 'PRANIMA', 'KANSAKAR', 'F', 14000 from dual UNION
    SELECT 'PRANIMA', 'KANSAKAR', 'F', 15000 from dual;
commit;

 

select * from emp1;
DROP TABLE SAL_HIST;
CREATE TABLE SAL_HIST(
    INCREASED VARCHAR2(10),
    CHANGEON DATE,
    STATUS VARCHAR2(50)
);

 

update emp1 set sal = sal * 1.1;

 

CREATE OR REPLACE TRIGGER TRG_INCREASE_SALARY
BEFORE UPDATE OF SAL ON EMP1
BEGIN
    insert into sal_hist(INCREASED, CHANGEON) values ('YES', SYSDATE);
end;

 

select * from SAL_HIST;

 

CREATE OR REPLACE TRIGGER TRG_BFR_INCREASE_SALARY
BEFORE UPDATE OF SAL ON EMP1
BEGIN
    insert into sal_hist(INCREASED, CHANGEON, STATUS) values ('YES', SYSDATE, 'BEFORE');
end;
/
CREATE OR REPLACE TRIGGER TRG_AFR_INCREASE_SALARY
AFTER UPDATE OF SAL ON EMP1
BEGIN
    insert into sal_hist(INCREASED, CHANGEON, STATUS) values ('YES', SYSDATE, 'AFTER');
end;

 

-- ROW LEVEL TRIGGER
-- IF WE ARE INSERTING, DELETING OR UPDATING LETS SAY 30 ROWS, TRIGGER WILL EXECUTE FOR 30 TIMES

 

CREATE TABLE USERS
(
    USER_ID NUMBER,
    USERNAME VARCHAR2(50),
    EMAIL VARCHAR2(50),
    PASSWORD VARCHAR(50)
)

 

CREATE OR REPLACE TRIGGER TRG_AFT_USER_CREATION
AFTER INSERT ON USERS
FOR EACH ROW
DECLARE
    vMessageBody VARCHAR2(200);
BEGIN
    --SEND EMAIL
    vMessageBody