UPDATE tbl_bill_arrear_hdr SET ARR_LPC_1_AMT=0 Where bill_period= AND cust_id IN (
SELECT cust_id FROM tbl_customer_interface WHERE cust_spl_type=420)