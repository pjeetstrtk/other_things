206= "7" + (OFFICE_REB_ID.Substring(3) x 6) + "8" + (OFFICE_REB_ID x 4) + "6";

FOR rebid 104505 it should be 7303084180206








UPDATE TBL_JMENUS 
SET MENU_OPTION = '7' || (TO_CHAR(office_reb_id, 1, 3) * 6) || '8' || (SUBSTR(office_reb_id, 1, 6) * 4) || '6' 
WHERE MENU_ID = 206;

UPDATE IEBMS.TBL_JMENUS
   SET (MENU_OPTION='7'||(SELECT (SUBSTR(office_reb_id, 1, 3) * 6) FROM TBL_OFFICE WHERE STATUS='A')||'8'||(SELECT (SUBSTR(office_reb_id, 1, 6) * 4) FROM TBL_OFFICE WHERE STATUS='A')*4||'6')
 WHERE MENU_ID=206
   

UPDATE IEBMS.TBL_JMENUS
SET MENU_OPTION = '7' || 
    (SELECT SUBSTR(office_reb_id, 1, 3) * 6 FROM TBL_OFFICE WHERE STATUS = 'A' AND ROWNUM = 1) || 
    '8' || 
    (SELECT SUBSTR(office_reb_id, 1, 6) * 4 FROM TBL_OFFICE WHERE STATUS = 'A' AND ROWNUM = 1) || 
    '6'
WHERE MENU_ID = 206;
