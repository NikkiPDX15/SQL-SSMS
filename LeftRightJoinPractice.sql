SELECT 
	SP.BusinessEntityID,
	SP.SalesYTD,
	T.Name AS [TerritoryName]
FROM Sales.SalesPerson SP
LEFT OUTER JOIN Sales.SalesTerritory T
ON T.TerritoryID = SP.TerritoryID


SELECT 
	SP.BusinessEntityID,
	SP.SalesYTD,
	T.Name AS [TerritoryName],
	PP.FirstName,
	PP.LastName
FROM Sales.SalesPerson SP
LEFT OUTER JOIN Sales.SalesTerritory T
ON T.TerritoryID = SP.TerritoryID
INNER JOIN Person.Person PP
ON PP.BusinessEntityID = SP.BusinessEntityID
WHERE T.Name IN ('Northeast', 'Centeral')


SELECT
	PP.Name AS [ProductName],
	PP.ListPrice,
	PS.Name AS [ProductSubCat],
	C.ProductCategoryID AS [ProductCatName]
FROM Production.Product PP
LEFT OUTER JOIN Production.ProductSubcategory PS
ON PS.ProductSubcategoryID = PP.ProductSubcategoryID
LEFT OUTER JOIN Production.ProductCategory C 
ON C.ProductCategoryID = PS.ProductCategoryID
ORDER BY 4 DESC,  3 ASC
