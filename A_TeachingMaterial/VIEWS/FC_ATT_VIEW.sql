--------------------------------------------------------
--  DDL for View FC_ATT_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM4_202011F"."FC_ATT_VIEW" ("FC_ID", "FC_NAME", "LFC_CODE", "ATT_AVAILABLE", "ATT_DESC", "ATT_WAIT", "FILE_NO", "ATT_SDESC") AS 
  SELECT A.FC_ID
    ,FC_NAME
    ,LFC_CODE
    ,ATT_AVAILABLE
    ,ATT_DESC
    ,ATT_WAIT
    ,FILE_NO
    ,ATT_SDESC
FROM FACILITIES A 
LEFT OUTER JOIN ATTRACTION B ON (A.FC_ID = B.FC_ID)
;
