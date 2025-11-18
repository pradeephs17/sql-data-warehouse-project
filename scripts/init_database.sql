/*
=================================
Create Database and Schemas
=================================

Purpose:
    It creates a new Database named 'DataWarehouse' after checking if it alrready exists.
    If exists it is dropped and recreated. Additionally ,script create 3 Schemas 'bronze', 'silver', 'gold'
*/


USE master;
GO
  IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
  BEGIN
      ALTER DATABASE  DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
      DROP DATABASE DataWarehouse;
  END
CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;
GO
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
