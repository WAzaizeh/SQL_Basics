SELECT
	MAX(price) max_price,
	neighbourhood,
	room_type,
	number_of_reviews,
	availability_365 -- how frequently is the place available for rent
FROM
	sfo_listings
GROUP BY 2, 3, 4, 5
ORDER BY 1 DESC;
