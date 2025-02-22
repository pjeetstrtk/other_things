SELECT TARIFF_GRP_NAME AS Class, SUM(CEIL(NVL(SANCTIONED_LOAD,0))) AS JUNE_22
FROM TBL_BILL b, TBL_TARIFF_GROUP T WHERE B.TARIFF_GRP_CODE=T.TARIFF_GRP_CODE
AND BILL_PERIOD=202206 AND tariff_code NOT IN (51,52)
GROUP BY t.TARIFF_GRP_CODE, BILL_PERIOD, TARIFF_GRP_NAME

UNION ALL

SELECT TARIFF_GRP_NAME||' - Office Use' AS Class, SUM(CEIL(NVL(SANCTIONED_LOAD,0))) AS JUNE_22
FROM TBL_BILL b, TBL_TARIFF_GROUP T WHERE B.TARIFF_GRP_CODE=T.TARIFF_GRP_CODE
AND BILL_PERIOD=202206 AND t.tariff_grp_code <> 11 AND tariff_code IN (51,52)
GROUP BY t.TARIFF_GRP_CODE, BILL_PERIOD, TARIFF_GRP_NAME

ORDER BY class