REM   Script: SQL_Day_2
REM   PL/SQL: statements, variable, procedure, etc.
Asg: Domain separate with email

BEGIN 
    DBMS_OUTPUT.PUT_LINE('Hello, World!'); 
END;
/

BEGIN 
    DBMS_OUTPUT.PUT_LINE('Hello, World!' || '' || 'Pranima'); 
END;
/

BEGIN 
    DBMS_OUTPUT.PUT_LINE('Hello, World!' || ' ' || 'Pranima'); 
END;
/

DECLARE 
    v_name varchar2(50); 
-- Question: varchar(50) takes up exactly 50 characters of space even when the data doesn't require that much space 
-- same for char() 
-- If varchar2(50) is used, takes upto 50 characters of space or less as per required but not more than 50 characters 
BEGIN 
    v_name := 'Pranima' || '!!'; 
    DBMS_OUTPUT.PUT_LINE('Hello, World!' || ' ' || v_name); 
END;
/

CREATE OR REPLACE PROCEDURE sp_greetings 
IS 
    v_name varchar2(50); 
 
BEGIN 
    v_name := 'Pranima' || '!!'; 
    DBMS_OUTPUT.PUT_LINE('Hello, World!' || ' ' || v_name); 
END;
/

BEGIN 
    DBMS_OUTPUT.PUT_LINE('Hello, World!' || ' ' || 'Pranima'); 
END;
/

DECLARE 
    v_name varchar2(50); 
-- Question: varchar(50) takes up exactly 50 characters of space even when the data doesn't require that much space 
-- same for char() 
-- If varchar2(50) is used, takes upto 50 characters of space or less as per required but not more than 50 characters 
BEGIN 
    v_name := 'Pranima' || '!!'; 
    DBMS_OUTPUT.PUT_LINE('Hello, World!' || ' ' || v_name); 
END;
/

CREATE OR REPLACE PROCEDURE sp_greetings 
IS 
    v_name varchar2(50); 
 
BEGIN 
    v_name := 'Pranima' || '!!'; 
    DBMS_OUTPUT.PUT_LINE('Hello, World!' || ' ' || v_name); 
END;
/

EXEC sp_greetings


EXECUTE sp_greetings


CREATE OR REPLACE PROCEDURE sp_greetings 
IS 
    v_name varchar2(50); 
 
BEGIN 
    v_name := 'Pranima' || '!!'; 
    DBMS_OUTPUT.PUT_LINE('Hello, World!' || ' ' || v_name); 
END; 
/

EXEC sp_greetings


CREATE OR REPLACE PROCEDURE sp_greetings 
IS 
    v_name varchar2(50); 
 
BEGIN 
    v_name := 'Pranima' || '!!'; 
    DBMS_OUTPUT.PUT_LINE('Hello, World!' || ' ' || v_name); 
END; 
/

EXEC sp_greetings


CREATE OR REPLACE PROCEDURE sp_greetings(p_name varchar2) 
IS 
    v_name varchar2(50); 
 
BEGIN 
    v_name := p_name; 
    DBMS_OUTPUT.PUT_LINE('Hello, World!' || ' ' || v_name); 
END; 
/

EXEC sp_greetings('Krisha')


EXEC sp_greetings('Krisha')


EXEC sp_greetings('Karina')


EXEC sp_greetings('Jenny')


EXEC sp_greetings('Suniti')


CREATE OR REPLACE PROCEDURE sp_greetings(p_fname varchar2, p_lname varchar2) 
IS 
    v_fname varchar2(50); 
	v_lname varchar2(50); 
 
BEGIN 
    v_fname := p_fname; 
    v_lname := p_lname; 
    DBMS_OUTPUT.PUT_LINE('Hello, World!' || ' ' || v_fname || v_lname); 
END; 
/

EXEC sp_greetings('Krisha', 'Shrestha')


CREATE OR REPLACE PROCEDURE sp_greetings(p_fname varchar2, p_lname varchar2) 
IS 
    v_fname varchar2(50); 
	v_lname varchar2(50); 
 
BEGIN 
    v_fname := p_fname; 
    v_lname := p_lname; 
    DBMS_OUTPUT.PUT_LINE('Hello, World!' || ' ' || UPPER(v_fname) || UPPER(v_lname)); 
END; 
/

EXEC sp_greetings('Krisha', 'Shrestha')


CREATE OR REPLACE PROCEDURE sp_domain(p_email varchar2) 
IS 
	v_email varchar2(100); 
BEGIN 
	v_email := p_email; 
	DBMS_OUTPUT.PUT_LINE(v_email); 
END; 
/

EXEC sp_domain('pranima.kansakar@cotiviti.com')


EXEC sp_domain('pranima.kansakar@cotiviti.com')


