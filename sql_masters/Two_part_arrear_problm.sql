------at first find two part bill as old rate----

SELECT TARIFF_SRT_NAME_B AS TARIFF_NAME ,SUBSTR(TARIFF_RATE_DESCR_B,3,5) AS Offpeak_rate,TARIFF_GRP_CODE FROM tbl_bill 
 WHERE METER_TYPE_CODE=06 AND bill_period=202402 AND TARIFF_GRP_CODE NOT IN (1,2,3)
 GROUP BY TARIFF_SRT_NAME_B,TARIFF_RATE_DESCR_B,TARIFF_GRP_CODE
 
-----delete from TBL_AUTO_ARREAR --------

delete  FROM TBL_AUTO_ARREAR 
WHERE cust_id IN (SELECT cust_id FROM tbl_bill WHERE METER_TYPE_CODE=06 AND bill_period=202402 
AND TARIFF_GRP_CODE NOT IN (1,2,3))

----Run Procis_Newrate202403 arrear exe only two part----

DELETE FROM TBL_AUTO_ARREAR 
WHERE cust_id IN (SELECT cust_id FROM tbl_meter_reading_dtl WHERE METER_TYPE_CODE=06 AND bill_period=202402  AND XFORMER_UNIT>0
 AND tariff_code IN ( SELECT tariff_code FROM TBL_TARIFF  WHERE TARIFF_GRP_CODE NOT IN (1,2,3)))
 
 
------SPECIAL_CHRG update-----

UPDATE tbl_meter_reading_dtl SET SPECIAL_CHRG=0 WHERE METER_TYPE_CODE=06 AND bill_period=202403 AND SPECIAL_CHRG>0   
AND XFORMER_UNIT>0 AND tariff_code IN ( SELECT tariff_code FROM TBL_TARIFF  WHERE TARIFF_GRP_CODE NOT IN (1,2,3))


----after all.... process all incorrect two part bill-----