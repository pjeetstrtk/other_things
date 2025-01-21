Sub meter no Meter Rent 
jmenu 208 = "5UB" + (OFFICE_REB_ID.Substring(2)) x 3) + (OFFICE_REB_ID x 4) + "2"


10 4201=5UB 12603 416804 2
   		5UB 12603 416804 2
   		5UB 12612 416816 2

SELECT 
        '5UB'|| 
        SUBSTR(OFFICE_REB_ID, 3, 4) * 3|| 
        OFFICE_REB_ID * 4|| 
        '2'
FROM 
    TBL_OFFICE
WHERE 
    status = 'A';
	

UPDATE TBL_JMENUS jm
SET jm.menu_option = 
    '5UB' || 
    TO_CHAR(SUBSTR(
        (SELECT o.OFFICE_REB_ID 
         FROM TBL_OFFICE o 
         WHERE o.status = 'A' 
         AND ROWNUM = 1), 
        3, 4) * 3) || 
    TO_CHAR(
        (SELECT o.OFFICE_REB_ID 
         FROM TBL_OFFICE o 
         WHERE o.status = 'A' 
         AND ROWNUM = 1) * 4) || 
    '2'
WHERE jm.menu_id = 208;



