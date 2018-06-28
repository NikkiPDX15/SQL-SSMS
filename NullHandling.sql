SELECT TOP 100
	FirstName, COALESCE(MiddleName, '') AS MiddleName, LastName
FROM Person.Person

SELECT BillToAddressID, ShipToAddressID,
	NULLIF(BillToAddressID, ShipToAddressID)
FROM Sales.SalesOrderHeader

SELECT BillToAddressID, ShipToAddressID,
	COALESCE(NULLIF(BillToAddressID, ShipToAddressID), 1)
FROM Sales.SalesOrderHeader



SELECT TOP 100
	COALESCE(Title, 'No Title Listed') AS Title
FROM Person.Person

SELECT TOP 100
	COALESCE(MiddleName, 'No Middle Name Listed') AS MiddleName
FROM Person.Person

SELECT
	COALESCE(FirstName + ' ' + MiddleName + ' ' + LastName, 
		FirstName + ' ' + LastName) AS FullName
FROM Person.Person

SELECT 
	NULLIF(MakeFlag, FinishedGoodsFlag)
FROM Production.Product