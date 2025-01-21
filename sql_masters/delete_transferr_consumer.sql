------------------first delete_cons table should be created and need to back up there given book and account number list



DELETE FROM iebms.TBL_ADJUSTMENT_DTL WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_ADJUSTMENT_HDR WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT; 
DELETE FROM iebms.TBL_ADJUSTMENT_MST WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_BILL WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_BILL_ARRCOMB_DTL WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_BILL_ARREAR_HDR WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_BILL_COLLECTION_HDR WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_BILL_CORR WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_CMO WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_CUSTOMER_METER WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_CUSTOMER_MISC_INFO WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_METER_READING_DTL WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_METER_READING_PENALTY WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_OFFICE_COLLECTION WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_OFFICE_COLLECTION_MST WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_OFFICE_RECIEPT WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_OP_BALANCE WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_SUB_LEDGER_DTL WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_TARIFF_TRNS WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_WIRING_INSP WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;
DELETE FROM iebms.TBL_CUSTOMER_INTERFACE WHERE cust_id IN (SELECT cust_id FROM delete_cons);
COMMIT;