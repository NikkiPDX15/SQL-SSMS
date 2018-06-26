SELECT MAX(TotalDue)
FROM Sales.SalesOrderHeader

SELECT MIN(TotalDue)
FROM Sales.SalesOrderHeader

SELECT TotalDue
FROM Sales.SalesOrderHeader
ORDER BY TotalDue DESC

SELECT TotalDue
FROM Sales.SalesOrderHeader
ORDER BY TotalDue 


SELECT COUNT(*)
FROM Sales.SalesOrderHeader

SELECT COUNT(SalesPersonID)
FROM Sales.SalesOrderHeader

SELECT Count(DISTINCT FirstName)
FROM Person.Person

SELECT AVG(TotalDue)
FROM Sales.SalesOrderHeader

SELECT SUM(TotalDue)
FROM Sales.SalesOrderHeader

SELECT SUM(TotalDue)
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '1/1/2006' AND '12/31/2006'

