SELECT *
FROM (
	SELECT BusinessEntityID, FirstName, LastName
	FROM Person.Person
	) AS PersonName

SELECT YEAR(OrderDate) AS OrderYear, COUNT(*) AS SalesCount
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = '2006'
GROUP BY YEAR(OrderDate)

SELECT OrderYear, COUNT(*) AS SalesCount
FROM (
	SELECT YEAR(OrderDate) AS OrderYear, SalesOrderID
	FROM Sales.SalesOrderHeader
	) AS SalesDetail
WHERE OrderYear = 2006
GROUP BY OrderYear


SELECT * 
FROM (
	SELECT 
		BusinessEntityID,
		NationalIDNumber,
		YEAR(BirthDate) AS BirthYear,
		YEAR (HireDate) AS HireYear
	FROM HumanResources.Employee
	) AS HR_Employee
WHERE HireYear>= 2004


SELECT * 
FROM (
	SELECT 
		BusinessEntityID,
		NationalIDNumber,
		BirthYear,
		YEAR (HireDate) AS HireYear
		FROM (
			SELECT 
				BusinessEntityID,
			NationalIDNumber,
			YEAR(BirthDate) AS BirthYear,
			HireDate
			FROM HumanResources.Employee
			) AS InnerNested
		) AS OuterNested
	

SELECT Sales_by_Year.SalesYear, Sales_by_Year.TotalRevenue, Hires_by_Year.NewHireCount
	COALESCE(Hire_by_Year.NewHireCount, 0) AS NewHireCount)
FROM (
	SELECT SalesYear, SUM(TotalDue) AS TotalRevenue
	FROM (
		SELECT Year(OrderDate) AS SalesYear, TotalDue
		FROM Sales.SalesOrderHeader
		) AS SalesDetails
	GROUP BY SalesYear
	) AS Sales_by_Year
LEFT OUTER JOIN (
	SELECT HireYear, COUNT(BusinessEntityID) AS NewHireCount
	FROM (
		SELECT YEAR(HireDate) AS HireYear, BusinessEntityID
		FROM HumanResources.Employee
		) AS EmployeeDetails
	GROUP BY HireYear
	) AS HireYear
ON Hires_by_Year.HireYear - Sales_by_Year.SalesYear
ORDER BY 1 
