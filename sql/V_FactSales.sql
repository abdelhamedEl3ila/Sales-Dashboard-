

CREATE VIEW V_FactSales
AS
SELECT SOD.[SalesOrderID]
      ,SOD.[SalesOrderDetailID]
      ,SOD.[OrderQty]
      ,SOD.[ProductID]
      ,SOD.[UnitPrice]
      ,SOD.[UnitPriceDiscount]
      ,SOD.[LineTotal]
	  ,CAST(FORMAT(SOH.[OrderDate],'yyyyMMdd') AS INT) AS [OrderDate]
	  ,CAST(FORMAT(SOH.[DueDate],'yyyyMMdd') AS INT) AS [DueDate]
	  ,CAST(FORMAT(SOH.[ShipDate],'yyyyMMdd') AS INT) AS [ShipDate]
	  ,SOH.[Status]
      ,SOH.[OnlineOrderFlag]
	  ,SOH.[SalesPersonID]
      ,SOH.[TerritoryID]
      ,SOH.[ShipMethodID]
	  ,(SOD.LineTotal * SOH.Freight) / SOH.SubTotal [Freight]
	  ,(SOD.LineTotal * SOH.TaxAmt) / SOH.SubTotal [Tax]
  FROM [AdventureWorks2019].[Sales].[SalesOrderDetail] SOD WITH(NOLOCK)
  LEFT JOIN [AdventureWorks2019].[Sales].[SalesOrderHeader] SOH WITH(NOLOCK)
  ON SOD.SalesOrderID = SOH.SalesOrderID