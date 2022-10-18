select *
from house..home

---------------CLEANING---------------

--counts the rows in the table
Select count(*)
from house..home

--multiplies the median income by 10,000 so it's the actual income number
update home
set median_income = median_income*10000

--looks up the median income without decimals
select convert(int, median_income)
from house..home

--updates the median income without decimals
update home
set median_income = convert(int, median_income)


-----------------ANALYSIS-----------------

--finds the average income for each area
select avg(cast(median_income as int)) as AreaAverageIncome, ocean_proximity as OceanProximity
from house..home
group by ocean_proximity

--finds the average house price for each area
select avg(cast(median_house_value as bigint)) as AreaAverageValue, ocean_proximity as OceanProximity
from house..home
group by ocean_proximity

--finds the population in each area
select sum(population) as PopulationPerArea, ocean_proximity as OceanProximity
from house..home
group by ocean_proximity

--average age of homes in southern california
select avg(housing_median_age) as AverageHouseAge
from house..home

--average age of homes in southern california by area
select avg(housing_median_age) as AverageHouseAge, ocean_proximity as OceanProximity
from house..home
group by ocean_proximity





