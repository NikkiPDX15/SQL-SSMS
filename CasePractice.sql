
SELECT 
	FirstName, LastName, EmailPromotion,
	CASE	
		WHEN EmailPromotion = 0 THEN 'Promotion 1'
		WHEN EmailPromotion = 1 THEN 'Promotion 2'
		WHEN EmailPromotion = 2 THEN 'Promotion 3'
		ELSE ' '
	END AS PromotionDescription
FROM Person.Person


SELECT 
	CASE	
		WHEN LEN(FirstName) >= 10 THEN 'Long Name'
		ELSE 'Short Name'
	END AS NameLength
FROM Person.Person



SELECT 
	CASE 
		WHEN Color IS NULL THEN 'No Color'
		ELSE Color
	END AS ColorNow
FROM Production.Product


SELECT 
	COALESCE(Color, 'No Color')
FROM Production.Product