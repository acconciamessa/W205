DROP TABLE hospitals;
CREATE TABLE hospitals
AS SELECT provider_id, hosp_name, state
FROM effective;
