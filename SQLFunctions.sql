SELECT 'Brewster', LEFT('Brewster', 4)

SELECT LEFT(LastName, 5)
FROM Person.Person

SELECT RIGHT(LastName, 5) AS [Last Five Characters]
FROM Person.Person

SELECT 'Brewster', SUBSTRING('Brewster', 2, 4)

SELECT TOP 100
	FirstName,
	SUBSTRING(FirstName, 3,5)
FROM Person.Person

SELECT CHARINDEX('r', 'Brewster')
SELECT CHARINDEX('r', 'Brewster', 3)

SELECT LTRIM('        This is a test'), RTRIM('This is a Test       ')

SELECT 'brewster', UPPER('brewster'), LOWER('BREWSTER')


SELECT '         T-SQL Class', LTRIM('         T-SQL Class'),
	LEN(LTRIM('         T-SQL Class'))


