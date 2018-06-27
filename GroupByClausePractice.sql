SELECT
	PersonType,
	COUNT(*) AS PersonCount
FROM Person.Person
GROUP BY PersonType


SELECT 
	Color,
	Count(*) AS [Product Count]
FROM Production.Product
WHERE Color IN ('Black', 'Red')
GROUP BY Color


SELECT
	TerritoryID,
	COUNT(*) AS [SalesCount]
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '1/1/2005' AND '12/31/2006'
GROUP BY TerritoryID 
ORDER BY 2 DESC



SELECT
	ST.Name AS [TerritoryName],
	COUNT(*) AS [SalesCount]
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.SalesTerritory ST
ON ST.TerritoryID = SOH.TerritoryID
WHERE OrderDate BETWEEN '1/1/2005' AND '12/31/2006'
GROUP BY ST.Name 
ORDER BY 2 DESC




