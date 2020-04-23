## Select the top  item per month  in terms of highest sales revenue



use ecommercedb;



select 
date_format(oh.OrderDate ,'%m')  Mon,
sum(ol.PricePerQty*ol.Quantity)  MonthlyTotal ,
ol.Item_ItemNumber 					 ItemNumber
from
OrderHeader as oh , 
OrderLine as ol 
where 
Oh.OrderNumber = ol.OrderHeader_OrderNumber
group by
ItemNumber , Mon 
order by 
Mon , MonthlyTotal desc ;





create or replace view ItemSalesPerMonth as (
select 
date_format(oh.OrderDate ,'%m')  Mon,
sum(ol.PricePerQty*ol.Quantity)  MonthlyTotal ,
ol.Item_ItemNumber 					 ItemNumber
from
OrderHeader as oh , 
OrderLine as ol 
where 
Oh.OrderNumber = ol.OrderHeader_OrderNumber  
group by
ItemNumber , Mon 
order by 
MonthlyTotal desc 
);



select *  from ItemSalesPerMonth ;


## Explore the use of custom variables that can be used as counters 

set @rank := 0;
select 
MonthlyTotal  ,
Mon ,
ItemNumber ,
@rank  as rank
from 
ItemSalesPerMonth ;


## The mathametical and logical operations are allowed on these variables as well.  
set @rank :=0;
select 
MonthlyTotal  ,
Mon ,
ItemNumber ,
@rank  := @rank +1 as rank
from 
ItemSalesPerMonth ;


## Introduce another variable to track the change in the month at each row


set @rank :=0;
set @mon:=null;
select 
@mon  as MonAtStartofSelect ,
MonthlyTotal  ,
Mon ,
ItemNumber ,
@rank  := @rank +1 as rank
,@mon :=Mon  as MonAtEndofSelect
from 
ItemSalesPerMonth ;


## Now order by Month  and total

set @rank :=0;
set @mon:=null;
select 
@mon  as MonAtStartofSelect ,
MonthlyTotal  ,
Mon ,
ItemNumber ,
@rank  := @rank +1 as rank
,@mon :=Mon  as MonAtEndofSelect
from 
ItemSalesPerMonth 
order by Mon , MonthlyTotal desc;


## Now add a condition to reset @rank to 0 when the month  changes at a given row

set @rank :=0;
set @mon:=null;
select 
@mon  as MonAtStartofSelect ,
MonthlyTotal  ,
Mon ,
ItemNumber ,
if ( @mon  <> Mon , @rank:=1 , @rank  := @rank +1 ) as rank
,@mon :=Mon  as MonAtEndofSelect
from 
ItemSalesPerMonth 
order by Mon , MonthlyTotal desc;



## Include the variables within the querty itself - 


select 
@mon  as MonAtStartofSelect ,
MonthlyTotal  ,
Mon ,
ItemNumber ,
if ( @mon  <> Mon , @rank:=1 , @rank  := @rank +1 ) as rank
,@mon :=Mon  as MonAtEndofSelect
from 
( select * , @rank:=0 , @mon:=null from
ItemSalesPerMonth ) as A ;





##Now Write a sql query to rank the top 2 most frequently ordered items for each season


