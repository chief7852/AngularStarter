--------------------------------------------------------
--  DDL for View COIN_HISTORY_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM4_202011F"."COIN_HISTORY_VIEW" ("WHAT", "CODE", "COIN_CODE", "PROD_CODE", "PROD_PAYCNT", "AMOUNT", "COIN_DATE", "COIN_USE_CANCEL", "COIN_CHARGE_STATE") AS 
  SELECT DECODE(SUBSTR(CODE, 1,1) , 'C', '충전', '사용') WHAT,
    A."CODE",A."COIN_CODE",A."PROD_CODE",A."PROD_PAYCNT",A."AMOUNT",A."COIN_DATE",A."COIN_USE_CANCEL",A."COIN_CHARGE_STATE"
FROM (SELECT
    coin_charge_code code,
    coin_code,
    null prod_code,
    null prod_paycnt,
    coin_charge_amount amount,
    coin_charge_date coin_date,
    null coin_use_cancel,
    DECODE(COIN_CHARGE_STATE, 'CC', '충전요청', '상품환불') coin_charge_state
FROM
    coin_charge
union  
SELECT
    coin_use_code code,
    coin_code,
    prod_code,
    prod_paycnt,
    coin_use_amount amount,
    coin_use_date coin_date,
    coin_use_cancel,
    null coin_charge_state
FROM
    coin_use) A
;
