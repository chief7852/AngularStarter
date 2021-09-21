--------------------------------------------------------
--  DDL for Procedure RES_PAY_PROC
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "TEAM4_202011F"."RES_PAY_PROC" (
    p_start in varchar2
    , p_end in varchar2
)
is 
    v_res_code varchar2(12) := '';
    v_pay_amount number := 0;
    v_start date := to_date(p_start, 'yyyymmdd');
    v_end date := to_date(p_end, 'yyyymmdd');
begin
    for D in 1..(v_end - v_start + 1) loop
        for i in 1..300 loop
        INSERT INTO reserve (
            res_code,
            user_id,
            res_date,
            res_predate,
            res_cancel,
            sale_id
        ) VALUES (
            'RE' || to_char(D, 'yyyymmdd') || LPAD(i, '0000', 0),
            'TICKETOFFICE',
            v_start + D,
            v_start + D,
            NULL,
            NULL
        );

        commit;

        select max(res_code) into v_res_code
          from reserve
        where to_char(res_date, 'yyyymmdd') = to_char(D, 'yyyymmdd');

        select sum(ticket_price) into v_pay_amount
          from ticket
          where ticket_id in (
                select ticket_id
                  from (
                    select rownum rn, ticket_id
                      from ticket)
                    where rn = ( 
                        select round (dbms_random.value() * count(ticket_id))
                          from ticket
                        )
            );

        INSERT INTO pay (
            res_code,
            pay_date,
            pay_amount,
            pay_method,
            pay_way
        ) VALUES (
            v_res_code,
            v_start + D,
            90000 + v_pay_amount,
            'card',
            'TO'
        );

        end loop;



    end loop;
end;


/
