--Table Creation

CREATE TABLE IF NOT EXISTS travel_data(city string,from1 string,to string,type int,adults int,senior int,children int,
youth int,infant int,date string,time string,ret_date string,ret_time string,price float,hotel string) 
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE;

--Loading Data

LOAD DATA LOCAL INPATH '/home/acadgild/Downloads/TravelData.txt' OVERWRITE INTO TABLE travel_data;

--Top 20 destination people travel the most

SELECT to,count(*) as cnt FROM travel_data GROUP BY to ORDER BY cnt DESC LIMIT 20;

--Top 20 locations from where people travel the most

SELECT from1,count(*) as cnt FROM travel_data GROUP BY from1 ORDER BY cnt DESC LIMIT 20;
