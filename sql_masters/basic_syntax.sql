=============================================
CREATE DATABASE databasename;
DROP DATABASE databasename;
==============================================
--------------back up-----------------------
BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak';
=================================================
--------------------create table----------------------------------
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

CREATE TABLE new_table_name AS
    SELECT column1, column2,...
    FROM existing_table_name
    WHERE ....;

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT UC_Person UNIQUE (ID,LastName)
);

============================================================

-----The TRUNCATE TABLE statement is used to delete the data inside a table,but not the table itself.----------------------


TRUNCATE TABLE table_name;

===========================================================
-------------------alter or modify a table or column--------------------
ALTER TABLE Customers
ADD Email varchar(255);

ALTER TABLE Customers
DROP COLUMN Email;

ALTER TABLE table_name
RENAME COLUMN old_name to new_name;

ALTER TABLE table_name
MODIFY column_name datatype;

===================================================
-----------------------alter table-----------------------

ALTER TABLE Persons
ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);

ALTER TABLE Persons
DROP CONSTRAINT UC_Person;

==================================================================
-------------------------------- insert into --------------------------------
INSERT INTO table2
SELECT * FROM table1
WHERE condition;

INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

INSERT INTO delete_book_list (book_code)
VALUES (value1, value2, value3, ...);
