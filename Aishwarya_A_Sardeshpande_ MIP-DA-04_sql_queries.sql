USE hotel;


## 1. What is the total number of reservations in the dataset?
SELECT count(Booking_ID) AS 'total_reservations'
FROM `hotel reservation dataset`;

## 2. Which meal plan is the most popular among guests?
SELECT type_of_meal_plan , count(type_of_meal_plan) AS 'popular_meal_count'
FROM `hotel reservation dataset`
GROUP BY type_of_meal_plan
ORDER BY 'popular_meal_count' DESC
LIMIT 1;

## 3. What is the average price per room for reservations involving children?
SELECT no_of_children, AVG(avg_price_per_room) AS 'Average_room_price'
FROM `hotel reservation dataset`
WHERE no_of_children >0
GROUP BY no_of_children;

## 4 How many reservations were made for the year 20XX (replace XX with the desired year)?
SELECT COUNT(*) AS num_reservations
FROM your_table_name
WHERE YEAR(arrival_date) = '20XX';

##  5. What is the most commonly booked room type?
SELECT room_type_reserved AS 'commonly_booked_room', COUNT(*) AS num_bookings
FROM `hotel reservation dataset`
GROUP BY room_type_reserved
ORDER BY COUNT(*) DESC
LIMIT 1;


## 6. How many reservations fall on a weekend (no_of_weekend_nights > 0)?
SELECT COUNT(*) AS weekend_reservations
FROM `hotel reservation dataset`
WHERE no_of_weekend_nights > 0;


## 7. What is the highest and lowest lead time for reservations?
SELECT MAX(lead_time) AS 'Highest', MIN(lead_time) AS 'lowest'
FROM`hotel reservation dataset`;


## 8. What is the most common market segment type for reservations?
SELECT  market_segment_type 
FROM`hotel reservation dataset`
GROUP BY market_segment_type
ORDER BY count(market_segment_type) DESC
limit 1;

## 9. How many reservations have a booking status of "Confirmed"?
SELECT COUNT(*) AS 'confirmed'
FROM`hotel reservation dataset`
WHERE booking_status = 'Not_Canceled';


## 10. What is the total number of adults and children across all reservations?
SELECT SUM(no_of_adults) AS 'adult_count', SUM(no_of_children) AS 'children_count' , 
SUM(no_of_adults) + SUM(no_of_children) AS 'Total_count'
FROM`hotel reservation dataset`;


##  11. What is the average number of weekend nights for reservations involving children?
SELECT  no_of_children, Avg(no_of_weekend_nights) AS 'weekend_night_including_children' 
FROM`hotel reservation dataset`
WHERE no_of_children>0
GROUP BY no_of_children;


## 12  How many reservations were made in each month of the year?
SELECT YEAR(arrival_date) AS year,MONTH(arrival_date) AS month,COUNT(*) AS reservations_count
FROM `hotel reservation dataset`
GROUP BY YEAR(arrival_date),MONTH(arrival_date)
ORDER BY YEAR(arrival_date),MONTH(arrival_date);



## 13. What is the average number of nights (both weekend and weekday) spent by guests for each room type?
SELECT AVG(no_of_weekend_nights + no_of_week_nights ) AS 'avg_no_of_nights' , room_type_reserved
FROM`hotel reservation dataset`
GROUP BY room_type_reserved;


## 14. For reservations involving children, what is the most common room type, and what is the average  price for that room type?
SELECT no_of_children, room_type_reserved AS 'common_room_type', avg(avg_price_per_room)
FROM `hotel reservation dataset`
WHERE no_of_children > 0
GROUP BY room_type_reserved , no_of_children
ORDER BY count(room_type_reserved) DESC
limit 2;


##  15. Find the market segment type that generates the highest average price per room. 
SELECT market_segment_type ,SUM(avg_price_per_room) as'revenue_generated'
FROM `hotel reservation dataset`
GROUP BY market_segment_type
ORDER BY SUM(avg_price_per_room) DESC
limit 1;










