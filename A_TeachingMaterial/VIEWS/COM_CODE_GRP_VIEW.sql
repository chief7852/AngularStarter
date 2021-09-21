--------------------------------------------------------
--  DDL for View COM_CODE_GRP_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM4_202011F"."COM_CODE_GRP_VIEW" ("COM_CODE_GRP", "COM_CODE_GRP_NAME", "COM_CODE_GRP_DESC", "COM_CODE_GRP_DEL", "COM_CODE", "COM_CODE_NAME", "COM_CODE_DESC", "CODE_COL", "COM_CODE_DEL") AS 
  SELECT  A.com_code_grp,
    com_code_grp_name,
    com_code_grp_desc,
    com_code_grp_del,
    com_code,
    com_code_name,
    com_code_desc,
    code_col,
    com_code_del
FROM COM_GRP A 
LEFT OUTER JOIN COM_CODE B ON (A.COM_CODE_GRP = B.COM_CODE_GRP)
;
