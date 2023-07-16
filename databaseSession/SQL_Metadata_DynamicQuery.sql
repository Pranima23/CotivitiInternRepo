REM   Script: SQL_Metadata_DynamicQuery
REM   meta data, dynamic query

SELECT USER FROM dual;

SELECT * FROM dba_users;

SELECT * FROM dba;

SELECT dba FROM dual;

select * from user_tables;

select * from user_tab_cols;

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

select * from user_tab_cols where table_name='emp1';

select * from dba_tab_cols where table_name='emp1';

select * from dba_tab_cols where table_name='EMP1';

select * from USER_tab_cols where table_name='EMP1';

select 'create table users (' || column_name || ' '|| data_type || '(' || data_length || ')' from user_tab_cols where table_name = "EMP1"')' 
;

select * from USER_tab_cols where table_name='EMP1';

select * from user_tables;

select * from dba_tab_cols where table_name='EMP1';

select * from all_tab_cols where table_name='EMP1';

select * from user_tables;

select * from dba_tables;

select * from user_tab_cols where table_name='EMP1';

select * from user_views;

select * from user_views where table_name='EMP1';

select * from user_CONSTRAINTS;

SELECT * FROM USER_TRIGGERS;

SELECT * FROM v$session;

SELECT * FROM v$session where status='ACTIVE';

SELECT DISTINCT schemaname, ouser, machine FROM v$session where status='ACTIVE';

SELECT DISTINCT schemaname, osuser, machine FROM v$session where status='ACTIVE';

select * from v$database;

select * from v$instance;

