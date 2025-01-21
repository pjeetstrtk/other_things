SELECT account_num,COUNT(bill_id) AS doub
FROM TBL_BILL 
WHERE bill_period=202304 AND book_code=305
GROUP BY account_num
HAVING COUNT(bill_id)>1
