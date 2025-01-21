
------first Run index------

CREATE INDEX IEBMS.TBL_BILL_CIBPBUT_INDX ON 
     "IEBMS".TBL_BILL(cust_id,bill_Period,BILLED_UNIT_TTL,tariff_code,TARIFF_GRP_CODE)


-------- than run the script-------
	 
SELECT b.* FROM (SELECT ROWNUM AS sl_no,av.* FROM (SELECT 
   account_no, 
   consumer_name, 
   CONNECTED_LOAD AS Contact_load, 
   addres, 
   male_female,
   MAX_USE, 
   mobile_num, 
    CASE 
     WHEN MAX_USE <11 THEN '0-10 KWH (202107-202206)' 
     WHEN MAX_USE BETWEEN 11 AND 20 THEN '11-20 KWH (202107-202206)' 
     WHEN MAX_USE BETWEEN 21 AND 30 THEN '21-30 KWH (202107-202206)' 
     WHEN MAX_USE BETWEEN 31 AND 40 THEN '31-40 KWH (202107-202206)' 
     WHEN MAX_USE BETWEEN 41 AND 50 THEN '41-50 KWH (202107-202206)' 
     ELSE 'Unknown' 
    END AS remarks 
  FROM 
(SELECT b.cust_id, 
       MAX(b.billed_unit_ttl) AS MAX_USE, 
        c.book_code || '-' || c.account_num AS account_no, 
       c.customer_name_b 
             AS consumer_name, 
          g.g_vill_name_b 
       || ', ' 
       || u.g_union_name_b 
       || ', ' 
       || sd.g_sd_name_b 
       || ', ' 
       || d.g_dist_name_b AS addres, 
       '' male_female, m.mobile_no_1 AS mobile_num,c.CONNECTED_LOAD
  FROM iebms.TBL_CUSTOMER_INTERFACE c, 
       iebms.TBL_CUSTOMER_MISC_INFO m, 
       iebms.tbl_g_village g, 
       iebms.TBL_TARIFF t, 
       iebms.tbl_g_union u, 
       iebms.tbl_g_sub_district sd, 
       iebms.tbl_g_district d, 
       iebms.tbl_bill b 
 WHERE c.cust_id = m.cust_id(+) 
   AND c.g_vill_code = g.g_vill_code 
   AND c.g_union_code = u.g_union_code 
   AND c.g_sd_code = sd.g_sd_code 
   AND c.g_dist_code = d.g_dist_code 
   AND c.tariff_code = t.tariff_code 
   AND c.cust_id = b.cust_id 
   AND t.tariff_grp_code = 1 
   AND c.conn_cat_code = 1 
   AND b.tariff_code = t.tariff_code 
   AND b.bill_period BETWEEN 201806 AND 201812
   GROUP BY b.cust_id,c.book_code,c.account_num,c.customer_name_b,g.g_vill_name_b,u.g_union_name_b,sd.g_sd_name_b,d.g_dist_name_b,m.mobile_no_1,c.CONNECTED_LOAD) 
ORDER BY remarks)av WHERE av.MAX_USE<51 ORDER BY av.remarks)b WHERE b.sl_no<=50000