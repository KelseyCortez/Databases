// Answer These Questions With a Query
List all the reviews for a given restaurant given a specific restaurant ID.

SELECT review 
FROM review 
WHERE restaurant_id = 1;

List all the reviews for a given restaurant, given a specific restaurant name.

SELECT review
FROM review INNER JOIN restaurant
ON restaurant.id = review.restaurant_id 
WHERE restaurant.name = '';

List all the reviews for a given reviewer, given a specific author name.

SELECT review
FROM review INNER JOIN reviewer
ON reviewer.id = review.reviewer_id
WHERE reviewer.name = '';

List all the reviews along with the restaurant they were written for. In the query result, select the restaurant name and the review text.

SELECT review, name
FROM review INNER JOIN restaurant
ON restaurant.id = review.reviewer_id;

Get the average stars by restaurant. The result should have the restaurant name and its average star rating.

SELECT name, AVG(rating)
FROM review INNER JOIN restaurant
ON restaurant.id = review.restaurant_id
GROUP BY name;


Get the number of reviews written for each restaurant. The result should have the restaurant name and its review count.

SELECT name, COUNT(review)
FROM review INNER JOIN restaurant
ON restaurant.id = review.restaurant_id
GROUP BY name;

List all the reviews along with the restaurant, and the reviewers name. The result should have the restaurant name, the review text, and the reviewer name. Hint: you will need to do a three-way join - i.e. joining all three tables together.

SELECT review, restaurant.name, reviewer.name
FROM review 
INNER JOIN restaurant
ON review.restaurant_id = restaurant.id
INNER JOIN reviewer 
ON reviewer.id = review.id;

Get the average stars given by each reviewer. (reviewer name, average star rating)
Get the lowest star rating given by each reviewer. (reviewer name, lowest star rating)
Get the number of restaurants in each category. (category name, restaurant count)
Get number of 5 star reviews given by restaurant. (restaurant name, 5-star count)
Get the average star rating for a food category. (category name, average star rating)