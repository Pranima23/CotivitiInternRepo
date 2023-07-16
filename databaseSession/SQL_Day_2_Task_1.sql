REM   Script: SQL_Day_2_Task_1
REM   Separated name and domain name from email, 

CREATE OR REPLACE PROCEDURE separate_domain(p_email varchar2)  
IS  
	v_name VARCHAR2(100); 
    v_domain VARCHAR2(50); 
BEGIN  
    -- extract name and domain from email 
	v_name := SUBSTR(p_email, 1, INSTR(p_email, '@') - 1); 
    v_domain := SUBSTR(p_email, INSTR(p_email, '@') + 1); 
 
    -- print the results 
	DBMS_OUTPUT.PUT_LINE(v_name); 
    DBMS_OUTPUT.PUT_LINE(v_domain); 
END;  
/

EXECUTE separate_domain('pranima.kansakar@cotiviti.com')


