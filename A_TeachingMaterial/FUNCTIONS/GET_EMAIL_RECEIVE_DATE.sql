--------------------------------------------------------
--  DDL for Function GET_EMAIL_RECEIVE_DATE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "TEAM4_202011F"."GET_EMAIL_RECEIVE_DATE" (v_email_no number)
    return date
is
    v_date date;
begin
    update email_receiver set email_receive = sysdate where email_no = v_email_no;
    select email_receive into v_date
    from email_receiver
    where email_no = v_email_no;

    return v_date;
end;

select get_email_receive_date(25)
from dual;

select GET_CODE_NAME_FUNC('AD', 'TA')
from dual;

/
