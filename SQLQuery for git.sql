/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Country]
      ,[Product]
      ,[Units_Sold]
  FROM [Portfolio_project1].[dbo].[Some_View]