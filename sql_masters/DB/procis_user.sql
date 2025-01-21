connect system/a

create user IEBMS identified by IEBMS default tablespace TSP_IEBMS temporary   tablespace TSP_IEBMS_TEMP;
grant dba to iebms;
create user PROCIS identified by PROCIS;
grant dba to PROCIS;
create user ONE_POINT identified by ONE_POINT;
grant dba to ONE_POINT;
create user DMS identified by DMS;
grant dba to DMS;
create user ITI identified by ITI;
grant dba to ITI;
create user SMS identified by SMS;
grant dba to SMS;
create user UISC identified by UISC;
grant dba to UISC;
create user REBMIS identified by REBMIS;
grant dba to REBMIS;
create user STAR_CASH identified by STAR_CASH;
grant dba to STAR_CASH;
