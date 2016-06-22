SELECT state, avg(score) AS statequality
FROM hospitals, procedures
WHERE hospitals.provider_id = procedures.provider_id
GROUP BY hospitals.state
ORDER BY statequality DESC
LIMIT 10;
