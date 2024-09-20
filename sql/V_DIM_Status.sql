


SELECT 1 StatusId, [dbo].[ufnGetSalesOrderStatusText](1)
UNION ALL
SELECT 2 StatusId, [dbo].[ufnGetSalesOrderStatusText](2)
UNION ALL
SELECT 3 StatusId, [dbo].[ufnGetSalesOrderStatusText](3)

CREATE VIEW V_DIM_Status
AS
WITH CTE 
AS
(
SELECT 1 StatusId, [dbo].[ufnGetSalesOrderStatusText](1) AS StatusName
UNION ALL
SELECT StatusId + 1, [dbo].[ufnGetSalesOrderStatusText](StatusId + 1) AS StatusName
FROM CTE
WHERE StatusId < 6
)
SELECT * 
FROM CTE


