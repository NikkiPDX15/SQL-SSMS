SELECT *
FROM HumanResources.vEmployee
WHERE FirstName = 'Chris' OR FirstName = 'Steve'


SELECT *
FROM HumanResources.vEmployee
WHERE FirstName IN ('Chris','Steve','Thomas')


SELECT * 
FROM Sales.vStoreWithDemographics
WHERE AnnualSales BETWEEN 1000000 AND 2000000


SELECT *
FROM HumanResources.vEmployee
WHERE FirstName LIKE 'Mi%' 

SELECT *
FROM HumanResources.vEmployee
WHERE FirstName LIKE 'Mi_' 

SELECT *
FROM HumanResources.vEmployee
WHERE FirstName LIKE '%s' 

SELECT *
FROM HumanResources.vEmployee
WHERE FirstName LIKE '%h%' 


SELECT *
FROM HumanResources.vEmployee
WHERE FirstName LIKE 'D[a,o]n' 

