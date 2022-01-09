CREATE TABLE seahawks_players (
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

SELECT * from seahawks_players;