WITH Hires
AS (
	SELECT 
		YEAR(HireDate) AS HireYear,
		BusinessEntityID
	FROM HumanResources.Employee
), HireByYear AS (
		SELECT
			HireYear,
			COUNT(*) AS HireCount
		FROM Hires
		GROUP BY HireYear
)

SELECT 
	H1.HireYear,
	H2.HireCount AS CurrentYearHireCount,
	H2.HireCount AS PriorYEarHireCount
FROM HireByYear H1
LEFT OUTER JOIN HireByYear H2
ON H1.HireYear = H2.HireYear + 1



WITH Products
AS (
	SELECT 
		YEAR(SellStartDate) AS SellYear,
		ProductID
	FROM Production.Product
)

SELECT
	SellYear,
	COUNT(*) AS ProductCount
FROM Products
GROUP BY SellYear





WITH MMonth
AS(
	SELECT
		TotalDue,
		MONTH(OrderDate) as MonthDate
	FROM Sales.SalesOrderHeader
)

SELECT 
	SUM(TotalDue) AS MnothlySales,
	MonthDate
FROM MMonth
GROUP BY MonthDate
ORDER BY 1
