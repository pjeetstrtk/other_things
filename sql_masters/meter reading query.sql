select * from TBL_METER_READING_DTL where bill_period=202207
and book_code=633


update TBL_METER_READING_DTL set PREV_READING_DATE='17-May-2022' where bill_period=202207
and book_code=633


update TBL_bill set PREV_READING_DATE='17-May-2022' where bill_period=202207
and book_code=633



UPDATE TBL_METER_READING_DTL b SET b.reading_dtlid = (SELECT d.reading_id FROM TBL_bill d
WHERE b.cust_id=d.cust_id AND b.book_code=d.book_code AND d.book_code=449 AND d.bill_period=202202)
WHERE b.book_code=449 AND b.bill_period=202202






SELECT prev_reading_date,COUNT(cust_id) FROM tbl_meter_reading_dtl 
WHERE bill_period=202501 AND book_code=638 group by prev_reading_date