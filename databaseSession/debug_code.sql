REM   Script: debug_code
REM   debug code for exception handling lesson

SELECT * FROM LOG_EXCEPTION;

SELECT * FROM TBL_QUERYLOG;

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE LOG_EXCEPTION'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'CREATE TABLE LOG_EXCEPTION 
        ( 
                e_block_id VARCHAR2(30), 
                e_query VARCHAR2(1000) 
        )'; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE TBL_QUERYLOG'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'CREATE TABLE TBL_QUERYLOG 
        ( 
                block_id VARCHAR2(30), 
                querycode VARCHAR2(1000), 
                prowcount number, 
                starttime date, 
                endtime date 
 
        )'; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE TBL_STUDENTS'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

DECLARE 
        v_block VARCHAR2(30); 
        vQuery VARCHAR2(100); 
BEGIN 
        v_block := 'create tbl_students'; 
        vQuery :='CREATE TABLE TBL_STUDENTS(S_ID varchar2(20), S_NAME varchar2(50))'; 
        EXECUTE IMMEDIATE vQuery; 
        EXCEPTION WHEN OTHERS THEN 
        INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
        --exception can be printed before inserting into log_exception table, for unit testing. 
        --Dbms_Output.put_line ('Exception in query : ' ||vQuery); 
END; 
/

DECLARE 
        v_block VARCHAR2(30); 
        vQuery VARCHAR2(1000); 
        vRowCount NUMBER; 
        vStartTime VARCHAR2(20); 
BEGIN 
        v_block := 'Insert into tbl_students'; 
        vStartTime := SYSDATE; 
        vQuery := 'INSERT INTO TBL_STUDENTS(S_ID, S_NAME ) VALUES (''1'',''KESHAB'')'; 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
                vRowCount := SQL%ROWCOUNT; 
                COMMIT; 
        END; 
 
        vQuery := 'INSERT INTO TBL_QUERYLOG(block_id,querycode,pROWCOUNT,starttime,endtime) 
        VALUES ('''||v_block||''',REPLACE('''||vQuery||''', ''', ''''||'),'''||vRowCount||''','||vStartTime||','||SYSDATE||')'; 
        vRowCount := SQL%ROWCOUNT; 
        Dbms_Output.PUT_LINE(vQuery); 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
                COMMIT; 
        END; 
 
        --Dbms_Output.put_line ('Exception in query : ' ||vQuery); 
END; 
/

SELECT * FROM TBL_STUDENTS;

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE LOG_EXCEPTION'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'CREATE TABLE LOG_EXCEPTION 
        ( 
                e_block_id VARCHAR2(30), 
                e_query VARCHAR2(1000) 
        )'; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE TBL_QUERYLOG'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'CREATE TABLE TBL_QUERYLOG 
        ( 
                block_id VARCHAR2(30), 
                querycode VARCHAR2(1000), 
                prowcount number, 
                starttime date, 
                endtime date 
 
        )'; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE TBL_STUDENTS'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

DECLARE 
        v_block VARCHAR2(30); 
        vQuery VARCHAR2(100); 
BEGIN 
        v_block := 'create tbl_students'; 
        vQuery :='CREATE TABLE TBL_STUDENTS(S_ID varchar2(20), S_NAME varchar2(50))'; 
        EXECUTE IMMEDIATE vQuery; 
        EXCEPTION WHEN OTHERS THEN 
        INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
        --exception can be printed before inserting into log_exception table, for unit testing. 
        --Dbms_Output.put_line ('Exception in query : ' ||vQuery); 
END; 
/

DECLARE 
        v_block VARCHAR2(30); 
        vQuery VARCHAR2(1000); 
        vRowCount NUMBER; 
        vStartTime VARCHAR2(20); 
BEGIN 
        v_block := 'Insert into tbl_students'; 
        vStartTime := SYSDATE; 
        vQuery := 'INSERT INTO TBL_STUDENTS(S_ID, S_NAME ) VALUES (''1'',''KESHAB'')'; 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
                vRowCount := SQL%ROWCOUNT; 
                COMMIT; 
        END; 
 
        vQuery := 'INSERT INTO TBL_QUERYLOG(block_id,querycode,pROWCOUNT,starttime,endtime) 
        VALUES ('''||v_block||''',REPLACE('''||vQuery||''', ''', ''''||'),'''||vRowCount||''','||vStartTime||','||SYSDATE||')'; 
        vRowCount := SQL%ROWCOUNT; 
        Dbms_Output.PUT_LINE(vQuery); 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
                COMMIT; 
        END; 
 
        --Dbms_Output.put_line ('Exception in query : ' ||vQuery); 
END; 
/

SELECT * FROM TBL_STUDENTS;

SELECT * FROM LOG_EXCEPTION;

SELECT * FROM TBL_QUERYLOG;

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE LOG_EXCEPTION'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'CREATE TABLE LOG_EXCEPTION 
        ( 
                e_block_id VARCHAR2(30), 
                e_query VARCHAR2(1000) 
        )'; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE TBL_QUERYLOG'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'CREATE TABLE TBL_QUERYLOG 
        ( 
                block_id VARCHAR2(30), 
                querycode VARCHAR2(1000), 
                prowcount number, 
                starttime date, 
                endtime date 
 
        )'; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE TBL_STUDENTS'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

DECLARE 
        v_block VARCHAR2(30); 
        vQuery VARCHAR2(100); 
BEGIN 
        v_block := 'create tbl_students'; 
        vQuery :='CREATE TABLE TBL_STUDENTS(S_ID varchar2(20), S_NAME varchar2(50))'; 
        EXECUTE IMMEDIATE vQuery; 
        EXCEPTION WHEN OTHERS THEN 
        INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
        --exception can be printed before inserting into log_exception table, for unit testing. 
        --Dbms_Output.put_line ('Exception in query : ' ||vQuery); 
END; 
/

DECLARE 
        v_block VARCHAR2(30); 
        vQuery VARCHAR2(1000); 
        vRowCount NUMBER; 
        vStartTime VARCHAR2(20); 
BEGIN 
        v_block := 'Insert into tbl_students'; 
        vStartTime := SYSDATE; 
        vQuery := 'INSERT INTO TBL_STUDENTS(S_ID, S_NAME ) VALUES (''1'',''KESHAB'')'; 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
                vRowCount := SQL%ROWCOUNT; 
                COMMIT; 
        END; 
 
        vQuery2 := 'INSERT INTO TBL_QUERYLOG(block_id,querycode,pROWCOUNT,starttime,endtime) 
        VALUES ('''||v_block||''', '''||vQuery2||''','''||vRowCount||''','||vStartTime||','||SYSDATE||')'; 
        vRowCount := SQL%ROWCOUNT; 
        Dbms_Output.PUT_LINE(vQuery2); 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery2; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery2); 
                COMMIT; 
        END; 
 
        --Dbms_Output.put_line ('Exception in query : ' ||vQuery); 
END; 
/

SELECT * FROM TBL_STUDENTS;

SELECT * FROM LOG_EXCEPTION;

SELECT * FROM TBL_QUERYLOG;

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE LOG_EXCEPTION'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'CREATE TABLE LOG_EXCEPTION 
        ( 
                e_block_id VARCHAR2(30), 
                e_query VARCHAR2(1000) 
        )'; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE TBL_QUERYLOG'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'CREATE TABLE TBL_QUERYLOG 
        ( 
                block_id VARCHAR2(30), 
                querycode VARCHAR2(1000), 
                prowcount number, 
                starttime date, 
                endtime date 
 
        )'; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE TBL_STUDENTS'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

DECLARE 
        v_block VARCHAR2(30); 
        vQuery VARCHAR2(100); 
BEGIN 
        v_block := 'create tbl_students'; 
        vQuery :='CREATE TABLE TBL_STUDENTS(S_ID varchar2(20), S_NAME varchar2(50))'; 
        EXECUTE IMMEDIATE vQuery; 
        EXCEPTION WHEN OTHERS THEN 
        INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
        --exception can be printed before inserting into log_exception table, for unit testing. 
        --Dbms_Output.put_line ('Exception in query : ' ||vQuery); 
END; 
/

DECLARE 
        v_block VARCHAR2(30); 
        vQuery VARCHAR2(1000); 
        vQuery2 VARCHAR2(1000); 
        vRowCount NUMBER; 
        vStartTime VARCHAR2(20); 
BEGIN 
        v_block := 'Insert into tbl_students'; 
        vStartTime := SYSDATE; 
        vQuery := 'INSERT INTO TBL_STUDENTS(S_ID, S_NAME ) VALUES (''1'',''KESHAB'')'; 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
                vRowCount := SQL%ROWCOUNT; 
                COMMIT; 
        END; 
 
        vQuery2 := 'INSERT INTO TBL_QUERYLOG(block_id,querycode,pROWCOUNT,starttime,endtime) 
        VALUES ('''||v_block||''', '''||vQuery2||''','''||vRowCount||''','||vStartTime||','||SYSDATE||')'; 
        vRowCount := SQL%ROWCOUNT; 
        Dbms_Output.PUT_LINE(vQuery2); 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery2; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery2); 
                COMMIT; 
        END; 
 
        --Dbms_Output.put_line ('Exception in query : ' ||vQuery); 
END; 
/

SELECT * FROM TBL_STUDENTS;

SELECT * FROM LOG_EXCEPTION;

SELECT * FROM TBL_QUERYLOG;

BEGIN 
    EXECUTE IMMEDIATE 'SELECT * FROM LOG_EXCEPTION'; 
	EXCETION WHEN OTHERS THEN NULL; 
END; 
 
BEGIN 
    EXECUTE IMMEDIATE 'SELECT * FROM TBL_QUERYLOG'; 
	EXCETION WHEN OTHERS THEN NULL; 
END;
/

BEGIN 
    EXECUTE IMMEDIATE 'SELECT * FROM LOG_EXCEPTION'; 
	EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
    EXECUTE IMMEDIATE 'SELECT * FROM TBL_QUERYLOG'; 
	EXCEPTION WHEN OTHERS THEN NULL; 
END;
/

BEGIN 
        EXECUTE IMMEDIATE 'CREATE TABLE LOG_EXCEPTION 
        ( 
                e_block_id VARCHAR2(30), 
                e_query VARCHAR2(1000) 
        )'; 
END;
/

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE LOG_EXCEPTION'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END;
/

BEGIN 
        EXECUTE IMMEDIATE 'CREATE TABLE LOG_EXCEPTION 
        ( 
                e_block_id VARCHAR2(30), 
                e_query VARCHAR2(1000) 
        )'; 
END;
/

BEGIN 
        EXECUTE IMMEDIATE 'CREATE TABLE LOG_EXCEPTION 
        ( 
                e_block_id VARCHAR2(30), 
                e_query VARCHAR2(1000) 
        )'; 
END;
/

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE TBL_QUERYLOG'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END;
/

BEGIN 
        EXECUTE IMMEDIATE 'CREATE TABLE TBL_QUERYLOG 
        ( 
                block_id VARCHAR2(30), 
                querycode VARCHAR2(1000), 
                prowcount number, 
                starttime date, 
                endtime date 
 
        )'; 
END;
/

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE TBL_STUDENTS'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END;
/

DECLARE 
        v_block VARCHAR2(30); 
        vQuery VARCHAR2(100); 
BEGIN 
        v_block := 'create tbl_students'; 
        vQuery :='CREATE TABLE TBL_STUDENTS(S_ID varchar2(20), S_NAME varchar2(50))'; 
        EXECUTE IMMEDIATE vQuery; 
        EXCEPTION WHEN OTHERS THEN 
        INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
        --exception can be printed before inserting into log_exception table, for unit testing. 
        --Dbms_Output.put_line ('Exception in query : ' ||vQuery); 
END;
/

DECLARE 
        v_block VARCHAR2(30); 
        vQuery VARCHAR2(1000); 
        vRowCount NUMBER; 
        vStartTime VARCHAR2(20); 
BEGIN 
        v_block := 'Insert into tbl_students'; 
        vStartTime := SYSDATE; 
        vQuery := 'INSERT INTO TBL_STUDENTS(S_ID, S_NAME ) VALUES (''1'',''KESHAB'')'; 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
                vRowCount := SQL%ROWCOUNT; 
                COMMIT; 
        END; 
 
        vQuery := 'INSERT INTO TBL_QUERYLOG(block_id,querycode,pROWCOUNT,starttime,endtime) 
        VALUES ('''||v_block||''',REPLACE('''||vQuery||''', ''', ''''||'),'''||vRowCount||''','||vStartTime||','||SYSDATE||')'; 
        vRowCount := SQL%ROWCOUNT; 
        Dbms_Output.PUT_LINE(vQuery); 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
                COMMIT; 
        END; 
 
        --Dbms_Output.put_line ('Exception in query : ' ||vQuery); 
END;
/

DECLARE 
        v_block VARCHAR2(30); 
        vQuery VARCHAR2(1000); 
        vRowCount NUMBER; 
        vStartTime VARCHAR2(20); 
BEGIN 
        v_block := 'Insert into tbl_students'; 
        vStartTime := SYSDATE; 
        vQuery := 'INSERT INTO TBL_STUDENTS(S_ID, S_NAME ) VALUES (''1'',''KESHAB'')'; 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
                vRowCount := SQL%ROWCOUNT; 
                COMMIT; 
        END; 
 
        vQuery := 'INSERT INTO TBL_QUERYLOG(block_id,querycode,pROWCOUNT,starttime,endtime) 
        VALUES ('''||v_block||''',REPLACE('''||vQuery||''', ''' ''''||'),'''||vRowCount||''','||vStartTime||','||SYSDATE||')'; 
        vRowCount := SQL%ROWCOUNT; 
        Dbms_Output.PUT_LINE(vQuery); 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
                COMMIT; 
        END; 
 
        --Dbms_Output.put_line ('Exception in query : ' ||vQuery); 
END;
/

DECLARE 
        v_block VARCHAR2(30); 
        vQuery VARCHAR2(1000); 
        vRowCount NUMBER; 
        vStartTime VARCHAR2(20); 
BEGIN 
        v_block := 'Insert into tbl_students'; 
        vStartTime := SYSDATE; 
        vQuery := 'INSERT INTO TBL_STUDENTS(S_ID, S_NAME ) VALUES (''1'',''KESHAB'')'; 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
                vRowCount := SQL%ROWCOUNT; 
                COMMIT; 
        END; 
 
        vQuery := 'INSERT INTO TBL_QUERYLOG(block_id,querycode,pROWCOUNT,starttime,endtime) 
        VALUES ('''||v_block||''',REPLACE('''||vQuery||'''),'''||vRowCount||''','||vStartTime||','||SYSDATE||')'; 
        vRowCount := SQL%ROWCOUNT; 
        Dbms_Output.PUT_LINE(vQuery); 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
                COMMIT; 
        END; 
 
        --Dbms_Output.put_line ('Exception in query : ' ||vQuery); 
END;
/

SELECT * FROM TBL_STUDENTS;

SELECT * FROM TBL_QUERYLOG;

SELECT * FROM log_exception;

BEGIN 
    EXECUTE IMMEDIATE 'SELECT * FROM LOG_EXCEPTION'; 
	EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
    EXECUTE IMMEDIATE 'SELECT * FROM TBL_QUERYLOG'; 
	EXCEPTION WHEN OTHERS THEN NULL; 
END; 
 
 
BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE LOG_EXCEPTION'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'CREATE TABLE LOG_EXCEPTION 
        ( 
                e_block_id VARCHAR2(30), 
                e_query VARCHAR2(1000) 
        )'; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE TBL_QUERYLOG'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'CREATE TABLE TBL_QUERYLOG 
        ( 
                block_id VARCHAR2(30), 
                querycode VARCHAR2(1000), 
                prowcount number, 
                starttime date, 
                endtime date 
 
        )'; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE TBL_STUDENTS'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

DECLARE 
        v_block VARCHAR2(30); 
        vQuery VARCHAR2(100); 
BEGIN 
        v_block := 'create tbl_students'; 
        vQuery :='CREATE TABLE TBL_STUDENTS(S_ID varchar2(20), S_NAME varchar2(50))'; 
        EXECUTE IMMEDIATE vQuery; 
        EXCEPTION WHEN OTHERS THEN 
        INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
        --exception can be printed before inserting into log_exception table, for unit testing. 
        --Dbms_Output.put_line ('Exception in query : ' ||vQuery); 
END; 
/

DECLARE 
        v_block VARCHAR2(30); 
        vQuery VARCHAR2(1000); 
        vRowCount NUMBER; 
        vStartTime VARCHAR2(20); 
BEGIN 
        v_block := 'Insert into tbl_students'; 
        vStartTime := SYSDATE; 
        vQuery := 'INSERT INTO TBL_STUDENTS(S_ID, S_NAME ) VALUES (''1'',''KESHAB'')'; 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
                vRowCount := SQL%ROWCOUNT; 
                COMMIT; 
        END; 
 
        vQuery := 'INSERT INTO TBL_QUERYLOG(block_id,querycode,pROWCOUNT,starttime,endtime) 
        VALUES ('''||v_block||''',REPLACE('''||vQuery||'''),'''||vRowCount||''','||vStartTime||','||SYSDATE||')'; 
        vRowCount := SQL%ROWCOUNT; 
        Dbms_Output.PUT_LINE(vQuery); 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
                COMMIT; 
        END; 
 
        --Dbms_Output.put_line ('Exception in query : ' ||vQuery); 
END; 
/

SELECT * FROM TBL_STUDENTS;

SELECT * FROM TBL_QUERYLOG;

SELECT * FROM log_exception;

BEGIN 
    EXECUTE IMMEDIATE 'SELECT * FROM LOG_EXCEPTION'; 
	EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
    EXECUTE IMMEDIATE 'SELECT * FROM TBL_QUERYLOG'; 
	EXCEPTION WHEN OTHERS THEN NULL; 
END; 
 
 
BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE LOG_EXCEPTION'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'CREATE TABLE LOG_EXCEPTION 
        ( 
                e_block_id VARCHAR2(30), 
                e_query VARCHAR2(1000) 
        )'; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE TBL_QUERYLOG'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'CREATE TABLE TBL_QUERYLOG 
        ( 
                block_id VARCHAR2(30), 
                querycode VARCHAR2(1000), 
                prowcount number, 
                starttime date, 
                endtime date 
 
        )'; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE TBL_STUDENTS'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

DECLARE 
        v_block VARCHAR2(30); 
        vQuery VARCHAR2(100); 
BEGIN 
        v_block := 'create tbl_students'; 
        vQuery :='CREATE TABLE TBL_STUDENTS(S_ID varchar2(20), S_NAME varchar2(50))'; 
        EXECUTE IMMEDIATE vQuery; 
        EXCEPTION WHEN OTHERS THEN 
        INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
        --exception can be printed before inserting into log_exception table, for unit testing. 
        --Dbms_Output.put_line ('Exception in query : ' ||vQuery); 
END; 
/

DECLARE 
        v_block VARCHAR2(30); 
        vQuery VARCHAR2(1000); 
        vRowCount NUMBER; 
        vStartTime VARCHAR2(20); 
BEGIN 
        v_block := 'Insert into tbl_students'; 
        vStartTime := SYSDATE; 
        vQuery := 'INSERT INTO TBL_STUDENTS(S_ID, S_NAME ) VALUES (''1'',''KESHAB'')'; 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
                vRowCount := SQL%ROWCOUNT; 
                COMMIT; 
        END; 
 
        vQuery := 'INSERT INTO TBL_QUERYLOG(block_id,querycode,pROWCOUNT,starttime,endtime) 
        VALUES ('''||v_block||''',REPLACE('''||vQuery||'''),'''||vRowCount||''','||vStartTime||','||SYSDATE||')'; 
        vRowCount := SQL%ROWCOUNT; 
        Dbms_Output.PUT_LINE(vQuery); 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
                COMMIT; 
        END; 
 
        --Dbms_Output.put_line ('Exception in query : ' ||vQuery); 
END; 
/

SELECT * FROM TBL_STUDENTS;

SELECT * FROM TBL_QUERYLOG;

SELECT * FROM log_exception;

BEGIN 
    EXECUTE IMMEDIATE 'SELECT * FROM LOG_EXCEPTION'; 
	EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
    EXECUTE IMMEDIATE 'SELECT * FROM TBL_QUERYLOG'; 
	EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE LOG_EXCEPTION'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'CREATE TABLE LOG_EXCEPTION 
        ( 
                e_block_id VARCHAR2(30), 
                e_query VARCHAR2(1000) 
        )'; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE TBL_QUERYLOG'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'CREATE TABLE TBL_QUERYLOG 
        ( 
                block_id VARCHAR2(30), 
                querycode VARCHAR2(1000), 
                prowcount number, 
                starttime date, 
                endtime date 
 
        )'; 
END; 
/

BEGIN 
        EXECUTE IMMEDIATE 'DROP TABLE TBL_STUDENTS'; 
        EXCEPTION WHEN OTHERS THEN NULL; 
END; 
/

DECLARE 
        v_block VARCHAR2(30); 
        vQuery VARCHAR2(100); 
BEGIN 
        v_block := 'create tbl_students'; 
        vQuery :='CREATE TABLE TBL_STUDENTS(S_ID varchar2(20), S_NAME varchar2(50))'; 
        EXECUTE IMMEDIATE vQuery; 
        EXCEPTION WHEN OTHERS THEN 
        INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
        --exception can be printed before inserting into log_exception table, for unit testing. 
        --Dbms_Output.put_line ('Exception in query : ' ||vQuery); 
END; 
/

DECLARE 
        v_block VARCHAR2(30); 
        vQuery VARCHAR2(1000); 
        vRowCount NUMBER; 
        vStartTime VARCHAR2(20); 
BEGIN 
        v_block := 'Insert into tbl_students'; 
        vStartTime := SYSDATE; 
        vQuery := 'INSERT INTO TBL_STUDENTS(S_ID, S_NAME ) VALUES (''1'',''KESHAB'')'; 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
                vRowCount := SQL%ROWCOUNT; 
                COMMIT; 
        END; 
 
        vQuery := 'INSERT INTO TBL_QUERYLOG(block_id,querycode,pROWCOUNT,starttime,endtime) 
        VALUES ('''||v_block||''',REPLACE('''||vQuery||'''),'''||vRowCount||''','||vStartTime||','||SYSDATE||')'; 
        vRowCount := SQL%ROWCOUNT; 
        Dbms_Output.PUT_LINE(vQuery); 
 
        BEGIN 
                EXECUTE IMMEDIATE vQuery; 
                EXCEPTION WHEN OTHERS THEN 
                INSERT INTO log_exception(e_block_id,e_query) VALUES (v_block,vQuery); 
                COMMIT; 
        END; 
 
        --Dbms_Output.put_line ('Exception in query : ' ||vQuery); 
END; 
/

SELECT * FROM TBL_STUDENTS;

SELECT * FROM TBL_QUERYLOG;

SELECT * FROM log_exception;

