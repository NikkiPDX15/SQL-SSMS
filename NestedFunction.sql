SELECT LEN(LTRIM('         This is a sample text'))

SELECT 
	[NAME],
	SUBSTRING([NAME], 3,7) AS Step_1,
	UPPER(SUBSTRING([NAME], 3,7)) AS Step_2,
	REPLACE(UPPER(SUBSTRING([NAME], 3,7)), 'E', 'x') AS Step_3
FROM Production.Product

SELECT LEFT('This is a basic string', 8)
SELECT RIGHT('This is another string', 6)

SELECT
	CHARINDEX('e', Name)
FROM Production.Product

SELECT
	SUBSTRING(Name, 3, 4)
FROM Sales.SalesTerritory

SELECT 'This is a slightly longer string',
	RIGHT('This is a slightly longer string', 8),
	LEFT(RIGHT('This is a slightly longer string', 8), 4)

SELECT
	LEFT(FirstName, CHARINDEX('e', FirstName,0))
FROM Person.Person
WHERE LEFT(FirstNAme, CHARINDEX('e', FirstName,0)) <> ''