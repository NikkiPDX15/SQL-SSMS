SELECT 
	P.Name, 
	P.ProductNumber, 
	P.ProductSubcategoryID,
	PS.Name AS [ProductionSubCat Name]
FROM Production.Product P 
INNER JOIN Production.ProductSubcategory PS
ON P.ProductSubcategoryID = PS.ProductSubcategoryID



SELECT 
	PS.Name AS ProductSubCatName,
	PC.Name AS ProductCatName
FROM Production.ProductSubcategory PS
INNER JOIN Production.ProductCategory PC
ON PS.ProductCategoryID = PC.ProductCategoryID


SELECT 
	P.FirstName, 
	P.LastName,
	E.EmailAddress,
	PP.PhoneNumber
FROM Person.Person P
INNER JOIN Person.EmailAddress E
ON P.BusinessEntityID = E.BusinessEntityID
INNER JOIN Person.PersonPhone PP
ON PP.BusinessEntityID = P.BusinessEntityID
