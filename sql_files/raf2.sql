SELECT 
    tbl_bill.book_code,
    tbl_bill.account_num
FROM 
    tbl_bill
INNER JOIN 
    TBL_meter_reading_dtl ON tbl_bill.reading_id <> TBL_METER_READING_DTL.reading_dtlid
WHERE 
    tbl_bill.book_code = 059 
    AND tbl_bill.bill_period = 202405
	

    