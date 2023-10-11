--Read Cars Data
SELECT * FROM [dbo].[Car Dealer Data];

--Total Cars:To get a count of total records
SELECT COUNT(*) FROM [dbo].[Car Dealer Data];

--How many cars will be available in 2023?
SELECT COUNT(*) FROM [dbo].[Car Dealer Data]
WHERE year= 2023;

--How many cars are available in 2020,2021 and 2022
SELECT COUNT(*) FROM [dbo].[Car Dealer Data]
WHERE year IN (2020,2021,2022) GROUP BY year;

--Show the total number of cars by year to see year-wise details of car count
SELECT year, COUNT(*) FROM [dbo].[Car Dealer Data]
GROUP BY year ORDER BY year ASC;

--How many diesel cars were there in 2020
SELECT COUNT(*) FROM [dbo].[Car Dealer Data]
WHERE fuel='Diesel' AND year=2020;

--How many petrol cars were there in 2020?
SELECT COUNT(*) FROM [dbo].[Car Dealer Data]
WHERE fuel='Petrol' AND year=2020;

--Number of Petrol cars year-wise
SELECT COUNT(*),year FROM [dbo].[Car Dealer Data]
WHERE fuel='Petrol'
GROUP BY year ORDER BY year ASC;

--Number of Diesel cars year-wise
SELECT COUNT(*),year FROM [dbo].[Car Dealer Data]
WHERE fuel='Diesel'
GROUP BY year ORDER BY  year ASC;

--Number of CNG cars year-wise
SELECT COUNT(*),year FROM [dbo].[Car Dealer Data]
WHERE fuel='CNG'
GROUP BY year ORDER BY year ASC;

--Which year had more than 100 cars?
SELECT year,COUNT(*) FROM [dbo].[Car Dealer Data]
GROUP BY year
HAVING COUNT(*)>100 ORDER BY COUNT(*) DESC;

--Show all car count details between years 2014 and 2023
SELECT year,COUNT(*) FROM [dbo].[Car Dealer Data]
GROUP BY year ORDER BY year ASC;

--END OF THE PROJECT
