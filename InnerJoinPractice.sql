SELECT 
	P.FirstName,
	P.LastName,
	E.PasswordHash
From Person.Person P
INNER JOIN Person.[Password] E
ON E.BusinessEntityID = P.BusinessEntityID 



SELECT
	P.BusinessEntityID,
	P.NationalIDNumber,
	P.JobTitle,
	E.DepartmentID,
	E.StartDate,
	E.EndDate
FROM HumanResources.Employee P
INNER JOIN HumanResources.EmployeeDepartmentHistory E
ON P.BusinessEntityID = E.BusinessEntityID


SELECT 
	P.FirstName,
	P.LastName,
	E.PasswordHash,
	F.EmailAddress
From Person.Person P
INNER JOIN Person.[Password] E
ON E.BusinessEntityID = P.BusinessEntityID 
INNER JOIN Person.EmailAddress F 
ON E.BusinessEntityID = P.BusinessEntityID 


SELECT
	B.Title,
	B.ISBN,
	A.AuthorName
FROM BookAuthor BA
INNER JOIN Book B
ON B.BookID = BA.BookID
INNER JOIN Author A
ON A.AuthorID = BA.AuthorID


SELECT
	B.Title,
	B.ISBN,
	A.AuthorName,
	P.PublisherName
FROM BookAuthor BA
INNER JOIN Book B
ON B.BookID = BA.BookID
INNER JOIN Author A
ON A.AuthorID = BA.AuthorID
INNER JOIN Publisher P
ON P.PublisherID = B.PublisherID