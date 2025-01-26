select * from sys.tables

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

select * from [dbo].[source_cars_data]

CREATE TABLE [dbo].[WATHER_TABLE]
(
last_load varchar (2000),
)

select * from [dbo].[WATHER_TABLE]

-- The minimum date will be displayed, indicating when sales started in our company(First Date of our sales).
select MIN(Date_ID) from [dbo].[source_cars_data];
--output Sales started date is - 'DT00000'

-- BUT we will consider from '0' this is the good approach
INSERT INTO [dbo].[WATHER_TABLE] 
VALUES ('DT00000');

-- same output will be come, and now we got it know our start sales date. 
Select Count (*) from [dbo].[source_cars_data] where date_id > 'DT00000';
select count (*) from [dbo].[source_cars_data]


CREATE PROCEDURE updatewatermark_table
    @lastload Varchar(200)
AS 
BEGIN
 --start the transaction

   BEGIN TRANSACTION;

   --Update the incremental column in the table 
   UPDATE [dbo].[WATHER_TABLE] 
   SET last_load = @lastload
   commit transaction;
   END;
