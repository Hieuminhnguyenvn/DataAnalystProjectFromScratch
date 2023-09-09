-- CLEAN DIM_PRODUCT TABLE..............
SELECT P.[ProductKey]
      ,P.[ProductAlternateKey] AS [PRODUC TITEM CODE]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,P.[EnglishProductName] AS [PRODUCT NAME]
	  ,PS.EnglishProductSubcategoryName AS [SUB CATEGORY]		-- JOIN IN FROM SUB CATEGORY TABLE
	  ,PC.EnglishProductCategoryName AS [PRODUCT CATEGORY]		-- JOIN IN FROM CATEGORY TABLE 
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
     --,[FinishedGoodsFlag]
      ,P.[Color] AS [PRODUCT COLOR]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,P.[Size] AS [PRODUCT SIZE]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,P.[ProductLine] AS [PRODUCT LINE]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,P.[ModelName] AS [PRODUCT MODEL NAME]
      --,[LargePhoto]
      ,P.[EnglishDescription] AS [PRODUCT DESCRIPTION]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
     -- ,[StartDate]
      --,[EndDate]
	  --,P.Status AS EXAMPLE
      , ISNULL (P.Status, 'OUTDATE') AS [PRODUCT STATUS]   -- CHƯA RÕ MỤC ĐÍCH (CHECK LÀ NULL THÌ LÀ OUTDATE , NOT NULL THÌ TRẢ VỀ KQ CURRENT)
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] AS P
  LEFT JOIN DimProductSubcategory AS PS ON PS.ProductSubcategoryKey = P.ProductSubcategoryKey
  LEFT JOIN DimProductCategory AS PC ON PC.ProductCategoryKey = PS.ProductCategoryKey
  ORDER BY P.ProductKey ASC