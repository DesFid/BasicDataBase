CREATE TABLE table1(
    ID serial PRIMARY KEY,
    Name varchar (20) NOT NULL,
    Second_Name varchar (20) NOT NULL,
    Phone varchar (10) NOT NULL,
    Age numeric NOT NULL,
    Address varchar (20));
INSERT INTO table1 (Name, Second_Name, Phone, Age, Address) VALUES ('Adrian', 'Torres', '0995189801', 19, 'Caupicho');
INSERT INTO table1 (Name, Second_Name, Phone, Age, Address) VALUES ('Anthony', 'Almeida', '098764512', 22, 'Argelia');
INSERT INTO table1 (Name, Second_Name, Phone, Age, Address) VALUES ('Juan', 'Alvares', '098544648', 23, 'La Colmena');
INSERT INTO table1 (Name, Second_Name, Phone, Age, Address) VALUES ('Pablo', 'Benitez', '098456456', 12, 'Comite del Pueblo');
INSERT INTO table1 (Name, Second_Name, Phone, Age, Address) VALUES ('Roberto', 'Bolivar', '09878978', 15, 'Chillogallo');
SELECT Name, Second_Name, Phone, Age FROM table1;
ALTER TABLE table1 ADD email varchar(20);
INSERT INTO table1 (Name, Second_Name, Phone, Age, Address, email) VALUES ('Julian', 'Idaldo', '098456454', 16, 'Ecuatoriana', 'julian@test.com');
INSERT INTO table1 (Name, Second_Name, Phone, Age, Address, email) VALUES ('Anahi', 'Delgado', '098456456', 17, 'La Y', 'anahi@test.com');
INSERT INTO table1 (Name, Second_Name, Phone, Age, Address, email) VALUES ('Lucas', 'Iza', '098765489', 18, 'Cinco Esquinas', 'lucas@test.com');
UPDATE table1 SET email = 'adrian@test.com' WHERE ID = 1;
SELECT * FROM table1;
DELETE FROM table1 WHERE ID = 2;

