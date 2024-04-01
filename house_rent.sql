select * from house_rent_dataset limit 10;

-- How costly is 1BHK house across India
select Rent,BHK,City
from house_rent_dataset
where BHK=1
group by City
order by Rent DESC;

-- Which city is costly for 2BHK house
select Rent,BHK,City
from house_rent_dataset
where BHK=2
group by City
order by Rent DESC;

-- Which city is better choice for 3BHK
select Rent,BHK,City
from house_rent_dataset
where BHK=3
group by City
order by Rent DESC;

-- I am looking for details of 2BHK house in the Rent Range of 15k at Bangalore location
select * 
from house_rent_dataset
where BHK=2 
and City='Bangalore'
and Rent<15000
order by Size_of_House;

-- what is average rent in each city  with respect to how many Bedroom house it is.
select round(avg(Rent),0),BHK,City
from house_rent_dataset
group by City,BHK
order by City;

-- what is the count of furnished and semi-furnished house in Delhi and Kolkata
select count(*),city 
from house_rent_dataset
where City ='Delhi'
and `Furnishing Status` in('Semi-Furnished','Furnished');
 
select count(*),city 
from house_rent_dataset
where City ='Kolkata'
and `Furnishing Status` in('Semi-Furnished','Furnished');

-- what is Max Rent of 3BHK across India
select max(Rent),city 
from house_rent_dataset
where BHK=3
group by City;

-- In Hyderabad how many houses are available in floor wise 
select count(*) ,Floor
from house_rent_dataset
where City='Hyderabad'
group by Floor;

-- One of my Bachelor friend is looking for house details with Rent 5k in Chennai
select * from house_rent_dataset
where `Tenant Preferred`='Bachelors'
and City='Chennai'
and Rent<5000;

-- I am looking for a house in Ground floor with Super Area across Mumbai
select * from house_rent_dataset
where City='Mumbai'
and `Area Type`='Super Area'
and Floor like '%Ground%'

