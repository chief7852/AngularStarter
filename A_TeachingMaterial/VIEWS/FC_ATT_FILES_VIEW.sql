--------------------------------------------------------
--  DDL for View FC_ATT_FILES_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM4_202011F"."FC_ATT_FILES_VIEW" ("FC_ID", "FC_NAME", "LFC_CODE", "ATT_AVAILABLE", "ATT_DESC", "ATT_WAIT", "FILE_NO", "ATT_SDESC", "FILE_PATH", "FILE_ORIGIN", "FILE_SAVE", "FILE_TYPE") AS 
  SELECT
    fc_id,
    fc_name,
    lfc_code,
    att_available,
    att_desc,
    att_wait,
    A.file_no,
    att_sdesc,
    file_path,
    file_origin,
    file_save,
    file_type
FROM
    fc_att_view A
    LEFT OUTER JOIN FILES B ON (A.FILE_NO = B.FILE_NO)
;
