SELECT 
    tbl_bill_collection_hdr.book_code,
    tbl_bill_collection_hdr.account_num,
    tbl_bill_collection_hdr.bill_num
FROM 
    tbl_bill_collection_hdr
INNER JOIN 
    TBL_BILL ON tbl_bill_collection_hdr.bill_num = TBL_BILL.bill_num 
WHERE 
    tbl_bill_collection_hdr.book_code = 452 
    AND tbl_bill_collection_hdr.account_num IN (4135,4155,4200,4215,5300,5330,5450,5500,5700,5800) 
    AND tbl_bill_collection_hdr.bill_period = 201208
	