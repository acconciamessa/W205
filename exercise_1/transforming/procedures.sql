DROP TABLE procedures;
CREATE TABLE procedures
AS SELECT provider_id, measure_name, score
FROM effective
WHERE measure_name NOT LIKE "%Emergency%"
AND measure_name NOT LIKE "%Median%"
AND score NOT LIKE "%Not%"
AND score <= 100;
