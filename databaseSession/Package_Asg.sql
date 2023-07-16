REM   Script: Package_Asg
REM   A package with procedure to separate name and domain name from an email.

CREATE OR REPLACE PACKAGE pkg_separate_domain_name 
IS 
	PROCEDURE sp_separate_domain_name (p_email VARCHAR2); 
END;
/

CREATE OR REPLACE PACKAGE BODY pkg_separate_domain_name 
IS 
	PROCEDURE sp_separate_domain_name(p_email VARCHAR2)   
    AS   
    	v_name VARCHAR2(100);  
        v_domain VARCHAR2(50);  
    BEGIN   
        -- extract name and domain from email  
    	v_name := SUBSTR(p_email, 1, INSTR(p_email, '@') - 1);  
        v_domain := SUBSTR(p_email, INSTR(p_email, '@') + 1);  
      
        -- print the results  
    	DBMS_OUTPUT.PUT_LINE(v_name);  
        DBMS_OUTPUT.PUT_LINE(v_domain);  
    END sp_separate_domain_name; 
END pkg_separate_domain_name;
/

EXEC pkg_separate_domain_name.sp_separate_domain_name('pranima.kansakar@cotiviti.com')


