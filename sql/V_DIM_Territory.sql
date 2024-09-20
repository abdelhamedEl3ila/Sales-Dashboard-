


CREATE VIEW V_DIM_Territory
AS
SELECT [TerritoryID]
      ,[Name] AS TerritoryName
      ,[CountryRegionCode]
      ,[Group]
  FROM [AdventureWorks2019].[Sales].[SalesTerritory]