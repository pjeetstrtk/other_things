UPDATE tbl_bill_collection_hdr c
SET c.MISC_CODE=(SELECT trim(both ' ' FROM MISC_TEXT)   FROM tbl_bill b WHERE TO_CHAR(c.bill_num)= TO_CHAR(b.BILL_NUM) AND b.bill_period=202401)
WHERE c.coll_bill_period=202401 AND c.COLL_MISC_AMT>0 AND c.MISC_CODE IS NULL


SELECT trim(both ' ' FROM MISC_TEXT)  FROM tbl_bill WHERE MISC_TEXT IS NOT NULL AND bill_period>202401


SELECT MISC_TEXT FROM tbl_bill WHERE bill_num IN (
SELECT bill_num FROM tbl_bill_collection_hdr WHERE coll_bill_period=202401 AND misc_code IS NULL AND coll_misc_amt>0)
AND MISC_TEXT IS NOT NULL


UPDATE tbl_bill_collection_hdr c SET MISC_CODE=(SELECT MISC_TEXT FROM tbl_bill b 
WHERE c.bill_num= b.BILL_NUM AND b.bill_period>202401 AND b.MISC_TEXT IS NOT NULL ) WHERE c.coll_bill_period>202401 
AND  c.COLL_MISC_AMT>0 --AND c.MISC_CODE IS NULL



SELECT TO_CHAR(bill_num),misc_code FROM tbl_bill_collection_hdr WHERE coll_bill_period=202401  AND COLL_MISC_AMT>0
GROUP BY bill_num,misc_code

UPDATE tbl_bill_collection_hdr SET MISC_code= trim(both ' ' FROM MISC_code) 
 WHERE coll_bill_period>202401   

 SELECT * FROM tbl_bill_collection_hdr 
 WHERE coll_bill_period=202401   --AND MISC_CODE= NULL
 
  SELECT * FROM tbl_bill 
 WHERE bill_period=202401  AND NVL(meter_num,'null')= NULL

