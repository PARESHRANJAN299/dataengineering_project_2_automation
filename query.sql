select * from sys.tables
--Step -1 
--We have created an empty table where data will come from various websites and be stored in our SQL database.
-- Create a table
create table source_cars_data(
Branch_ID VARCHAR (200),
Dealer_ID VARCHAR (200),
Model_ID VARCHAR (200),
Revenue BIGINT,
Units_Sold	 BIGINT,
Date_ID VARCHAR (200),
Day INT,
Month INT,
Year INT,
Branch_Name VARCHAR (250),
Dealer_Name	VARCHAR (250),
Product_Name VARCHAR (250)
)


-----------------------------------------------------------------------------------------------------------------

CREATE TABLE WATHER_TABLE
(
LAST_LOAD VARCHAR(200),
)

select max(DATE_ID) from source_cars_data;
select * from WATHER_TABLE
INSERT INTO WATHER_TABLE
VALUES ('DT00000')

SELECT COUNT (*) FROM source_cars_data WHERE DATE_ID > 'DT00000'

SELECT COUNT (*) FROM source_cars_data
drop PROCEDURE updateWathermarkTable
CREATE PROCEDURE updateWathermarkTable
  @lastload varchar (200)

as 
begin
--start the transation
  begin transaction;

--update the incremental coulmn in the table
update wather_table 
set last_load = @lastload
commit transaction;
END;
