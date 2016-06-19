tail -n +2 ~/Downloads/Hospital_Revised_Flatfiles/Timely\ and\ Effective\ Care\ -\ Hospital.csv > ./effective.csv
tail -n +2 ~/Downloads/Hospital_Revised_Flatfiles/hvbp_hcahps_05_28_2015.csv > ./surveys.csv

hdfs dfs -mkdir /user/w205/hospital_compare
wget https://github.com/acconciamessa/W205/blob/master/datasets/surveys.csv
wget https://github.com/acconciamessa/W205/blob/master/datasets/effective.csv
hdfs dfs -put surveys.csv /user/w205/hospital_compare
hdfs dfs -put effective.csv /user/w205/hospital_compare

 
