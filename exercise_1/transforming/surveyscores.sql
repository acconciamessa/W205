DROP TABLE surveyscores;
CREATE TABLE surveyscores
AS SELECT provider_id, (basescore + consistscore) AS patientscore
FROM surveys;
