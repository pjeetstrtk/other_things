connect system/a


CREATE TABLESPACE TSP_IEBMS
DATAFILE 	'D:\PROCIS_TSP\TSP_IEBMS.DBF' SIZE 20000M AUTOEXTEND ON NEXT 50 M MAXSIZE UNLIMITED;



create temporary tablespace TSP_IEBMS_temp  tempfile 'D:\PROCIS_TSP\TSP_IEBMS.1'  size 2000m     autoextend on next 50m;

CREATE TABLESPACE TSP_LEDGER
DATAFILE 	'D:\PROCIS_TSP\TSP_LEDGER.DBF' SIZE 10000M AUTOEXTEND ON NEXT 50 M MAXSIZE UNLIMITED;
CREATE TABLESPACE TSP_BILL
DATAFILE 	'D:\PROCIS_TSP\TSP_BILL.DBF' SIZE 10000M AUTOEXTEND ON NEXT 50 M MAXSIZE UNLIMITED;

CREATE TABLESPACE TSP_BILL_COLL
DATAFILE 	'D:\PROCIS_TSP\TSP_BILL_COLL.DBF' SIZE 8000M AUTOEXTEND ON NEXT 50 M MAXSIZE UNLIMITED;

CREATE TABLESPACE TSP_BILL_ARREAR
DATAFILE 	'D:\PROCIS_TSP\TSP_BILL_ARRER.DBF' SIZE 3000M AUTOEXTEND ON NEXT 50 M MAXSIZE UNLIMITED;
