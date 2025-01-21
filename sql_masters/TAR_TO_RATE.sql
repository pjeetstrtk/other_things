create table iebms.tbl_rates as
SELECT * FROM TBL_TARIFF_CHARGES




alter table  iebms.tbl_rates add constraint rates_pk primary key (TARIFF_CHARGE_ID)




SELECT TARIFF_CHARGE_ID, COUNT(*) FROM iebms.tbl_rates GROUP BY TARIFF_CHARGE_ID
HAVING COUNT(*)>1
