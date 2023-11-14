
select *
from dbo.[Kevin Cookie Company Financials_2]

select*
from dbo.countries_in_world

--Calculating total Revenue

select Product, Country, Units_Sold, Revenue_per_cookie, Cost_per_cookie, (Units_Sold * Revenue_per_cookie) as Total_Revnue
from dbo.[Kevin Cookie Company Financials_2]
where Country = 'Germany'
order by 5


select Product, Year, +(Units_Sold * Revenue_per_cookie) as Total_Revnue
from dbo.[Kevin Cookie Company Financials_2]
group by Product, Year

--Highest Revenue in countries

select Country, Product, max (Units_Sold * Revenue_per_cookie) as Max_Total_Revnue
from dbo.[Kevin Cookie Company Financials_2]
group by Country, Product
order by 3 desc

create view [Some_View] as 
select Country, Product, Units_Sold
from dbo.[Kevin Cookie Company Financials_2]



select Country, Product,  max (Units_Sold * Cost_per_cookie) as Total_Cost
from dbo.[Kevin Cookie Company Financials_2]
group by Country, Product
order by 3 desc


select Country, Product,  max (Units_Sold * Cost_per_cookie) as Max_Total_Cost
from dbo.[Kevin Cookie Company Financials_2]
where Year = 2018
And Product = 'Chocolate Chip'
group by Country, Product

--joining two tables on countries

select *
from dbo.[Kevin Cookie Company Financials_2]
join dbo.countries_in_world
on dbo.[Kevin Cookie Company Financials_2].Country = dbo.countries_in_world.Country_or_dependency

--revenue and population

select cookie.Country, cookie.Product, (Units_Sold * Revenue_per_cookie) as Total_Revenue, cou.Population
from dbo.[Kevin Cookie Company Financials_2] cookie
join dbo.countries_in_world cou
on cookie.Country = cou.Country_or_dependency
