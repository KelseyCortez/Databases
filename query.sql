// Write queries to get the following:
The names of the restaurants that you gave a 5 stars to
SELECT name
FROM restaurant
WHERE restaurant.rating > 4.6;

The favorite dishes of all 5-star restaurants
SELECT fav_dish
FROM restaurant;

The the id of a restaurant by a specific restaurant name, say 'Moon Tower'
SELECT id
FROM restaurant
WHERE name = 'Fox Bros';

Restaurants in the category of 'BBQ'
SELECT name
FROM restaurant
WHERE category = 'BBQ';

Restaurants that do take out
SELECT name
FROM restaurant
WHERE takeout = 'TRUE';

Restaurants that do take out and are in the category of 'BBQ'
SELECT name
FROM restaurant
WHERE takeout = 'TRUE' AND category = 'BBQ';

Restaurants within 2 miles
SELECT name
FROM restaurant
WHERE distance < 2;

Restaurants you haven't eaten at in the last week
SELECT name
FROM restaurant
WHERE last_visit < '2020-05-14';

Restaurants you haven't eaten at in the last week and has 5 stars
SELECT name
FROM restaurant
WHERE last_visit < '2020-05-14' AND rating > 4.6;


//AGGREGATION AND SORTING queries//

List restaurants by the closest distance.
SELECT *
FROM restaurant 
ORDER BY distance;


List the top 2 restaurants by distance.
SELECT *
FROM restaurant 
ORDER BY distance limit 2;

List the top 2 restaurants by stars.
SELECT *
FROM restaurant 
ORDER BY rating desc limit 2;

List the top 2 restaurants by stars where the distance is less than 2 miles.
SELECT *
FROM restaurant 
WHERE (rating > 4.6) AND (distance < 2);


Count the number of restaurants in the db.
SELECT COUNT(id)
FROM restaurant;

Count the number of restaurants by category.
SELECT COUNT(category)
FROM restaurant 
WHERE category = '';

Get the average stars per restaurant by category.
SELECT AVG(rating)
FROM restaurant;

Get the max stars of a restaurant by category.
SELECT MAX(rating)
FROM restaurant
WHERE category = '';
