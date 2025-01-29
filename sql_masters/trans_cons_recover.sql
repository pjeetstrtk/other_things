------------------first delete_cons table should be created and need to back up there given book and account number list
alter table  TBL_ADJUSTMENT_DTL rename to TBL_ADJUSTMENT_DTL_p;
alter table  TBL_ADJUSTMENT_HDR rename to TBL_ADJUSTMENT_HDR_p;
alter table  TBL_ADJUSTMENT_MST rename to TBL_ADJUSTMENT_MST_p;
alter table  TBL_BILL rename to TBL_BILL_p;
alter table  TBL_BILL_ARRCOMB_DTL rename to TBL_BILL_ARRCOMB_DTL_p;
alter table  TBL_BILL_ARREAR_HDR rename to TBL_BILL_ARREAR_HDR_p;
alter table  TBL_BILL_COLLECTION_HDR rename to TBL_BILL_COLLECTION_HDR_p;
alter table  TBL_BILL_CORR rename to TBL_BILL_CORR_p;
alter table  TBL_CMO rename to TBL_CMO_p;
alter table  TBL_CUSTOMER_METER rename to TBL_CUSTOMER_METER_p;
alter table  TBL_CUSTOMER_MISC_INFO rename to TBL_CUSTOMER_MISC_INFO_p;
alter table  TBL_METER_READING_DTL rename to TBL_METER_READING_DTL_p;
alter table  TBL_METER_READING_PENALTY rename to TBL_METER_READING_PENALTY_p;
alter table  TBL_OFFICE_COLLECTION rename to TBL_OFFICE_COLLECTION_p;
alter table  TBL_OFFICE_COLLECTION_MST rename to TBL_OFFICE_COLLECTION_MST_p;
alter table  TBL_OFFICE_RECIEPT rename to TBL_OFFICE_RECIEPT_p;
alter table  TBL_OP_BALANCE rename to TBL_OP_BALANCE_p;
alter table  TBL_SUB_LEDGER_DTL rename to TBL_SUB_LEDGER_DTL_p;
alter table  TBL_TARIFF_TRNS rename to TBL_TARIFF_TRNS_p;
alter table  TBL_WIRING_INSP rename to TBL_WIRING_INSP_p;
alter table  TBL_CUSTOMER_INTERFACE rename to TBL_CUSTOMER_INTERFACE_p;
===================================================================================================================

insert into TBL_ADJUSTMENT_DTL_p select * from TBL_ADJUSTMENT_DTL where cust_id in (select cust_id from del_by_book);
insert into TBL_ADJUSTMENT_HDR_p select * from TBL_ADJUSTMENT_HDR where cust_id in (select cust_id from del_by_book);
insert into TBL_ADJUSTMENT_MST_p select * from TBL_ADJUSTMENT_MST where cust_id in (select cust_id from del_by_book);
insert into TBL_BILL_p select * from TBL_BILL where cust_id in (select cust_id from del_by_book);
insert into TBL_BILL_ARRCOMB_DTL_p select * from TBL_BILL_ARRCOMB_DTL where cust_id in (select cust_id from del_by_book);
insert into TBL_BILL_ARREAR_HDR_p select * from TBL_BILL_ARREAR_HDR where cust_id in (select cust_id from del_by_book);
insert into TBL_BILL_COLLECTION_HDR_p select * from TBL_BILL_COLLECTION_HDR where cust_id in (select cust_id from del_by_book);
insert into TBL_BILL_CORR_p select * from TBL_BILL_CORR where cust_id in (select cust_id from del_by_book);
insert into TBL_CMO_p select * from TBL_CMO where cust_id in (select cust_id from del_by_book);
insert into TBL_CUSTOMER_METER_p select * from TBL_CUSTOMER_METER where cust_id in (select cust_id from del_by_book);
insert into TBL_CUSTOMER_MISC_INFO_p select * from TBL_CUSTOMER_MISC_INFO where cust_id in (select cust_id from del_by_book);
insert into TBL_METER_READING_DTL_p select * from TBL_METER_READING_DTL where cust_id in (select cust_id from del_by_book);
insert into TBL_METER_READING_PENALTY_p select * from TBL_METER_READING_PENALTY where cust_id in (select cust_id from del_by_book);
insert into TBL_OFFICE_COLLECTION_p select * from TBL_OFFICE_COLLECTION where cust_id in (select cust_id from del_by_book);
insert into TBL_OFFICE_COLLECTION_MST_p select * from TBL_OFFICE_COLLECTION_MST where cust_id in (select cust_id from del_by_book);
insert into TBL_OFFICE_RECIEPT_p select * from TBL_OFFICE_RECIEPT where cust_id in (select cust_id from del_by_book);
insert into TBL_OP_BALANCE_p select * from TBL_OP_BALANCE where cust_id in (select cust_id from del_by_book);
insert into TBL_SUB_LEDGER_DTL_p select * from TBL_SUB_LEDGER_DTL where cust_id in (select cust_id from del_by_book);
insert into TBL_TARIFF_TRNS_p select * from TBL_TARIFF_TRNS where cust_id in (select cust_id from del_by_book);
insert into TBL_WIRING_INSP_p select * from TBL_WIRING_INSP where cust_id in (select cust_id from del_by_book);
insert into TBL_CUSTOMER_INTERFACE_p select * from TBL_CUSTOMER_INTERFACE where cust_id in (select cust_id from del_by_book);
====================================================================================================
TBL_ADJUSTMENT_DTL
TBL_ADJUSTMENT_HDR
TBL_ADJUSTMENT_MST
TBL_BILL
TBL_BILL_ARRCOMB_DTL
TBL_BILL_ARREAR_HDR
TBL_BILL_COLLECTION_HDR
TBL_BILL_CORR
TBL_CMO
TBL_CUSTOMER_METER
TBL_CUSTOMER_MISC_INFO
TBL_METER_READING_DTL
TBL_METER_READING_PENALTY
TBL_OFFICE_COLLECTION
TBL_OFFICE_COLLECTION_MST
TBL_OFFICE_RECIEPT
TBL_OP_BALANCE
TBL_SUB_LEDGER_DTL
TBL_TARIFF_TRNS
TBL_WIRING_INSP
TBL_CUSTOMER_INTERFACE
=========================================================================
  27100129
  27101103
  27101618
============================================================================

DELETE FROM iebms.TBL_ADJUSTMENT_MST WHERE cust_id IN (SELECT cust_id FROM del_by_book);
DELETE FROM iebms.TBL_BILL WHERE cust_id IN (SELECT cust_id FROM del_by_book);
DELETE FROM iebms.TBL_BILL_ARRCOMB_DTL WHERE cust_id IN (SELECT cust_id FROM del_by_book);
DELETE FROM iebms.TBL_BILL_ARREAR_HDR WHERE cust_id IN (SELECT cust_id FROM del_by_book);
DELETE FROM iebms.TBL_BILL_COLLECTION_HDR WHERE cust_id IN (SELECT cust_id FROM del_by_book);
DELETE FROM iebms.TBL_BILL_CORR WHERE cust_id IN (SELECT cust_id FROM del_by_book);
DELETE FROM iebms.TBL_CMO WHERE cust_id IN (SELECT cust_id FROM del_by_book);
DELETE FROM iebms.TBL_CUSTOMER_METER WHERE cust_id IN (SELECT cust_id FROM del_by_book);
DELETE FROM iebms.TBL_CUSTOMER_MISC_INFO WHERE cust_id IN (SELECT cust_id FROM del_by_book);
DELETE FROM iebms.TBL_METER_READING_DTL WHERE cust_id IN (SELECT cust_id FROM del_by_book);
DELETE FROM iebms.TBL_METER_READING_PENALTY WHERE cust_id IN (SELECT cust_id FROM del_by_book);
DELETE FROM iebms.TBL_OFFICE_COLLECTION WHERE cust_id IN (SELECT cust_id FROM del_by_book);
DELETE FROM iebms.TBL_OFFICE_COLLECTION_MST WHERE cust_id IN (SELECT cust_id FROM del_by_book);
DELETE FROM iebms.TBL_SUB_LEDGER_DTL WHERE cust_id IN (SELECT cust_id FROM del_by_book);
DELETE FROM iebms.TBL_CUSTOMER_INTERFACE WHERE cust_id IN (SELECT cust_id FROM del_by_book);