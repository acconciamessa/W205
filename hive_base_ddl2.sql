DROP TABLE effective;
CREATE EXTERNAL TABLE effective (
provider_id string,
hosp_name string,
address string,
city string,
state string,
zip string,
county string,
phone string,
condition string,
measure_id string,
measure_name string,
score int,
sample int,
footnote string,
measure_start string,
measure_end string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = "'",
"escapeChar" = "\\"
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/effective';

DROP TABLE surveys;
CREATE EXTERNAL TABLE surveys (
provider_id string,
hosp_name string,
address string,
city string,
state string,
zip string,
county string,
com1 string,
com2 string,
com3 string,
com4 string,
com5 string,
com6 string,
resp1 string,
resp2 string,
resp3 string,
pain1 string,
pain2 string,
pain3 string,
comm1 string,
comm2 string,
comm3 string,
clean1 string,
clean2 string,
clean3 string,
disch1 string,
disch2 string,
disch3 string,
over1 string,
over2 string,
over3 string,
basescore int,
consistscore int
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = "'",
"escapeChar" = "\\"
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/surveydirect';
