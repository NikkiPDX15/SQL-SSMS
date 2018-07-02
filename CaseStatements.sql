SELECT ProductID, ListPrice,
	CASE 
		WHEN ListPrice > 100 THEN 'Expensive Product'
		ELSE 'Inexpensive Product'
	END AS ProductPriceClass

FROM Production.Product
WHERE ListPrice <> 0


SELECT ProductID, ListPrice,
	CASE 
		WHEN ListPrice > 100 THEN 'Expensive Product'
		WHEN ListPrice <= 100 THEN 'Inexpensive Product'
	END AS ProductPriceClass

FROM Production.Product
WHERE ListPrice <> 0


SELECT 
	PD.BusinessEntityID,
	P.FirstName,
	P.LastName,
	PD.Gender,
	CASE 
		WHEN PD.Gender = 'M' THEN 'Male'
		WHEN PD.Gender = 'F' THEN 'Female'
		ELSE 'No Gender Specified'
	END AS GenderValue
FROM Sales.vPersonDemographics PD
INNER JOIN Person.Person P
ON P.BusinessEntityID = PD.BusinessEntityID


SELECT 
	MiddleName,
	COALESCE(MiddleName, ' ' ) AS CoalescedMiddleName,
	CASE
		WHEN MiddleName IS NULL THEN ' ' 
		ELSE MiddleName
	END AS CaseMiddleName
FROM Person.Person


WITH CustomerSales
AS(
	SELECT 
		P.BusinessEntityID,
		SUM(SOH.TotalDue) AS TotalSalesAmount
	FROM Sales.SalesOrderHeader SOH
	INNER JOIN Sales.Customer SC
	ON SC.CustomerID = SOH.CustomerID
	INNER JOIN Person.Person P 
	ON P.BusinessEntityID = SC.PersonID
	GROUP BY P.BusinessEntityID
),
CustomerSalesRange AS (
	SELECT
		P.FirstName + ' ' + P.LastName AS CustomerName,
		CASE
			WHEN CS.TotalSalesAmount BETWEEN 0 AND 149.99 THEN 'Under $150'
			WHEN CS.TotalSalesAmount BETWEEN 150 AND 499.99 THEN '$150 - $499.99'
			WHEN CS.TotalSalesAmount BETWEEN 500 AND 999.99 THEN '$500 - $999.99'
			WHEN CS.TotalSalesAmount BETWEEN 1000 AND 4999.99 THEN '$1000 - $4999.99'
			WHEN CS.TotalSalesAmount BETWEEN 5000 AND 1499.99 THEN '$5000 - $1499.99'
			ELSE 'Over $15,000'
		END AS SalesRange
	FROM CustomerSales CS
	INNER JOIN Person.Person P 
	ON P.BusinessEntityID = CS.BusinessEntityID
)

SELECT SalesRange, COUNT(*) AS [Customers in Range]
FROM CustomerSalesRange
GROUP BY SalesRange
ORDER BY 
	CASE 
		WHEN SalesRange = 'Under $ 150' THEN 1
		WHEN SalesRange = '$150 - $499.99' THEN 2
		WHEN SalesRange = '$500 - $999.99' THEN 3 
		WHEN SalesRange = '$1000 - $4999.99' THEN 4
		WHEN SalesRange = '$5000 - $1499.99' THEN 5
		ELSE 6
	END
