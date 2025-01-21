select
    reading_id
from
    tbl_bill
where
    book_code = 130
    and account_num in (2139)
    and bill_period = 202407
update
    tbl_meter_reading_dtl
set
    reading_dtlid = 9726689
where
    book_code = 130
    and account_num in (2139)
    and bill_period = 202407;

