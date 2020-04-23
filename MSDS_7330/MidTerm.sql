-- All games played by a given team
SELECT
Games.University_Name_Home as Home_Team,
Games_University_Name_Away as Away_Team,
Games.Final_Score_Home as Home_Score,
Games.Final_Score_Away as Away_Score,
Games.Date_Time as Game_Time

FROM
Games

WHERE
(Games.University_Name_Home = "Southern Methodist University"
OR
Games.University_Name_Away = "Southern Methodist University")

/*This code includes Games.University_Name_X, which is a foreign key
in the Games table and a primary key under the University table. It is
assumed there is only 1 school named Southern Methodist University since
the where clause only pulls games where SMU was either a Home or Away
team. The addition of the University_ID to the primary would ensure only
1 SMU is being pulled. Should there be a concern, we would be able to adjust
the query based on University_ID instead and join the names in.*/

-- Capture all games at a given venue
SELECT
Vanue.Venue_Name as Stadium_Name,
Games.Date_Time as Game_Time,
Games.University_Name_Home as Home_Team,
Games.University_Name_Away as Away_Team,
Games.Final_Score_Home as Home_Score,
Games.Final_Score_Away as Away_Score

FROM
Games,
Venue

WHERE
Venue.Venue_ID = Games.Venue_Venue_ID
AND
Venue.Venue_Name = "Gerald J. Ford Stadium"

/*This code pulls the game information from the Games table and is then joined
to the Venue table through the Venue ID in order to bring in the name of the
venue. Once the tables are joined, we are then able to filter for only games
hosted at "Gerald J. Ford Stadium" which we would assume to be mainly SMU games.*/

-- Capture the players for each team and their captains
SELECT
Players.Name as Player_Name,
Players.Position as POS,
Players.Captain as Captain_Status,
University.Name as School_Name

FROM
Players,
University

WHERE
(Players.University_University_ID = University.University_ID
AND
Players.Tenure BETWEEN "1" AND "4")

GROUP BY 
School_Name

/*In this instance, we assume players are coded as follows under "Tenure":
1 = Freshmen
2 = Sophomore
3 = Junior
4 = Senior
5 = Not_Enrolled
In according with NCAA elidgibility rules, players are only allowed to play for
a total of 4 years while in school. They may withdraw from a university in order
to preserve their elidgibility. However, that may be jeapordize if they were to
play professional or semi-professional football. In any case, the "5" label is
reserved for athletes no longer enrolled in the football program. This allows us
to only pull the active roster and not players who have left the program. Furthermore,
The join in the University_ID gives us access to the University name, which we then
use to group the players by in the output.*/

-- Capture the scores for each game
SELECT
Vanue.Venue_Name as Stadium_Name,
Games.Date_Time as Game_Time,
Games.Week_Numer as Week,
Games.University_Name_Home as Home_Team,
Games.University_Name_Away as Away_Team,
Games.Final_Score_Home as Home_Score,
Games.Final_Score_Away as Away_Score

FROM
Games,
Venue

WHERE
Venue.Venue_ID = Games.Venue_Venue_ID

GROUP BY
Week

/*This code pulls the game information from the Games table and includes the Venue
information as well. Once the tables are joined to include the venue info, the data
is then grouped by weeks, in order to view in chronological order. Times zones were
not accounted in this instance so a sort function by ascending would still provide
an inaccurate output. Timezones would have be to be added and all the time need to be
normalized to ensure true chronological order.*/

/************************************
*          Quesiton 4.1             *
*************************************/
-- Calculate the average revenue in sales for each item category for each month
SELECT
item.ItemCategory as ItemCategory, -- selecting the item category
DATE_FORMAT(OrderDate, "%b") as OrderMonth, -- converting date to month
round(avg(OrderLine.Quantity*OrderLine.PricePerQty),2) as AvgSales -- getting the average sales and rounding off to 2 decimal places

FROM -- list of tables extracting the data from
OrderHeader,
OrderLine,
Item

WHERE -- joining the foreign keys to be able to obtain the ItemCategory
OrderNumber=OrderHeader_OrderNumber
AND OrderLine.Item_ItemNumber = Item.ItemNumber

GROUP BY -- makes all months unique within each item category
OrderMonth,
ItemCategory

ORDER BY
ItemCategory, MONTH(OrderDate) asc; -- sorting by month number since we can't by name w/o sorting alphabetically

/************************************
*          Quesiton 4.2             *
*************************************/
-- List the most ordered Item (across all customers) for each month of the year 2017 with the total ordered qty.
SELECT
DATE_FORMAT(OrderDate, "%b") as OrderMonth, -- converting date to month
orderline.Item_ItemNumber as ItemNum, -- selecting the item category
SUM(orderline.Quantity) as Quant -- getting the average sales and rounding off to 2 decimal places

FROM -- list of tables extracting the data from
OrderHeader,
OrderLine,
Item
WHERE -- joining the foreign keys to be able to obtain the ItemCategory
OrderNumber=OrderHeader_OrderNumber
AND OrderLine.Item_ItemNumber = Item.ItemNumber
AND orderheader.OrderDate >= 01-01-2017

GROUP BY -- makes all months unique within each item category
OrderMonth

ORDER BY
MONTH(OrderDate) asc,
Quant desc; 

/************************************
*          Quesiton 4.3             *
*************************************/
-- List the top 3 items with the highest (total) sales revenue across each of the cities. 
(SELECT
address.City as City,
orderline.Item_ItemNumber as Item_ID,
SUM(orderline.PricePerQty*orderline.Quantity) as Sales

FROM
orderline,
address,
orderheader

WHERE
address.AddressID = orderheader.Address_AddressID
AND orderheader.OrderNumber = orderline.OrderHeader_OrderNumber
AND City = "Austin" -- We only want Austin in this table

GROUP BY
Item_ID, City

ORDER BY
City ASC,
Sales DESC LIMIT 3) -- Only first 3 rows after sorting by descending sales

UNION ALL -- Union Austin table to the following Dallas table

(SELECT
address.City as City,
orderline.Item_ItemNumber as Item_ID,
SUM(orderline.PricePerQty*orderline.Quantity) as Sales

FROM
orderline,
address,
orderheader

WHERE
address.AddressID = orderheader.Address_AddressID
AND orderheader.OrderNumber = orderline.OrderHeader_OrderNumber
AND City = "Dallas" -- We only want Dallas

GROUP BY
Item_ID,
City

ORDER BY
City ASC,
Sales DESC LIMIT 3) -- Only first 3 rows after sorting by descending sales

UNION ALL -- Union Dallas table to Houston table

(SELECT
address.City as City,
orderline.Item_ItemNumber as Item_ID,
SUM(orderline.PricePerQty*orderline.Quantity) as Sales

FROM
orderline,
address,
orderheader

WHERE
address.AddressID = orderheader.Address_AddressID
AND orderheader.OrderNumber = orderline.OrderHeader_OrderNumber
AND City = "Houston" -- We wonly want Houston

GROUP BY
Item_ID,
City

ORDER BY
City ASC,
Sales DESC LIMIT 3) -- Only first 3 rows after sorting by descending sales
;
/************************************
*          Quesiton 4.4             *
*************************************/
-- Find the mode of the ordered items
SELECT
orderline.Item_ItemNumber as Item_ID, -- Call item numbers
SUM(orderline.Quantity) as Ordered -- Add the quantities the units have been ordered

FROM
orderline

GROUP BY
Item_ID -- Ordering the items by their respective number

ORDER BY
Ordered DESC LIMIT 1;
-- Order the output by descending and only output the first value,
-- which is essentially the mode or the most order item

/************************************
*          Quesiton 4.5             *
*************************************/
-- Find the average time between orders for all customers who placed at least two orders. 
SELECT 
AVG(DATEDIFF(OrderDate, PriorDate)) as LagTime
FROM
(
  SELECT
  CustomerTable_CustomerID,
  OrderDate,
  LAG(OrderDate,1) OVER (PARTITION BY CustomerTable_CustomerID ORDER BY OrderDate) as PriorDate
  
  FROM orderheader
) AS lagged;

-- Sourced from: https://dba.stackexchange.com/questions/164811/calculate-average-days-between-orders

/************************************
*          Quesiton 4.6             *
*************************************/
-- Find the total time it took from the first order until every available item was sold at least once. 
SELECT
DATEDIFF(Last_Unique_Item_Date, MIN(orderheader.OrderDate)) as "Full Inventory Cycle Time"
-- Gives us the date difference between the first order date and the last of the unique item sold

FROM
(
	SELECT
	MAX(orderheader.OrderDate) as Last_Unique_Item_Date -- pull oldest order date
    
	FROM
	orderheader,
    orderline
    WHERE
    orderheader.OrderNumber = orderline.OrderHeader_OrderNumber
    HAVING -- only when the distinct values sold equal to the max itemnumber
    COUNT(DISTINCT orderline.Item_ItemNumber) = MAX(orderline.Item_ItemNumber)
) AS UniqueSold,
orderheader

-- assumes all items are numbers 1 through n and there are no gaps or duplicates

