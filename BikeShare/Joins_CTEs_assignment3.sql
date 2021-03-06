SELECT
  start_station,
  dockcount,
  COUNT(*)
FROM
  trips
JOIN
  stations
ON
  stations.name=trips.start_station
GROUP BY 1, 2
ORDER BY 2 DESC;
