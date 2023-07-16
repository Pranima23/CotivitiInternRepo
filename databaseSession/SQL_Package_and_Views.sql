REM   Script: SQL_Package_and_Views
REM   package and views

CREATE OR REPLACE PROCEDURE claculate_simple_interest ( 
    p_principal IN NUMBER, 
    p_rate IN NUMBER, 
    p_time IN NUMBER, 
    v_interest NUMBER, 
) AS 
BEGIN 
    v_interest := (p_principal * p_rate * p_time) / 100; 
	Dbms_Output.put_line('Simple interest: ' || v_interest)) 
END;
/

CREATE OR REPLACE PROCEDURE claculate_simple_interest ( 
    p_principal IN NUMBER, 
    p_rate IN NUMBER, 
    p_time IN NUMBER, 
    v_interest NUMBER 
) AS 
BEGIN 
    v_interest := (p_principal * p_rate * p_time) / 100; 
	Dbms_Output.put_line('Simple interest: ' || v_interest)) 
END;
/

CREATE OR REPLACE PROCEDURE claculate_simple_interest ( 
    p_principal IN NUMBER, 
    p_rate IN NUMBER, 
    p_time IN NUMBER, 
    v_interest NUMBER 
) AS 
BEGIN 
    v_interest := (p_principal * p_rate * p_time) / 100; 
	Dbms_Output.put_line('Simple interest: ' || v_interest); 
END;
/

CREATE OR REPLACE PROCEDURE claculate_simple_interest ( 
    p_principal IN NUMBER, 
    p_rate IN NUMBER, 
    p_time IN NUMBER, 
    p_interest NUMBER 
) AS 
BEGIN 
    p_interest := (p_principal * p_rate * p_time) / 100; 
	Dbms_Output.put_line('Simple interest: ' || p_interest); 
END;
/

CREATE OR REPLACE PROCEDURE claculate_simple_interest ( 
    p_principal IN NUMBER, 
    p_rate IN NUMBER, 
    p_time IN NUMBER, 
    p_simple_interest NUMBER 
) AS 
BEGIN 
    p_simple_interest := (p_principal * p_rate * p_time) / 100; 
	Dbms_Output.put_line('Simple interest: ' || p_simple_interest); 
END;
/

CREATE OR REPLACE PROCEDURE claculate_simple_interest ( 
    p_principal IN NUMBER, 
    p_rate IN NUMBER, 
    p_time IN NUMBER 
)  
AS 
    p_simple_interest NUMBER 
BEGIN 
    p_simple_interest := (p_principal * p_rate * p_time) / 100; 
	Dbms_Output.put_line('Simple interest: ' || p_simple_interest); 
END;
/

CREATE OR REPLACE PROCEDURE claculate_simple_interest ( 
    p_principal IN NUMBER, 
    p_rate IN NUMBER, 
    p_time IN NUMBER 
)  
AS 
    p_simple_interest NUMBER; 
BEGIN 
    p_simple_interest := (p_principal * p_rate * p_time) / 100; 
	Dbms_Output.put_line('Simple interest: ' || p_simple_interest); 
END;
/

CREATE OR REPLACE PROCEDURE sp_compound_interest( 
    p_principal IN NUMBER, 
    p_time IN NUMBER, 
    p_rate IN NUMBER 
) 
AS 
	p_compound interest NUMBER(19, 4); 
BEGIN 
    p_compound_interest := p_principle * (Power((1+(p_rate / 100)), p_time) - 1); 
	Dbms_Output.put_line('Compound interest' || p_compound_interest); 
END;
/

CREATE OR REPLACE PROCEDURE sp_compound_interest( 
    p_principal IN NUMBER, 
    p_time IN NUMBER, 
    p_rate IN NUMBER 
) 
AS 
	p_compound interest NUMBER; 
BEGIN 
    p_compound_interest := p_principle * (Power((1+(p_rate / 100)), p_time) - 1); 
	Dbms_Output.put_line('Compound interest' || p_compound_interest); 
END;
/

CREATE OR REPLACE PROCEDURE sp_compound_interest( 
    p_principal NUMBER, 
    p_time NUMBER, 
    p_rate NUMBER 
) 
AS 
	p_compound interest NUMBER(19, 4); 
BEGIN 
    p_compound_interest := p_principle * (Power((1+(p_rate / 100)), p_time) - 1); 
	Dbms_Output.put_line('Compound interest' || p_compound_interest); 
END;
/

CREATE OR REPLACE PROCEDURE sp_compound_interest( 
    p_principal NUMBER, 
    p_time NUMBER, 
    p_rate NUMBER 
) 
AS 
	p_compound_interest NUMBER(19, 4); 
BEGIN 
    p_compound_interest := p_principle * (Power((1+(p_rate / 100)), p_time) - 1); 
	Dbms_Output.put_line('Compound interest' || p_compound_interest); 
END;
/

CREATE OR REPLACE PROCEDURE sp_compound_interest( 
    p_principal NUMBER, 
    p_time NUMBER, 
    p_rate NUMBER 
) 
AS 
	p_compound_interest NUMBER(19, 4); 
BEGIN 
    p_compound_interest := p_principal * (Power((1+(p_rate / 100)), p_time) - 1); 
	Dbms_Output.put_line('Compound interest' || p_compound_interest); 
END;
/

EXEC sp_compound_interest(500000, 5, 12)


CREATE OR REPLACE PROCEDURE sp_compound_interest( 
    p_principal NUMBER, 
    p_time NUMBER, 
    p_rate NUMBER 
) 
AS 
	p_compound_interest NUMBER(19, 4); 
BEGIN 
    p_compound_interest := p_principal * (Power((1+(p_rate / 100)), p_time) - 1); 
	Dbms_Output.put_line('Compound interest: ' || p_compound_interest); 
END;
/

EXEC sp_compound_interest(500000, 5, 12)


CREATE OR REPLACE PROCEDURE caLculate_simple_interest ( 
    p_principal IN NUMBER, 
    p_rate IN NUMBER, 
    p_time IN NUMBER 
)  
AS 
    p_simple_interest NUMBER; 
BEGIN 
    p_simple_interest := (p_principal * p_rate * p_time) / 100; 
	Dbms_Output.put_line('Simple interest: ' || p_simple_interest); 
END;
/

CREATE OR REPLACE PACKAGE pkg_sbi_procedure 
IS 
	PROCEDURE caLculate_simple_interest ( 
    p_principal IN NUMBER, 
    p_rate IN NUMBER, 
    p_time IN NUMBER 
	); 
	PROCEDURE sp_compound_interest( 
    p_principal NUMBER, 
    p_time NUMBER, 
    p_rate NUMBER 
	); 
	--function 
END; 
--package body 
CREATE OR REPLACE PACKAGE BODY pkg_sbi_procedure 
IS 
	PROCEDURE sp_simple_interest ( 
    p_principal IN NUMBER, 
    p_rate IN NUMBER, 
    p_time IN NUMBER 
	) 
    AS 
        p_simple_interest NUMBER; 
    BEGIN 
        p_simple_interest := (p_principal * p_rate * p_time) / 100; 
    	Dbms_Output.put_line('Simple interest: ' || p_simple_interest); 
    END sp_simple_interest; 
 
	PROCEDURE sp_compound_interest( 
    p_principal NUMBER, 
    p_time NUMBER, 
    p_rate NUMBER 
	) 
    AS 
    	p_compound_interest NUMBER(19, 4); 
    BEGIN 
        p_compound_interest := p_principal * (Power((1+(p_rate / 100)), p_time) - 1); 
    	Dbms_Output.put_line('Compound interest: ' || p_compound_interest); 
	END sp_compound_interest; 
END pkg_spi_procedure;
/

CREATE OR REPLACE PACKAGE pkg_sbi_procedure 
IS 
	PROCEDURE caLculate_simple_interest ( 
    p_principal IN NUMBER, 
    p_rate IN NUMBER, 
    p_time IN NUMBER 
	); 
	PROCEDURE sp_compound_interest( 
    p_principal NUMBER, 
    p_time NUMBER, 
    p_rate NUMBER 
	); 
	--function 
END; 
/

CREATE OR REPLACE PACKAGE BODY pkg_sbi_procedure 
IS 
	PROCEDURE sp_simple_interest ( 
    p_principal IN NUMBER, 
    p_rate IN NUMBER, 
    p_time IN NUMBER 
	) 
    AS 
        p_simple_interest NUMBER; 
    BEGIN 
        p_simple_interest := (p_principal * p_rate * p_time) / 100; 
    	Dbms_Output.put_line('Simple interest: ' || p_simple_interest); 
    END sp_simple_interest; 
 
	PROCEDURE sp_compound_interest( 
    p_principal NUMBER, 
    p_time NUMBER, 
    p_rate NUMBER 
	) 
    AS 
    	p_compound_interest NUMBER(19, 4); 
    BEGIN 
        p_compound_interest := p_principal * (Power((1+(p_rate / 100)), p_time) - 1); 
    	Dbms_Output.put_line('Compound interest: ' || p_compound_interest); 
	END sp_compound_interest; 
END pkg_spi_procedure;
/

CREATE OR REPLACE PACKAGE BODY pkg_sbi_cprocedure 
IS 
	PROCEDURE sp_simple_interest ( 
    p_principal IN NUMBER, 
    p_rate IN NUMBER, 
    p_time IN NUMBER 
	) 
    AS 
        p_simple_interest NUMBER; 
    BEGIN 
        p_simple_interest := (p_principal * p_rate * p_time) / 100; 
    	Dbms_Output.put_line('Simple interest: ' || p_simple_interest); 
    END sp_simple_interest; 
 
	PROCEDURE sp_compound_interest( 
    p_principal NUMBER, 
    p_time NUMBER, 
    p_rate NUMBER 
	) 
    AS 
    	p_compound_interest NUMBER(19, 4); 
    BEGIN 
        p_compound_interest := p_principal * (Power((1+(p_rate / 100)), p_time) - 1); 
    	Dbms_Output.put_line('Compound interest: ' || p_compound_interest); 
	END sp_compound_interest; 
END pkg_spi_cprocedure;
/

CREATE OR REPLACE PACKAGE pkg_sbi_cprocedure 
IS 
	PROCEDURE caLculate_simple_interest ( 
    p_principal IN NUMBER, 
    p_rate IN NUMBER, 
    p_time IN NUMBER 
	); 
	PROCEDURE sp_compound_interest( 
    p_principal NUMBER, 
    p_time NUMBER, 
    p_rate NUMBER 
	); 
	--function 
END;
/

CREATE OR REPLACE PACKAGE BODY pkg_sbi_cprocedure 
IS 
	PROCEDURE sp_simple_interest ( 
    p_principal IN NUMBER; 
    p_rate IN NUMBER; 
    p_time IN NUMBER; 
	) 
    AS 
        p_simple_interest NUMBER; 
    BEGIN 
        p_simple_interest := (p_principal * p_rate * p_time) / 100; 
    	Dbms_Output.put_line('Simple interest: ' || p_simple_interest); 
    END sp_simple_interest; 
 
	PROCEDURE sp_compound_interest( 
    p_principal NUMBER; 
    p_time NUMBER; 
    p_rate NUMBER; 
	) 
    AS 
    	p_compound_interest NUMBER(19, 4); 
    BEGIN 
        p_compound_interest := p_principal * (Power((1+(p_rate / 100)), p_time) - 1); 
    	Dbms_Output.put_line('Compound interest: ' || p_compound_interest); 
	END sp_compound_interest; 
END pkg_spi_cprocedure;
/

CREATE OR REPLACE PACKAGE BODY pkg_sbi_cprocedure 
IS 
	PROCEDURE sp_simple_interest ( 
        p_principal IN NUMBER, 
        p_rate IN NUMBER, 
        p_time IN NUMBER 
	) 
    AS 
        p_simple_interest NUMBER; 
    BEGIN 
        p_simple_interest := (p_principal * p_rate * p_time) / 100; 
    	Dbms_Output.put_line('Simple interest: ' || p_simple_interest); 
    END sp_simple_interest; 
 
	PROCEDURE sp_compound_interest( 
        p_principal NUMBER, 
        p_time NUMBER, 
        p_rate NUMBER 
	) 
    AS 
    	p_compound_interest NUMBER(19, 4); 
    BEGIN 
        p_compound_interest := p_principal * (Power((1+(p_rate / 100)), p_time) - 1); 
    	Dbms_Output.put_line('Compound interest: ' || p_compound_interest); 
	END sp_compound_interest; 
END pkg_sbi_cprocedure;
/

CREATE OR REPLACE PACKAGE pkg_sbi_cprocedure 
IS 
	PROCEDURE sp_simple_interest ( 
    p_principal IN NUMBER, 
    p_rate IN NUMBER, 
    p_time IN NUMBER 
	); 
	PROCEDURE sp_compound_interest( 
    p_principal NUMBER, 
    p_time NUMBER, 
    p_rate NUMBER 
	); 
	--function 
END;
/

EXEC pkg_sbi_cprocedure.sp_simple_interest(500000, 5, 12)


CREATE OR REPLACE PACKAGE BODY pkg_sbi_cprocedure 
IS 
	PROCEDURE sp_simple_interest ( 
        p_principal IN NUMBER, 
        p_rate IN NUMBER, 
        p_time IN NUMBER 
	) 
    AS 
        p_simple_interest NUMBER; 
    BEGIN 
        p_simple_interest := (p_principal * p_rate * p_time) / 100; 
    	Dbms_Output.put_line('Simple interest: ' || p_simple_interest); 
    END sp_simple_interest; 
 
	PROCEDURE sp_compound_interest( 
        p_principal NUMBER, 
        p_time NUMBER, 
        p_rate NUMBER 
	) 
    AS 
    	p_compound_interest NUMBER(19, 4); 
    BEGIN 
        p_compound_interest := p_principal * (Power((1+(p_rate / 100)), p_time) - 1); 
    	Dbms_Output.put_line('Compound interest: ' || p_compound_interest); 
	END sp_compound_interest; 
END pkg_sbi_cprocedure;
/

EXEC pkg_sbi_cprocedure.sp_simple_interest(500000, 5, 12)


EXEC pkg_sbi_cprocedure.sp_compound_interest(500000, 5, 12)


SELECT  
    a.memberid, a.memer_firstname, a.member_lastname, a.gender, a.dob, 
    b.proccode, b.procdesc, b.billedamt, b.paidamt, b.allowedamt, b.providernpi, b.providername, 
    c.pharmnpi, c.pharmname, c.billedamt, c.paidamt 
FROM vh_eligibilities a 
LEFT JOIN 
	vh_claims b 
ON 
	a.memberid = b.memberid 
LEFT JOIN 
	vh_rxclaims c 
	ON 
	a.memberid = c.memberid;

-------------------------------
-- package

 

CREATE OR REPLACE PROCEDURE caLculate_simple_interest (
    p_principal IN NUMBER,
    p_rate IN NUMBER,
    p_time IN NUMBER
) 
AS
    p_simple_interest NUMBER;
BEGIN
    p_simple_interest := (p_principal * p_rate * p_time) / 100;
    Dbms_Output.put_line('Simple interest: ' || p_simple_interest);
END;

 

CREATE OR REPLACE PROCEDURE sp_compound_interest(
    p_principal NUMBER,
    p_time NUMBER,
    p_rate NUMBER
)
AS
    p_compound_interest NUMBER(19, 4);
BEGIN
    p_compound_interest := p_principal * (Power((1+(p_rate / 100)), p_time) - 1);
    Dbms_Output.put_line('Compound interest: ' || p_compound_interest);
END;

 

EXEC sp_compound_interest(500000, 5, 12);

 

--package specification
CREATE OR REPLACE PACKAGE pkg_sbi_cprocedure
IS
    PROCEDURE sp_simple_interest (
    p_principal IN NUMBER,
    p_rate IN NUMBER,
    p_time IN NUMBER
    );
    PROCEDURE sp_compound_interest(
    p_principal NUMBER,
    p_time NUMBER,
    p_rate NUMBER
    );
    --function
END;
/
--package body
CREATE OR REPLACE PACKAGE BODY pkg_sbi_cprocedure
IS
    PROCEDURE sp_simple_interest (
        p_principal IN NUMBER,
        p_rate IN NUMBER,
        p_time IN NUMBER
    )
    AS
        p_simple_interest NUMBER;
    BEGIN
        p_simple_interest := (p_principal * p_rate * p_time) / 100;
        Dbms_Output.put_line('Simple interest: ' || p_simple_interest);
    END sp_simple_interest;

 

    PROCEDURE sp_compound_interest(
        p_principal NUMBER,
        p_time NUMBER,
        p_rate NUMBER
    )
    AS
        p_compound_interest NUMBER(19, 4);
    BEGIN
        p_compound_interest := p_principal * (Power((1+(p_rate / 100)), p_time) - 1);
        Dbms_Output.put_line('Compound interest: ' || p_compound_interest);
    END sp_compound_interest;
END pkg_sbi_cprocedure;

 

EXEC pkg_sbi_cprocedure.sp_simple_interest(500000, 5, 12);
EXEC pkg_sbi_cprocedure.sp_compound_interest(500000, 5, 12);

 


function to separate name and domain of emailid

 

----- VIEW ----------
vh_eligibilities --> demographic information --> us patient
vh_claims --> claims data, xray data + who the provider is, hospital ko naam, $ amount
vh_rxclaims --> pharmacy, drugcode, strength, $ amount kati pareko

 

-- i need total info of that person vane
CREATE VIEW tbl_member_dist_bos_new AS
SELECT 
    a.memberid, a.memer_firstname, a.member_lastname, a.gender, a.dob,
    b.proccode, b.procdesc, b.billedamt, b.paidamt, b.allowedamt, b.providernpi, b.providername,
    c.pharmnpi, c.pharmname, c.billedamt, c.paidamt
FROM vh_eligibilities a
LEFT JOIN
    vh_claims b
ON
    a.memberid = b.memberid
LEFT JOIN
    vh_rxclaims c
    ON
    a.memberid = c.memberid
WHERE
    a.location IN ('BOSTON', 'NEWYORK')