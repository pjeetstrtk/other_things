
delete from tbl_bill where book_code=100 and account_num in (1080) and bill_period=202412;
delete from tbl_bill where book_code=668 and account_num in (1480,1515) and bill_period=202412;
delete from tbl_bill where book_code=673 and account_num in (2600) and bill_period=202412;
commit;
delete from TBL_METER_READING_DTL where book_code=100 and account_num in (1080) and bill_period=202412;
delete from TBL_METER_READING_DTL where book_code=668 and account_num in (1480,1515) and bill_period=202412;
delete from TBL_METER_READING_DTL where book_code=673 and account_num in (2600) and bill_period=202412;
commit;




drop INDEX IEBMS.TBL_BILL_ARRHDR_CPRC_INDX;

drop INDEX IEBMS.TBL_BILL_ARRHDR_CIBPDC_INDX;

drop INDEX IEBMS.TBL_BILL_ARRHDR_BP_BN_INDX;

drop INDEX IEBMS.TBL_BILL_ARRHDR_BPBA_INDX;

drop INDEX IEBMS.TBL_BILL_ARRHDR_CIBPABPDC_INDX;

drop INDEX IEBMS.TBL_BILL_ARRHDR_BP_INDX;

drop INDEX IEBMS.TBL_BILL_ARRHDR_CERT_INDX;

drop INDEX IEBMS.TBL_BILL_ARRHDR_BILL_NUM_INDX;

drop INDEX IEBMS.TBL_BILL_ARRHDR_ARRBILLID_INDX;

drop INDEX IEBMS.TBL_BILL_ARRHDR_CIBP_UK;


