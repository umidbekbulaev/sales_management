--Cleansed DimProduct table-- 
SELECT 
	[ProductKey],
	[ProductAlternateKey] AS ProductItemCode,
    --[ProductSubcategoryKey],
    --[WeightUnitMeasureCode],
    --[SizeUnitMeasureCode],
    [EnglishProductName] AS [Product Name],
	ps.EnglishProductSubcategoryName AS	[Sub Category], -- Joined from Subcategory table
	pc.EnglishProductCategoryName AS [Product Category], -- Joined from Category table
    --[SpanishProductName],
    --[FrenchProductName],
    --[StandardCost],
    --[FinishedGoodsFlag],
    [Color] AS [Product Color],
    --[SafetyStockLevel],
    --[ReorderPoint],
     --[ListPrice],
     [Size] AS [Product Size],
     --[SizeRange],
     --[Weight],
     --[DaysToManufacture],
     [ProductLine] AS [Product Line],
     --[DealerPrice],
     --[Class],
     --[Style],
     [ModelName] AS [Product Model Name],
     --[LargePhoto],
     [EnglishDescription] AS [Product Description],
     --[FrenchDescription],
     --[ChineseDescription],
     --[ArabicDescription],
     --[HebrewDescription],
     --[ThaiDescription],
     --[GermanDescription],
     --[JapaneseDescription],
     --[TurkishDescription],
     --[StartDate],
     --[EndDate],
     ISNULL (p.Status, 'Outdated') AS [Product Status]
  FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory AS pc ON pc.ProductCategoryKey = ps.ProductCategoryKey
  ORDER BY ProductKey ASC