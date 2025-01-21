UPDATE TBL_BILL_ARRCOMB_DTL a
SET
    ARR_MISC_TEXT = (
        SELECT MISC_TEXT
        FROM tbl_bill b
        WHERE
            a.bill_num = b.BILL_NUM
    )
WHERE
    a.ARR_MISC_AMT > 0
    AND proc_bill_period > 202401;

COMMIT;

UPDATE TBL_BILL_ARRear_hdr a
SET
    ARR_MISC_TEXT = (
        SELECT MISC_TEXT
        FROM tbl_bill b
        WHERE
            a.bill_num = b.BILL_NUM
    )
WHERE
    a.ARR_MISC_AMT > 0
    AND bill_period > 202401;

COMMIT;

ALTER TABLE tbl_bill_collection_hdr MODIFY MISC_CODE VARCHAR(200);

UPDATE tbl_bill_collection_hdr c
SET
    MISC_CODE = (
        SELECT MISC_TEXT
        FROM tbl_bill b
        WHERE
            c.bill_num = b.BILL_NUM
            AND b.bill_period > 202401
            AND b.MISC_TEXT IS NOT NULL
    )
WHERE
    c.coll_bill_period > 202401
    AND c.COLL_MISC_AMT > 0;

UPDATE TBL_JMENUS
SET
    MENU_OPTION = '433093277'
WHERE
    MENU_ID = 199;

UPDATE TBL_JMENUS
SET
    MENU_OPTION = '47217632'
WHERE
    MENU_ID = 194;

commit;