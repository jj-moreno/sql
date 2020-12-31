-- 1
/* I am in the students database by following command <use students>. I am now looking at the tables in the students database and I see tables: tekcamp01 and tc1_devon_brewster. */

-- 2
CREATE DATABASE `tc1-jose-moreno`;

-- 3
USE tc1-jose-moreno;

-- 4
CREATE TABLE tekcampers AS SELECT * FROM students.tekcamp01;

-- 7
ALTER TABLE tekcampers
DROP COLUMN gender;

ALTER TABLE tekcampers
CHANGE COLUMN education gender char(1)
AFTER last_name;

ALTER TABLE tekcampers
ADD education varchar(20);

ALTER TABLE tekcampers MODIFY COLUMN id int PRIMARY KEY auto_increment;

-- 5
INSERT INTO tekcampers(first_name, last_name, gender, education) VALUES ('Kevin', 'Keese', 'M', null), ('Tyler', 'Clements', 'M', null), ('Justin', 'Cheng', 'M', null), ('John', 'Bozarov', 'M', null), ('Gotham', 'Katta', 'M', null), ('John', 'Kol', 'M', null), ('Vimala', 'Murthy', 'F', null), ('Cody', 'Clark', 'M', null), ('Monica', 'Howard', 'F', null), ('Devon', 'Brewster', 'M', null), ('Aaron', 'White', 'M', null);

-- 6
DELETE FROM tekcampers WHERE first_name='rosa';

DELETE FROM tekcampers WHERE first_name='Jake';

DELETE FROM tekcampers WHERE first_name='Desaree';

-- 7 cont'd
UPDATE tekcampers SET education='Bacherlor\'s' WHERE first_name='abigail';
UPDATE tekcampers SET education='High School' WHERE last_name='keese';
UPDATE tekcampers SET education='Some College' WHERE first_name='Victor';
UPDATE tekcampers SET education='Master\'s' WHERE first_name='Nancy';
UPDATE tekcampers SET education='Bachelor\'s' WHERE first_name='adam';
UPDATE tekcampers SET education='Bachelor\'s' WHERE first_name='jose';
UPDATE tekcampers SET education='Doctorate' WHERE first_name='norita';
UPDATE tekcampers SET education='Some College' WHERE first_name='christian';
UPDATE tekcampers SET education='Bachelor\'s' WHERE last_name='castiglione';
UPDATE tekcampers SET education='Bachelor\'s' WHERE first_name='jessica';
UPDATE tekcampers SET education='Master\'s' WHERE first_name='vimala';
UPDATE tekcampers SET education='Associate\'s' WHERE first_name='phoenix';
UPDATE tekcampers SET education='Bachelor\'s' WHERE first_name='gotham';
UPDATE tekcampers SET education='High School' WHERE last_name='ibanez';
UPDATE tekcampers SET education='Some College' WHERE first_name='julian';
UPDATE tekcampers SET education='Bachelor\'s' WHERE first_name='sabitha';
UPDATE tekcampers SET education='Some College' WHERE first_name='marcelo';
UPDATE tekcampers SET education='Bachelor\'s' WHERE first_name='katherine';
UPDATE tekcampers SET education='Master\'s' WHERE last_name='choat';
UPDATE tekcampers SET education='Some College' WHERE first_name='cody';
UPDATE tekcampers SET education='Some College' WHERE first_name='caleb';
UPDATE tekcampers SET education='Some College' WHERE first_name='george';
UPDATE tekcampers SET education='Some College' WHERE first_name='justin';
UPDATE tekcampers SET education='Bachelor\'s' WHERE last_name='bozarov';
UPDATE tekcampers SET education='High School' WHERE first_name='zachary';
UPDATE tekcampers SET education='Some College' WHERE first_name='devon';
UPDATE tekcampers SET education='Bachelor\'s' WHERE first_name='tyler';

-- 8
SELECT * FROM tekcampers WHERE CHAR_LENGTH(last_name) > 7;

SELECT * FROM tekcampers ORDER BY first_name;

SELECT * FROM tekcampers ORDER BY last_name;

SELECT * FROM tekcampers WHERE GENDER='M';

SELECT * FROM tekcampers WHERE GENDER='F';

SELECT * FROM tekcampers WHERE education LIKE 'Master%';

SELECT * FROM tekcampers WHERE education LIKE 'Associate%';

SELECT * FROM tekcampers WHERE education NOT LIKE 'Master%' AND education NOT LIKE 'Associate%' AND education NOT LIKE 'Doctorate%' AND education NOT LIKE 'Bachelor%';

-- 9
CREATE TABLE `ta-emilios`(id int PRIMARY KEY AUTO_increment, first_name varchar(20), last_name varchar(20), gender char(1), education varchar(20));

INSERT INTO `ta-emilios` (first_name, last_name, gender, education) VALUES ('Abigail', 'Swigert', 'F', 'Bachelor\'s'), ('Adam', 'Rice', 'M', 'Bachelor\'s'), ('Christian', 'Gonzalez', 'M', 'Some College'), ('Devon', 'Brewster', 'M', 'Some College'), ('Gabe', 'Chavez', null, null), ('Jose', 'Moreno', 'M', 'Bachelor\'s'), ('Julian', 'Ladd', 'M', 'Some College'), ('Marcelo', 'Barbosa', 'M', 'Some College'), ('Michael', 'Kinney', null, null), ('Monica', 'Howard', 'F', null), ('Phoenix', 'Shane', 'F', 'Associate\'s');

-- 10
CREATE TABLE hobbies(id int PRIMARY KEY AUTO_INCREMENT, hobby varchar(20));

INSERT INTO hobbies(hobby) VALUES('Reading'), ('Writing'), ('Riding'), ('Video Games'), ('Sports'), ('Nature'), ('Exercise'), ('Food'), ('Music'), ('Teaching');

-- 11
CREATE TABLE `ta-emilios-hobbies`(student_id int,hobby_id int, PRIMARY KEY(student_id, hobby_id), FOREIGN KEY(student_id) REFERENCES `ta-emilios`(id), FOREIGN KEY(hobby_id) REFERENCES hobbies(id));

INSERT INTO `ta-emilios-hobbies` (student_id, hobby_id) VALUES (1, 1), (2, 5), (5, 6), (6, 5), (7, 5), (8, 5), (11, 7);

-- 12
ALTER TABLE tekcampers
ADD COLUMN bootcamp varchar(20);

-- 13
ALTER TABLE `ta-emilios`
ADD COLUMN bootcamp varchar(20);