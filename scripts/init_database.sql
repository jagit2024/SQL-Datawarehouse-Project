/* 
=======================================================================
Create Database and Schemas
=======================================================================
Script objective: 
  This script creates a new database named "DataWarehouse" after checking if it already exists. 
  IF the database exists, it is dropped
  and recreated. Also, the script sets up three schemas within the database: 'bronze', 'silver', 'gold'.

Warning: 
  Running this script will drop the entire 'DataWarehouse' Database if it exists.
  All data in the database will be permanently deleted. Proceed with caution and ensure you have proper backups before running the script.
*/

USE master;
GO

  -- Drops and recreates the 'DataWarehouse' database
  IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
  BEGIN

	AlTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
	END;
  GO

  -- create the 'DataWarehouse' Database
	CREATE DATABASE DataWarehouse;
  GO

	USE DataWarehouse;
  -- creates the schemas: bronze, silver, gold.
  GO

	CREATE SCHEMA bronze;

	GO

	CREATE SCHEMA silver;
	GO

	CREATE SCHEMA gold;
	GO
