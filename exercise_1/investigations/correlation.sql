DROP TABLE proceduresintermediate;
CREATE TABLE proceduresintermediate
AS SELECT provider_id, avg(score) AS quality
FROM procedures
GROUP BY provider_id;

DROP TABLE comparison;
CREATE TABLE comparison
AS SELECT proceduresintermediate.provider_id, quality, patientscore
FROM proceduresintermediate, surveyscores
WHERE proceduresintermediate.provider_id = surveyscores.provider_id;

SELECT corr(quality, patientscore) AS correlation FROM comparison;
