
CREATE VIEW V_DIM_Product
AS
SELECT P.[ProductID]
      ,P.[Name] AS ProductName
      ,P.[Color]
      ,P.[ProductLine]
      ,P.[Class]
      ,P.[Style]
      ,P.[ProductSubcategoryID]
	  ,PSC.[Name] AS ProductSubCategory
	  ,PSC.ProductCategoryID
	  ,PC.[Name] AS ProductCategory 
  FROM [AdventureWorks2019].[Production].[Product] P
  LEFT JOIN [AdventureWorks2019].[Production].ProductSubcategory PSC
  ON P.ProductSubcategoryID = PSC.ProductSubcategoryID
  LEFT JOIN [AdventureWorks2019].[Production].ProductCategory PC
  ON PSC.ProductCategoryID = PC.ProductCategoryID
