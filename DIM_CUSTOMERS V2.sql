-- clean DIM_CUSTOMERS TABLE
SELECT C.[CustomerKey] AS CUSTOMERKEY,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      C.[FirstName] AS FIRSTNAME,
      --,[MiddleName]
      C.[LastName]	AS LASTNAME,

-- COMBINE FIRST NAME AND LAST NAME >>> FULL NAME
	C.FirstName + '' + C.LastName AS FULLNAME,

      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]

-- SET LẠI GIỚI TÍNH VIẾT FULL
	CASE C.Gender WHEN 'M' THEN 'MALE' WHEN 'F' THEN 'FEMALE' END AS GENDER,
	-- C.GENDER AS TEST,

      --,[Gender]
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
      C.[DateFirstPurchase] AS DATEFIRSTPURCHASE,
      --,[CommuteDistance]
	 G.CITY AS [CUSTOMER CITY] -- JOINED IN CUSTOMER CITY FROM GEOGRAPHY TABLE
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] AS C
LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] AS G ON G.GeographyKey = C.GeographyKey
ORDER BY CUSTOMERKEY ASC -- ORDER BY ASCENDING TĂNG DẦN
