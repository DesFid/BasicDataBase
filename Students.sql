-- How many records exist
-- The max note, and the minimal note
-- Make the average
-- Order for surname Descendient
-- How are female and male - Where group by
-- Show the 5 best students 
CREATE TABLE students (ID serial PRIMARY KEY,
                       CI varchar(10) NOT NULL, 
                       Name varchar(20) NOT NULL,
                       Second_name varchar(20) NOT NULL, 
                       Surname varchar(20) NOT NULL, 
                       Second_surname varchar(20) NOT NULL,
                       Birthdate date NOT NULL,
                       Gender varchar(10) NOT NULL,
                       Score_Poo real, 
                       Score_DB real);
INSERT INTO students (CI, Name, Second_name, Surname, Second_surname,Birthdate, Gender, Score_Poo, Score_DB) 
VALUES ('1784158914', 'Juan', 'Edgardo', 'Londo', 'Arse', '1997-04-29', 'Male', 10, 5.8),                             
       ('1789448663', 'Javier', 'Edith', 'Belasques', 'Belos', '1998-05-30', 'Male', 9.7, 9),
       ('1784994885', 'Jose', 'Elias', 'Arevalo', 'Zoto', '1997-07-05', 'Male', 7, 10),
       ('1787987452', 'Arturo', 'Edmundo', 'Arnesto', 'Yanez', '1996-12-10', 'Male', 6, 5),
       ('1794562345', 'Anahi', 'Elena', 'Balarezo', 'Serbin', '1990-10-11', 'Female', 4, 6),
       ('1787516652', 'Alisson', 'Ramona', 'Barcia', 'Roxas', '1999-07-17', 'Female', 10, 7),
       ('1741135457', 'Ananias', 'Raul', 'Maceo', 'Jimenes', '1996-04-20', 'Male', 10, 7.9),
       ('1265784151', 'Simon', 'Hector', 'Pabon', 'Jazo', '1993-03-18', 'Male', 9.7, 8.1),
       ('1154897845', 'Jonas', 'Carlos', 'Quedo', 'Govea', '1994-01-19', 'Male', 7.9, 7.7),
       ('1187466224', 'Nathaly', 'Helena', 'Macaya', 'Estrella', '1998-05-24', 'Female', 9.9, 8),
       ('1778974545', 'Noe', 'Cesar', 'Gabriel', 'Barco', '1997-07-15', 'Male', 6.6, 5.7),
       ('1346549878', 'Manuel', 'Leon', 'Ferrando', 'Cevallos', '1996-11-25', 'Male', 10, 9.8),
       ('1115478956', 'Marco', 'Efrain', 'Faba', 'Cox', '1994-12-26', 'Male', 6.9, 8),
       ('1874894655', 'Matias', 'Leonardo', 'Font', 'Cistos', '1998-10-21', 'Male', 8, 9);
SELECT * FROM students ORDER BY surname DESC;
-- Show all males in the course
SELECT (CI, Name, Second_name, Surname, Second_surname,Birthdate, Gender, Score_Poo, Score_DB) AS "Males" FROM students WHERE gender='Male';
-- Show all females in the course
SELECT (CI, Name, Second_name, Surname, Second_surname,Birthdate, Gender, Score_Poo, Score_DB) AS "Females" FROM students WHERE gender='Female';
-- Show the averages of the students
SELECT Name, AVG((Score_Poo+Score_DB)/2) AS "Average" FROM students GROUP BY Name;
-- UPDATE students SET AV=(SELECT AVG(Score_Poo+Score_DB)/2 FROM students WHERE ID=1) WHERE ID=1; -- Optional 
-- Show the max average from the two scores , Score_Poo and Score_DB
SELECT max(exy) FROM (SELECT AVG((Score_Poo+Score_DB)/2) as exy FROM students GROUP BY Name) t;
-- Show the minimal average from the two scores , Score_Poo and Score_DB
SELECT min(exy) FROM (SELECT AVG((Score_Poo+Score_DB)/2) as exy FROM students GROUP BY Name) t;



