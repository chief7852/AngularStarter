--------------------------------------------------------
--  DDL for Function GET_CODE_NAME_FUNC
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "TEAM4_202011F"."GET_CODE_NAME_FUNC" (V_COM_CODE VARCHAR2, V_COM_CODE_GRP VARCHAR2)
    RETURN VARCHAR2
IS
    V_NAME VARCHAR2(50);
BEGIN
    SELECT COM_CODE_NAME INTO V_NAME
    FROM COM_CODE 
    WHERE COM_CODE_GRP = V_COM_CODE_GRP 
    AND COM_CODE = V_COM_CODE;

    RETURN V_NAME;
END;

/
