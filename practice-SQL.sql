DROP TABLE practiceWeekdays;


create table practiceWeekdays (
id int,
name varchar(50),
city varchar(50),
date varchar(50)
);

INSERT INTO practiceWeekdays VALUES (001, 'Thursday', 'Austin', '01-08-2024');
INSERT INTO practiceWeekdays VALUES (002, 'Monday', 'Austin', '05-08-2024');
INSERT INTO practiceWeekdays VALUES (003, 'Sunday', 'Austin', '11-08-2024');

SELECT * FROM practiceWeekdays;