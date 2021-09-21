--------------------------------------------------------
--  DDL for View TODAY_TOTAL_AMOUNT_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM4_202011F"."TODAY_TOTAL_AMOUNT_VIEW" ("CNT", "AMOUNT", "CANCEL") AS 
  select count(*) cnt
    , sum(coin_use_amount) amount
    , '총액' cancel
from coin_use
where to_char(coin_use_date, 'yyyymmdd') = to_char(sysdate, 'yyyymmdd')
union
  SELECT
    count(*) cnt,
    sum(coin_use_amount) amount,
   '환불' cancel
FROM
    coin_use
where to_char(coin_use_date, 'yyyymmdd') = to_char(sysdate, 'yyyymmdd')
and coin_use_cancel is not null

union
select 
    count(*)  cnt
    , sum(coin_use_amount) amount
    , '순매출' cancel
from coin_use
where to_char(coin_use_date,'yyyymmdd') = to_char(sysdate, 'yyyymmdd')
and coin_use_cancel is null
;
