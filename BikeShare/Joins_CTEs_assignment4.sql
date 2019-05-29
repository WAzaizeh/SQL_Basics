WITH rain_date as
(
	SELECT
		DATE(date) rainy_day
	From
		weather
	WHERE
		events = 'Rain'
	GROUP BY 1
),
rainy_trips as (
	SELECT
		t.trip_id,
		t.duration,
		DATE(t.start_date) rainy_day
	FROM trips t
	JOIN rain_date r
	on r.rainy_day = DATE(t.start_date)
	ORDER BY t.duration
)
SELECT
	rainy_day,
	max(duration) max_duration
from
	rainy_trips
GROUP BY 1
ORDER BY max_duration;
