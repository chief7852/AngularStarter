--------------------------------------------------------
--  DDL for View EMAIL_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM4_202011F"."EMAIL_VIEW" ("EMAIL_NO", "SENDER_ID", "SENDER_NAME", "SEND_DATE", "EMAIL_TITLE", "EMAIL_CONT", "EMAIL_RESERVE", "RECEIVER_NAME", "RECEIVER_ID", "RECEIVE_DATE", "EMAIL_RESERVE_DEL", "RECEIVE_DEL", "EMAIL_DEL", "FILE_NO") AS 
  (
SELECT A.email_no,
    A.emp_id AS SENDER_ID,
    C.EMP_NAME AS SENDER_NAME,
    TO_CHAR(email_send,'YYYY-MM-DD HH:MI') AS SEND_DATE,
    EMAIL_TITLE,
    EMAIL_CONT,
    email_reserve,
    B.EMP_NAME AS RECEIVER_NAME,
    B.EMP_ID AS RECEIVER_ID,
    B.EMAIL_RECEIVE AS RECEIVE_DATE,
    a.email_reserve_del,
    B.RECEIVE_DEL,
    A.EMAIL_DEL,
    A.FILE_NO
FROM
    email A
LEFT OUTER JOIN EMP C ON (A.EMP_ID = C.EMP_ID)
LEFT OUTER JOIN 
(SELECT A.emp_id,
    email_no,
    email_receive,
    A.receive_del,
    B.EMP_NAME
FROM email_receiver A
LEFT OUTER JOIN EMP B ON (A.EMP_ID = B.EMP_ID)) B ON (A.EMAIL_NO = B.EMAIL_NO))
;
