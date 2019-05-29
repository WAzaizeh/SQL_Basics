WITH
	rain_date
AS (
	SELECT
		DATE(date) date
	FROM
		weather
	WHERE
		events = 'Rain'
	GROUP BY
		1
)
SELECT
	t.trip_id,
	t.duration,
	DATE(t.start_date)
FROM
	trips t
JOIN
	rain_date r
ON
	DATE(t.start_date) = r.date
ORDER BY 2 DESC
LIMIT 3;
