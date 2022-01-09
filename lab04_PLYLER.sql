CREATE TABLE teams (
team_id serial CONSTRAINT team_name PRIMARY KEY,
city varchar(50),
name varchar(50),
conference char(3),
division char(5),
CONSTRAINT conference_title CHECK (conference IN ('AFC','NFC')),
CONSTRAINT name_constraint UNIQUE (name)
);


CREATE TABLE players (
player_id smallint CONSTRAINT player_name PRIMARY KEY,
number smallint,
first_name varchar(25) NOT NULL,
last_name varchar(50) NOT NULL,
position char(2),
age smallint,
salary int,
team_id int REFERENCES teams (team_id) ON DELETE CASCADE,
CONSTRAINT number_between_one_and_ninetynine CHECK (number >= 1 AND number <= 99)
);


CREATE TABLE coaches (
coach_id serial CONSTRAINT coach_name PRIMARY KEY,
first_name varchar(25) NOT NULL,
last_name varchar(50) NOT NULL,
title varchar(50),
salary int,
team_id int REFERENCES teams (team_id) ON DELETE CASCADE
);
	
INSERT INTO teams (conference)
VALUES ('AFC');

INSERT INTO players (number)
VALUES ('44');

	
SELECT * FROM coaches;
SELECT * FROM teams;
SELECT * FROM players;

DROP TABLE coaches;
DROP TABLE players
DROP TABLE teams;
