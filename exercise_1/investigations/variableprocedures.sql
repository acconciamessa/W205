SELECT measure_name, variance(score) AS varscore
FROM procedures
GROUP BY measure_name
ORDER BY varscore DESC
LIMIT 10;
