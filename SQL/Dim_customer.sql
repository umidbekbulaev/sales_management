--Cleansed DimCustomer table --
SELECT CustomerKey,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      [FirstName] AS [First Name],
      --,[MiddleName]
      [LastName] AS [Last Name],
	  c.FirstName + ' ' + c.LastName AS [Full Name], --combined first and last name
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      CASE [Gender] WHEN 'M' THEN 'Male'
					WHEN 'F' THEN 'Feemale' END AS Gender,
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      [DateFirstPurchase],
      --,[CommuteDistance],
	  g.City AS [Customer City] -- Joined in customer city from Geography table
	  FROM dbo.DimCustomer AS c
 LEFT JOIN dbo.DimGeography as g ON g.GeographyKey = c.GeographyKey
 ORDER BY CustomerKey ASC