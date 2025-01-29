SELECT
    MAX(TO_NUMBER (TRIM(app_track_no)))
FROM
    iebms.TBL_ONLINE_APP
WHERE
    app_track_no NOT IN (
        SELECT
            app_track_no
        FROM
            (
                SELECT
                    LENGTH (TRANSLATE(TRIM(app_track_no), ' 0123456789', ' ')),
                    app_track_no
                FROM
                    iebms.TBL_ONLINE_APP
                WHERE
                    LENGTH (TRANSLATE(TRIM(app_track_no), ' 0123456789', ' ')) > 0
            )
    )
    AND app_date > '30-Apr-2019'



   