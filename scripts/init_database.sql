-- Switch to the master database
USE master;
GO

-- Create the Data Warehouse database
CREATE DATABASE Datawarehouse;
GO

-- Switch to the new database
USE Datawarehouse;
GO

-- Create schemas for different data layers
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
