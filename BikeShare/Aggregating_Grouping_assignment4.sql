SELECT
	end_station,
    AVG(duration) duration
FROM
    trips
GROUP BY
	1;