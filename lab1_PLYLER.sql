create table seahawks_players (
    no smallint,
    first_name varchar(50),
    last_name varchar(50),
    position char(2),
    age integer,
	salary integer
);

INSERT INTO seahawks_players (no, first_name, last_name, position, age, salary)
Values ('89', 'Doug', 'Baldwin', 'WR', '30', '11500000'),
('18', 'Jaron', 'Brown', 'WR', '29', '2750000'),
('32', 'Chris', 'Carson', 'RB', '24', '616282'),
('27', 'Mike', 'Davis', 'RB', '25', '1337500'),
('84', 'Ed', 'Dickson', 'TE', '31', '3566667'),
('16', 'Tyler', 'Lockett', 'WR', '26', '829688'),
('83', 'David', 'Moore', 'WR', '24', '555000'),
('20', 'Rashaad', 'Penny', 'RB', '22', '2691360'),
('81', 'Nick', 'Vannett', 'TE', '25', '816220'),
('3', 'Russell', 'Wilson', 'QB', '30', '21900000');

SELECT * FROM seahawks_players;
SELECT first_name, salary FROM seahawks_players;
SELECT DISTINCT position FROM seahawks_players;
SELECT first_name, last_name, salary FROM seahawks_players
ORDER BY salary DESC;
SELECT last_name, position, age FROM seahawks_players
ORDER BY position ASC, age DESC;
SELECT first_name, last_name, salary FROM seahawks_players
WHERE position = 'WR';
SELECT first_name, last_name, salary FROM seahawks_players
WHERE position != 'WR';
SELECT first_name, last_name, age FROM seahawks_players
WHERE age <=25;
SELECT first_name, last_name, salary FROM seahawks_players
WHERE salary >= 2750000;
SELECT first_name, last_name, salary FROM seahawks_players
WHERE salary BETWEEN 1000000 AND 5000000;
SELECT * FROM seahawks_players
WHERE position = 'RB' AND salary >=1000000;
SELECT * FROM seahawks_players
WHERE position = 'WR' AND (salary > 10000000 OR salary < 100000);

/* 
DELETE FROM seahawks_players;
*/
