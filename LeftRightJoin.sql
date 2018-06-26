SELECT P.Name, P.ProductNumber, PS.Name AS ProductSubCatName
FROM Production.Product P 
LEFT OUTER JOIN Production.ProductSubCategory PS
ON PS.ProductSubcategoryID = P.ProductSubcategoryID

SELECT P.Name, P.ProductNumber, PS.Name AS ProductSubCatName
FROM Production.ProductSubcategory PS
RIGHT OUTER JOIN Production.Product P 
ON P.ProductSubcategoryID = PS.ProductSubcategoryID


SELECT 
	P.FirstName, P.LastName,
	SOH.SalesOrderNumber,
	SOH.TotalDue AS SalesAmount,
	T.Name AS TerritoryName
FROM Sales.SalesOrderHeader SOH
LEFT OUTER JOIN Sales.SalesPerson SP
ON SP.BusinessEntityID = SOH.SalesPersonID
LEFT OUTER JOIN HumanResources.Employee E
On E.BusinessEntityID = SP.BusinessEntityID
LEFT OUTER JOIN Person.Person P
ON P.BusinessEntityID = E.BusinessEntityID
LEFT OUTER JOIN Sales.SalesTerritory T 
ON T.TerritoryID = SOH.TerritoryID



SELECT 
	P.FirstName, P.LastName,
	SOH.SalesOrderNumber,
	SOH.TotalDue AS SalesAmount,
	T.Name AS TerritoryName
FROM Sales.SalesOrderHeader SOH
LEFT OUTER JOIN Sales.SalesPerson SP
ON SP.BusinessEntityID = SOH.SalesPersonID
LEFT OUTER JOIN HumanResources.Employee E
On E.BusinessEntityID = SP.BusinessEntityID
LEFT OUTER JOIN Person.Person P
ON P.BusinessEntityID = E.BusinessEntityID
LEFT OUTER JOIN Sales.SalesTerritory T 
ON T.TerritoryID = SOH.TerritoryID
WHERE T.Name = 'NorthWest'
ORDER BY TotalDue DESC