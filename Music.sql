-- Create the necesary databases
CREATE TABLE musicaltypes (ID varchar(100) PRIMARY KEY,
                        Name varchar(20) NOT NULL);
CREATE TABLE musicalrepertories (ID varchar(100) PRIMARY KEY,
                        Name varchar(20) NOT NULL);
CREATE TABLE musicalperiods (ID varchar(100) PRIMARY KEY,
                        Age numeric NOT NULL);
-- This table related the others databases in the fields
CREATE TABLE music (ID varchar(100) PRIMARY KEY,
                   name varchar(50) NOT NULL,
                   artist varchar(50) NOT NULL,
                   type varchar(100) NOT NULL references musicaltypes(ID),
                   repertorie varchar(100) NOT NULL references musicalrepertories(ID),
                   period varchar(100) NOT NULL references musicalperiods(ID));
                    
-- Insert the values in the tables          
INSERT INTO musicaltypes (ID, Name) 
VALUES ('0001', 'Pop'),                             
       ('0002', 'Punk'),
       ('0003', 'Hip Hop'),
       ('0004', 'Jazz'),
       ('0005', 'Opera');
INSERT INTO musicalrepertories (ID, Name) 
VALUES ('0001', 'Operatic'),                             
       ('0002', 'Coral'),
       ('0003', 'Theatrical'),
       ('0004', 'Musical'),
       ('0005', 'Archaeological'),
       ('0006', 'Numerical');
INSERT INTO musicalperiods (ID, Age)
VALUES ('0001', 60),
       ('0002', 70),
       ('0003', 80),
       ('0004', 90);
-- Insert the values in the general table, in the related fields will insert the dates that we related in the general table, for example I should insert the ID in the field, I can't insert a diferent or missing value
INSERT INTO music (ID, name, artist, type, repertorie, period)
VALUES ('0001', 'All about the bass', 'Meghan Trainor', '0004', '0003', '0004');

