SELECT OrderYear, COUNT(*) AS SalesCount
FROM (
	SELECT YEAR(OrderDate) AS OrderYear, SalesOrderID
	FROM Sales.SalesOrderHeader
	) AS SalesDetails
WHERE OrderYear = '2006'
GROUP BY OrderYear



WITH SalesDetails 
AS (
	SELECT YEAR(OrderDate) AS OrderYear, SalesOrderID
	FROM Sales.SalesOrderHeader
)
SELECT OrderYear, COUNT(*) AS SalesCount
FROM SalesDetails
WHERE OrderYear = '2006'
GROUP BY OrderYear



SELECT *
FROM (
	SELECT BusinessEntityID, NationalIDNumber, 
	YEAR(BirthDate) AS BirthYear,
	YEAR(HireDate) AS HiredYear
	FROM HumanResources.Employee
	) AS HR_Emp
WHERE HiredYear >= 2004
GO 


WITH HR_EMP
AS (
	SELECT BusinessEntityID, NationalIDNumber, 
	YEAR(BirthDate) AS BirthYear,
	YEAR(HireDate) AS HiredYear
	FROM HumanResources.Employee
)

SELECT * 
FROM HR_Emp

------

WITH SalesByYear
AS (
	SELECT YEAR(OrderDate) AS SalesYear,
	SUM(TotalDue) AS TotalSales
	FROM Sales.SalesOrderDetail
	GROUP BY YEAR(OrderDate)
)

SELECT
	CurrentYearSales.SalesYear,
	CurrentYearSales.TotalSales AS AnnualSales,
	PriorYearSales.TotalSales AS PriorYearSales
FROM SalesByYear CurrentYearSales
LEFT OUTER JOIN SalesByYear AS PriorYearSales
ON CurrentYearSales.SalesYear - 1 - PrioYearSales.SalesYear
ORDER BY 1



WITH S1
AS (
	SELECT YEAR(OrderDate) AS SalesYear, SalesOrderId, TotalDue
	FROM Sales.SalesOrderHeader 
), 
S2 AS (
	SELECT SalesYear, COUNT(SalesOrderID) AS SalesCount,
		SUM(TotalDue) AS AnnualSales
	FROM S1
	GROUP BY SalesYear
)


SELECT SalesYear, SalesCount, AnnualSales
FROM S2
WHERE SalesCount > 5000
ORDER BY 1 


