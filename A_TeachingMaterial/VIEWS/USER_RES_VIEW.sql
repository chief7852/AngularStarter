--------------------------------------------------------
--  DDL for View USER_RES_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM4_202011F"."USER_RES_VIEW" ("RES_CODE", "RESCNT", "USER_ID", "RES_DATE", "RES_PREDATE", "RES_CANCEL", "SALE_ID", "SALE_NAME") AS 
  SELECT
        a.res_code,
        COUNT(res_info_code) RESCNT,
        user_id,
        res_date,
        res_predate,
        res_cancel,
        a.sale_id,
        sale_name
    FROM
         reserve A left outer join SALE B on (A.SALE_ID = B.SALE_ID)
         full OUTER JOIN RES_INFO B ON (A.RES_CODE = B.RES_CODE)
    group by  a.res_code, user_id,
        res_date,
        res_predate,
        res_cancel,
        a.sale_id,
        sale_name
    order by res_date desc
;
