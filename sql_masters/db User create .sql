create user IEBMS identified by IEBMS;
grant dba to IEBMS;
create user SMS identified by SMS;
grant dba to SMS;
create user PROCIS identified by PROCIS;
grant dba to PROCIS;


create user USL identified by USL;
grant dba to USL;
create user PROCIS identified by PROCIS;
grant dba to PROCIS;
create user ONE_POINT identified by ONE_POINT;
grant dba to ONE_POINT;
create user DMS identified by DMS;
grant dba to DMS;
create user ITI identified by ITI;
grant dba to ITI;
create user UISC identified by UISC;
grant dba to UISC;
create user REBMIS identified by REBMIS;
grant dba to REBMIS;
create user STAR_CASH identified by STAR_CASH;
grant dba to STAR_CASH;

======user drop==================
drop user IEBMS cascade;
drop user SMS cascade;
drop user PROCIS cascade;
drop user ONE_POINT cascade;
drop user UISC cascade;
drop user REBMIS cascade;
drop user STAR_CASH cascade;   
drop user DMS cascade;
drop user ITI cascade;

================================procis user============================
drop user ONE_POINT cascade;
drop user UISC cascade;
drop user REBMIS cascade;
drop user STAR_CASH cascade;   
drop user DMS cascade;
drop user ITI cascade;
DROP USER PROCIS CASCADE;

CREATE USER PROCIS IDENTIFIED BY PROCIS;
GRANT CREATE SESSION TO PROCIS;


GRANT SELECT ON IEBMS.VW_CUSTOMER_FULL_INFO TO PROCIS;
GRANT SELECT ON IEBMS.TBL_CUSTOMER_INTERFACE TO PROCIS;
GRANT SELECT ON IEBMS.TBL_BILL TO PROCIS;
GRANT SELECT ON IEBMS.TBL_BILL_COLLECTION_HDR TO PROCIS;
GRANT SELECT ON IEBMS.TBL_COLL_POINT TO PROCIS;
GRANT SELECT ON IEBMS.TBL_SUB_LEDGER_DTL TO PROCIS;
GRANT SELECT ON IEBMS.TBL_BILL_ARREAR_HDR TO PROCIS;
GRANT SELECT ON IEBMS.TBL_TARIFF TO PROCIS;
GRANT SELECT ON IEBMS.TBL_TARIFF_GROUP TO PROCIS;
GRANT SELECT ON iebms.tbl_G_village TO PROCIS;
GRANT SELECT ON iebms.tbl_G_union TO PROCIS;
GRANT SELECT ON iebms.tbl_book TO PROCIS;
GRANT SELECT ON iebms.tbl_g_sub_district TO PROCIS;
