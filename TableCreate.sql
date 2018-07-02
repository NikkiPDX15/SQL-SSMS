CREATE TABLE TestTable(
	Column_A VARCHAR(100), 
	Column_B INT,
	Column_C DATETIME,
	Column_D VARCHAR(10)
)

INSERT INTO TestTable
VALUES ('Test Value', 7, GETDATE(), 'Testing'),
		('Test Value2', 17, DATEADD(DAY, -1, GETDATE()), 'Testing2')

SELECT * FROM TestTable


INSERT INTO TestTable
SELECT FirstName, BusinessEntityID, GETDATE(), PhoneNumberType
FROM HumanResources.vEmployee

SELECT * FROM TestTable



UPDATE TestTable 
	SET Column_A = 1234
		WHERE Column_A = 'Test Value'