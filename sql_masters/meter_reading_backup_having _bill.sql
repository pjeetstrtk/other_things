reading enishilyse kore ((book_code and current bill_period)) dia ai script chalate hobe
------------------------------------------------------

UPDATE IEBMS.TBL_METER_READING_DTL RD
   SET (RD.READING_DTLID, RD.CUR_READING, RD.ADVANCE_READING,
        RD.READING_PROCESS_FLAG, RD.REC_STATUS) =
          (SELECT SC.READING_ID, SC.CUR_READING_OFPK, SC.ADV_READING_OFPK, 'B', 'C'
             FROM (SELECT READING_ID, CUR_READING_OFPK, ADV_READING_OFPK, CUST_ID
                     FROM IEBMS.TBL_BILL
                    WHERE BOOK_CODE IN (450,850,576,908,245,929,855 )
                      AND BILL_PERIOD = 202408
                      AND BILL_TYPE = 1) SC
            WHERE RD.CUST_ID = SC.CUST_ID AND RD.BILL_PERIOD = 202408)
 WHERE RD.BILL_PERIOD = 202408
   AND RD.CUST_ID IN (SELECT CUST_ID
                        FROM IEBMS.TBL_BILL
                       WHERE BOOK_CODE IN (450,850,576,908,245,929,855 )
                         AND BILL_PERIOD = 202408
                         AND BILL_TYPE = 1)

----------------------------------------------------------------------
Uporar script complate hobe ai -----last e ai script chalate hobe f5 diye
-----------------------------------------------------------------

CREATE OR REPLACE TRIGGER iebms.trg_reading_delete
   BEFORE DELETE
   ON iebms.tbl_meter_reading_dtl
   FOR EACH ROW
DECLARE
   is_bill   NUMBER:=0;
BEGIN
   SELECT COUNT (*)
     INTO is_bill
     FROM iebms.tbl_bill
    WHERE cust_id = :OLD.cust_id
      AND bill_period = :OLD.bill_period
      AND bill_type = 1;

   IF is_bill>0
   THEN
      RAISE_APPLICATION_ERROR (-20008, 'Sorry! This Reading Already Billed.');
   END IF;
EXCEPTION
   WHEN OTHERS
   THEN
      RAISE;
END;


