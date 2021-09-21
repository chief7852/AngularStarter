--------------------------------------------------------
--  DDL for Procedure INSERT_RES_INFO_PROC
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "TEAM4_202011F"."INSERT_RES_INFO_PROC" (
    P_RES_CODE IN RES_INFO.RES_CODE%TYPE,
    P_TICKET_ID IN RES_INFO.TICKET_ID%TYPE,
    P_TICKET_CNT IN NUMBER
)
IS
BEGIN
    FOR I IN 1..P_TICKET_CNT LOOP
    INSERT INTO res_info (
        res_info_code,
        res_code,
        ticket_id
    ) VALUES (
        (select 'RI' || TO_CHAR(SYSDATE, 'YYMMDD') || LPAD(TO_CHAR(TO_NUMBER(SUBSTR(NVL(MAX(RES_INFO_CODE), '000000000'), 9)) + 1), 4, '0') RES_INFO_CODE
                                FROM RES_INFO A RIGHT OUTER JOIN RESERVE B ON(A.RES_CODE = B.RES_CODE)),
        P_RES_CODE,
        P_TICKET_ID
    );
    END LOOP;
END;

/
