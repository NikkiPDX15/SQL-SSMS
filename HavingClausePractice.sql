SELECT 
	TerritoryID,
	SUM(TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader
GROUP BY TerritoryID
HAVING SUM(TotalDue) > 10000000


SELECT 
	ST.Name,
	SUM(TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.SalesTerritory ST
ON ST.TerritoryID = SOH.TerritoryID
GROUP BY ST.Name
HAVING SUM(TotalDue) > 10000000


SELECT 
	Color,
	COUNT(*) As [CountAmount]
FROM Production.Product
WHERE Color IS NOT NULL
GROUP BY Color
HAVING COUNT(*) >20


SELECT 
	PP.Name AS [Product Name],
	SUM(SD.OrderQty) AS [Product Count]
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.SalesOrderDetail SD
ON SD.SalesOrderDetailID = SOH.SalesOrderID
INNER JOIN Production.Product PP
ON PP.ProductID = SD.ProductID
WHERE SOH.OrderDate BETWEEN '1/1/2006' AND '12/31/2006'
GROUP BY PP.Name
HAVING SUM(SD.OrderQty) >= 200

SELECT 
	P.FirstName,
	P.LastName,
	COUNT(*) AS OrdersPlaced
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.Customer C 
ON C.CustomerID = SOH.CustomerID
INNER JOIN Person.Person P
ON P.BusinessEntityID = C.PersonID
WHERE OrderDate BETWEEN '7/1/2005' AND '12/31/2006'
GROUP BY P.FirstName, P.LastName
HAVING COUNT(*) >= 6
ORDER BY OrdersPlaced DESC






