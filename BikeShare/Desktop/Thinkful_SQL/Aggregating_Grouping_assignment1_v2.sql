WITH
    maxtemps
AS (
    SELECT
        zip,
        MAX(maxtemperaturef) maxtemperaturef
    FROM
        weather
    GROUP BY 1
)

-- Joining the locations table we created with the trips table to count trips.
SELECT
    maxtemperaturef,
    stations.city
FROM
    maxtemps
JOIN
    trips
ON
    maxtemps.zip = trips.zip_code
JOIN
    stations
ON
    trips.start_station = stations.name
GROUP BY 1,2;
