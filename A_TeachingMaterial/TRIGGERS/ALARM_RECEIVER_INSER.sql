--------------------------------------------------------
--  DDL for Trigger ALARM_RECEIVER_INSER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TEAM4_202011F"."ALARM_RECEIVER_INSER" 
    AFTER INSERT ON alarm
    REFERENCING new AS alarms
    FOR EACH ROW
BEGIN
    insert into alarm_receiver (
    alarm_no,
    emp_id
) values (
    :alarms.alarm_no,
    :alarms.emp_id
);
END;
/
ALTER TRIGGER "TEAM4_202011F"."ALARM_RECEIVER_INSER" ENABLE;
