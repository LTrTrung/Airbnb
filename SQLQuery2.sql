SELECT *
  FROM [hihi].[dbo].[cleaned_databnb]

/*Count verified*/
SELECT count(id) as count_verified
  FROM [hihi].[dbo].[cleaned_databnb]
 WHERE host_identity_verified='verified'

/*Count  cancellation_policy*/
SELECT cancellation_policy, count(id) as count_cancellation_policy
  FROM [hihi].[dbo].[cleaned_databnb]
 GROUP BY cancellation_policy

/*Count  construction_year*/
SELECT construction_year, count(id) as count_contruction_year
  FROM [hihi].[dbo].[cleaned_databnb]
 GROUP BY construction_year

/*Select  price > 1000*/
SELECT *
  FROM [hihi].[dbo].[cleaned_databnb]
 WHERE price >1000

/*Select top 5 price, availability >250 days */
SELECT TOP 5 *
  FROM [hihi].[dbo].[cleaned_databnb]
 WHERE availability_365 > 250
 ORDER BY price DESC;

/*Select top 5 construction_year that has the highest average price*/
SELECT TOP 5 construction_year, AVG(price) AS avg_price
  FROM [hihi].[dbo].[cleaned_databnb]
 GROUP BY construction_year
 ORDER BY avg_price DESC;

/*Select rows having review_rate_number has 5* */
SELECT *
  FROM [hihi].[dbo].[cleaned_databnb]
 WHERE review_rate_number =5

/*Select rows with review_rate_number of 5* and best price in 2021 */
SELECT *
  FROM [hihi].[dbo].[cleaned_databnb]
 WHERE review_rate_number =5 and construction_year=2021
 ORDER BY price

/*Select  rows name has 'luxury'*/
SELECT *
  FROM [hihi].[dbo].[cleaned_databnb]
 WHERE name like '%luxury%'