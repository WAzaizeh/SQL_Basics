WITH
	popular_listing
AS (
	SELECT
		listing_id,
		COUNT(listing_id) listing_count
	FROM
		sfo_reviews
	GROUP BY 1
)
SELECT
	MAX(pl.listing_count) review_count,
	sl.neighbourhood
FROM
	popular_listing pl
JOIN
	sfo_listings sl
ON
	pl.listing_id = sl.id
GROUP BY 2
ORDER BY 1 DESC;