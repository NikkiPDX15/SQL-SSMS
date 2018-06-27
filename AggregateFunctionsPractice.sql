SELECT COUNT(*)
FROM Person.Person

SELECT COUNT(MiddleName)
FROM Person.Person

SELECT AVG(StandardCost)
FROM Production.Product
WHERE StandardCost > 0

SELECT AVG(Freight)
FROM Sales.SalesOrderHeader
WHERE TerritoryID = '4'

SELECT MAX(ListPrice)
FROM Production.Product


SELECT SUM(PP.ListPrice*PPI.Quantity)
FROM Production.Product PP
INNER JOIN Production.ProductInventory PPI
ON PPI.ProductID = PP.ProductID
WHERE PP.ListPrice > 0


