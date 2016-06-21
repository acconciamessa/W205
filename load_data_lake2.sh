tail -n +2 ~/Desktop/TimelyandEffectiveCare-Hospital.csv > ~/W205/datasets/effectivecare.csv
tail -n +2 ~/Desktop/hvbp_hcahps_05_28_2015.csv > ~/W205/datasets/surveydata.csv

wget https://raw.githubusercontent.com/acconciamessa/W205/master/datasets/effective_care.csv
wget https://raw.githubusercontent.com/acconciamessa/W205/master/datasets/survey_responses.csv

hdfs dfs -mkdir /user/w205/hospital_compare/effective
hdfs dfs -mkdir /user/w205/hospital_compare/surveydirect
hdfs dfs -put effective_care.csv /user/w205/hospital_compare/effective
hdfs dfs -put survey_responses.csv /user/w205/hospital_compare/surveydirect
