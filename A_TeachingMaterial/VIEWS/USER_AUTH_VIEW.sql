--------------------------------------------------------
--  DDL for View USER_AUTH_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM4_202011F"."USER_AUTH_VIEW" ("USER_ID", "USER_PASS", "USER_AUTH", "USER_PROTECT") AS 
  SELECT USER_ID
    , USER_PASS
    , 'US' USER_AUTH
    , USER_PROTECT
FROM USERS
WHERE USER_DEL IS NULL
UNION
SELECT EMP_ID
    , EMP_PASS
    , TEAM_CODE USER_AUTH
    , EMP_PROTECT
FROM EMP
WHERE EMP_FIRE IS NULL
;
