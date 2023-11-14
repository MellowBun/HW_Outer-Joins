USE EntertainmentAgencyExample;
--HW: Outer Joins
--HELP: 4, 5, , 

-- *******************************************************************************
-- 1. List the stage names of all entertainers who have had at least one engagement.
-- Remove all duplicates. Do NOT use GROUP BY in your solution. (1 column, 12 rows)
-- *******************************************************************************

--SELECT DISTINCT EntStageName FROM Entertainers
--RIGHT JOIN Engagements ON Entertainers.EntertainerID = Engagements.EntertainerID

-- *******************************************************************************
-- 2. List the stage names of all entertainers and the IDs of any engagements they
-- have booked. (2 columns, 112 rows)
-- *******************************************************************************

--SELECT EntStageName, EngagementNumber FROM Entertainers
--LEFT JOIN Engagements ON Entertainers.EntertainerID = Engagements.EntertainerID

-- *******************************************************************************
-- 3. List the stage names of all entertainers who have never had an 
-- engagement. (1 column, 1 row)
-- *******************************************************************************

--SELECT EntStageName FROM Entertainers
--LEFT JOIN Engagements ON Entertainers.EntertainerID = Engagements.EntertainerID
--WHERE Engagements.EntertainerID IS NULL

-- *******************************************************************************
-- 4. List the stage names of all entertainers and the total number of engagements
-- they have booked. Sort by total engagements from most to least. Hint: Make sure 
-- your totals make sense compared to the results from #2 and #3. (2 columns, 13 rows)
-- *******************************************************************************

--SELECT EntStageName, COUNT(*) AS NumOfEngagements FROM Entertainers
--RIGHT JOIN Engagements ON Entertainers.EntertainerID = Engagements.EntertainerID
--WHERE Engagements.EntertainerID IS NULL OR NOT NULL
--GROUP BY EntStageName
--SELECT * FROM Engagements


-- *******************************************************************************
-- 5. List the IDs of all musical styles and the IDs of customers who prefer those
-- styles. Sort by style ID from lowest to highest. (2 columns, 41 rows)
-- *******************************************************************************

--SELECT CustomerID, StyleID FROM Musical_Preferences
--ORDER BY StyleID ASC

-- *******************************************************************************
-- 6. List the names of all musical styles and the first and last names of 
-- customers who prefer those styles. Sort alphabetically by style name.
-- (3 columns, 41 rows)
-- *******************************************************************************

--SELECT StyleName, CustFirstName, CustLastName FROM Musical_Styles
--LEFT JOIN Musical_Preferences ON Musical_Styles.StyleID = Musical_Preferences.StyleID
--LEFT JOIN Customers ON Musical_Preferences.CustomerID = Customers.CustomerID
--ORDER BY StyleName ASC

-- *******************************************************************************
-- 7. List the names of all customers and the stage names of all entertainers they
-- have booked. Include customers who have never booked an entertainer and 
-- entertainers who have never been booked. Sort alphabetically by customer last
-- name, then first name, then entertainer stage name. (3 columns, 114 rows)
-- *******************************************************************************
--SELECT * FROM Entertainers

--SELECT * FROM 



-- *******************************************************************************
-- 8. List the names of all customers and the number of unique entertainers they
-- have booked. Sort by total booked entertainers from most to least. Hint: Make 
-- sure your totals make sense compared to your answer from #7. (3 columns, 15 rows)
-- *******************************************************************************

