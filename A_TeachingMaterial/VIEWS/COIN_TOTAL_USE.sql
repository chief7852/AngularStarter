--------------------------------------------------------
--  DDL for View COIN_TOTAL_USE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM4_202011F"."COIN_TOTAL_USE" ("coin_code") AS 
  with carged as(
SELECT  
    sum(COIN_CHARGE_AMOUNT) as carg
FROM
    coin_charge
   where coin_code = 'CO2105170001'
), used as(
SELECT
    sum(coin_use_amount) as amoun
FROM
    coin_use
where coin_code = 'CO2105170001'
)
select carg-amoun
from carged a,  used b
;
