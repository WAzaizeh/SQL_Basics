SELECT
	start_station,
	COUNT(*) start_station_count
FROM
	trips
GROUP BY 1;