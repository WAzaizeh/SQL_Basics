SELECT
    zip,
    MAX(maxtemperaturef)
FROM
    weather
GROUP by 1;