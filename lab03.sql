SELECT * From nfl_player_stats;

SELECT cur_team AS "Current Team",
       name AS "Player Name",
       pos AS "Position",
       weight AS "Weight",
	   height AS "Height",
	   weight / (height ^ 2) * 703 AS "BMI"
from nfl_player_stats;

create table nfl_player_stats 
(
name varchar(50),
cur_team varchar (100),
experience smallint,
pos	varchar(3),
num smallint,
age smallint,	
height smallint,	
weight smallint,
);

create table nfl_stadium_arrests
(
team_name varchar(50),
year_2011 smallint,
year_2012 smallint,
year_2013 smallint,
year_2014 smallint,
year_2015 smallint,
difference smallint

);

Select * from nfl_stadium_arrests;

COPY nfl_stadium_arrests
FROM 'C:\Temp\nfl_stadium_arrests.csv'
WITH (FORMAT CSV, HEADER);

SELECT team_name,
year_2011 + year_2012 + year_2013 + year_2014 + year_2015 AS "Total Arrests",
(year_2011 + year_2012 + year_2013 + year_2014 + year_2015) - difference AS "Difference"
FROM nfl_stadium_arrests
ORDER BY "Total Arrests" ASC;

SELECT team_name,
      year_2011 + year_2012 + year_2013 + year_2014 + year_2015 AS "Total Arrests",
       (CAST(year_2011 + year_2012 + year_2013 + year_2014 + year_2015 AS numeric(4,1))) / (100) AS "2015_pct_of_total"
FROM nfl_stadium_arrests;

SELECT sum(year_2011 + year_2012 + year_2013 + year_2014 + year_2015) AS "County Sum"
       
FROM nfl_stadium_arrests;
