--------------------------------------------------------
--  DDL for Function GET_A_STOCK_FUNC
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "TEAM4_202011F"."GET_A_STOCK_FUNC" (V_PROD_CODE VARCHAR2)
    RETURN VARCHAR2
IS
    V_PROD_PAYCNT NUMBER;
BEGIN
    SELECT SUM(C.PROD_PAYCNT) INTO V_PROD_PAYCNT 
    FROM COIN_USE  C
    FULL OUTER JOIN PROD A ON (C.PROD_CODE = A.PROD_CODE)
    WHERE A.LPROD_CODE = (SELECT B.LPROD_CODE FROM PROD B WHERE PROD_CODE = V_PROD_CODE) AND C.COIN_USE_CANCEL IS NULL;

    RETURN V_PROD_PAYCNT;
END;

/
