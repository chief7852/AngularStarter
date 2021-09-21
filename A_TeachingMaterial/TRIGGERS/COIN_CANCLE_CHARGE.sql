--------------------------------------------------------
--  DDL for Trigger COIN_CANCLE_CHARGE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TEAM4_202011F"."COIN_CANCLE_CHARGE" 
after update on coin_use
REFERENCING new AS coin_charge
for each row
begin
insert into coin_charge(
    coin_charge_code,
    coin_code,
    coin_charge_amount,
    coin_charge_date,
    coin_charge_state
) values (
    (select 'C' || to_char(to_number(substr(nvl(max(coin_charge_code), 'a'||to_char(sysdate, 'ymmdd') ||lpad('0', 6, '0' )), 2)) + 1) as code_charge_code
    from coin_charge
    where substr((coin_charge_code),2, 5) = to_char(sysdate, 'ymmdd')),
    :coin_charge.coin_code,
    :coin_charge.coin_use_amount,
    sysdate,
    'RF'
);

end;
/
ALTER TRIGGER "TEAM4_202011F"."COIN_CANCLE_CHARGE" ENABLE;
