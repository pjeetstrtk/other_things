SET
    ORACLE_SID = IEBMS SQLPLUS / NOLOG CONNECT IEBMS CIdx53BMsPr$Str590Ie26
ALTER USER SMS IDENTIFIED BY sms;

ALTER USER IEBMS IDENTIFIED BY iebms;
/
/
EXIT / / EXIT / / EXIT / / = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

SET
    ORACLE_SID = IEBMS SQLPLUS / NOLOG CONNECT IEBMS iebms
ALTER USER SMS IDENTIFIED BY CIdx53BMsPr$Str590Ie26;

ALTER USER IEBMS IDENTIFIED BY CIdx53BMsPr$Str590Ie26;

UPDATE TBL_JMENUS
SET
    MENU_OPTION = (
        SELECT '19' || SUBSTR(OFFICE_REB_ID, 2, 3) || '319' || SUBSTR(OFFICE_ID, 3, 1) AS
        FROM TBL_OFFICE
        WHERE
            STATUS = 'A'
    )
WHERE
    MENU_ID = 92;
/
/
EXIT / / EXIT / / EXIT / / = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
UPDATE TBL_JMENUS
SET
    MENU_OPTION = (
        SELECT '19' || SUBSTR(OFFICE_REB_ID, 2, 3) || '319' || SUBSTR(OFFICE_ID, 3, 1) AS
        FROM TBL_OFFICE
        WHERE
            STATUS = 'A'
    )
WHERE
    MENU_ID = 92;

================================================================================================================================    

SELECT MAX(
        TO_NUMBER (TRIM(app_track_no))
    )
FROM iebms.tbl_online_app
WHERE
    app_track_no NOT IN(
        SELECT app_track_no
        FROM (
                SELECT LENGTH(
                        TRANSLATE (
                            TRIM(app_track_no), ' 0123456789', ' '
                        )
                    ), app_track_no
                FROM iebms.tbl_online_app
                WHERE
                    LENGTH(
                        TRANSLATE (
                            TRIM(app_track_no), ' 0123456789', ' '
                        )
                    ) > 0
            )
    )
    AND app_date > '30-Apr-2019'