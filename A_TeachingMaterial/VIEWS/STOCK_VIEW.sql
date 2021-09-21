--------------------------------------------------------
--  DDL for View STOCK_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM4_202011F"."STOCK_VIEW" ("PROD_CODE", "PROD_NAME", "STOCK") AS 
  SELECT
    A.PROD_CODE,
    A.PROD_NAME,
    SUM(inc_cnt) - NVL((SELECT SUM(PROD_PAYCNT) FROM COIN_USE C WHERE COIN_USE_CANCEL IS NULL AND C.PROD_CODE = A.PROD_CODE ), 0) STOCK
    
FROM
    PROD A LEFT OUTER JOIN income B ON(A.PROD_CODE = B.PROD_CODE) 
GROUP BY A.prod_code, PROD_NAME
;
