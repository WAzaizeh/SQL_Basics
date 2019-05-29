-- cheapest day of week
SELECT
	EXTRACT(MONTH FROM calender_date) calendar_month,
	COUNT(CASE WHEN available='f' then 1 END) busy_count
FROM
	sfo_calendar
GROUP BY 1
ORDER BY 2 DESC;
	

