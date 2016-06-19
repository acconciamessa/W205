DROP TABLE effective;
CREATE EXTERNAL TABLE effective (
providerID string,
hospName string,
address string,
city string,
state string,
zip string,
county string,
phone string,
condition string,
measureID string,
measureName string,
score int,
sample int,
footnote string,
measureStart string,
measureEnd string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = "'",
"escapeChar" = "\\"
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/effective';

DROP TABLE survey;
CREATE EXTERNAL TABLE survey (
providerID string,
hospName string,
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
dis1 string,
dis2 string,
dis3 string,
over1 string,
over2 string,
over3 string,
baseScore int,
consistScore int
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = "'",
"escapeChar" = "\\"
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/survey';
