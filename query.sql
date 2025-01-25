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
