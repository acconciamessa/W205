SELECT provider_id, hosp_name, avg(score) AS quality
FROM hospitals, procedures
WHERE hospitals.provider_id = procedures.provider_id
GROUP BY procedures.provider_id, hospitals.hosp_name
ORDER BY quality DESC
LIMIT 10;
