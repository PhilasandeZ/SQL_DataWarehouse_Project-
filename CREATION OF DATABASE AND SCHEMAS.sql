---CREATING A Database

CREATE DATABASE SQL_DataWarehouse_Project;

---Creating Schemas

USE SQL_DataWarehouse_Project;
GO

IF NOT EXISTS (
SELECT 1
FROM sys.schemas
WHERE name= 'bronze'
)
BEGIN
EXEC('CREATE SCHEMA bronze');
END
GO


--- SILVER AND GOLD SCHEMAS

USE SQL_DataWarehouse_Project;
GO

IF NOT EXISTS (
SELECT 1
FROM sys.schemas
WHERE name= 'silver'
)
BEGIN
EXEC('CREATE SCHEMA silver');
END
GO

IF NOT EXISTS (
SELECT 1
FROM sys.schemas
WHERE name= 'gold'
)
BEGIN
EXEC('CREATE SCHEMA gold');
END
GO

SELECT name
FROM sys.schemas
WHERE name IN ('bronze', 'silver', 'gold');