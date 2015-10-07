CREATE TABLE Address(Id INTEGER NOT NULL,	StreetNumber VARCHAR(55) NOT NULL,	Street VARCHAR(55) NOT NULL,	City VARCHAR(55) NOT NULL,	Zip VARCHAR(55) NOT NULL,	County VARCHAR(55) NOT NULL, Country VARCHAR(55) NOT NULL , CONSTRAINT PK_Address PRIMARY KEY (Id) );
CREATE TABLE EmailAddress(Id INTEGER NOT NULL,	PersonId INTEGER,	EmailAddress VARCHAR(55) NOT NULL, CONSTRAINT PK_email_address PRIMARY KEY (Id ));
CREATE TABLE Person(Id INTEGER  NOT NULL,  FirstName VARCHAR(55) NOT NULL,	 LastName VARCHAR(55) NULL,	 ContactedNumber INTEGER NOT NULL, LastContactedDate DATETIME NOT NULL,DateAdded DATETIME NOT NULL,  CONSTRAINT PK_person PRIMARY KEY (Id));
CREATE TABLE PersonAddress(Id INTEGER NOT NULL,	PersonId INTEGER NOT NULL,	AddressId INTEGER NOT NULL, CONSTRAINT PK_address PRIMARY KEY (Id));
CREATE TABLE PhoneNumber(Id INTEGER NOT NULL,	PersonId INTEGER NOT  NULL,	PhoneNumber VARCHAR(55) NOT NULL, CONSTRAINT PK_phone_number PRIMARY KEY (Id));

INSERT INTO address (Id, StreetNumber, Street,  city, Zip, State, country) VALUES (4, '500', 'Main ST', 'Little Rock', '72201', 'Arkansas', 'US');
INSERT INTO address (Id, StreetNumber, Street,  city, Zip, State, country) VALUES (1, '555', 'Glenn Hills', 'Little Rock', '72201', 'Arkansas', 'US');
INSERT INTO address (Id, StreetNumber, Street,  city, Zip, State, country) VALUES (2, '555', 'Cantrell', 'Toronto', '72120', 'Ontario', 'Canada');
INSERT INTO address (Id, StreetNumber, Street,  city, Zip, State, country) VALUES (3, '555', 'Scott', 'Boonies', 'Sherwood', '72120', 'Arkansas', 'US');

INSERT INTO EmailAddress (Id, PersonId, EmailAddress) VALUES (1, 1, 'daniel@theIronYard.com');
INSERT INTO EmailAddress (Id, PersonId, EmailAddress) VALUES (2, 1, 'daniel@email.com');

INSERT INTO EmailAddress (Id, PersonId, EmailAddress) VALUES (4, 3, 'johndoe@mail.com');
INSERT INTO EmailAddress (Id, PersonId, EmailAddress) VALUES (5, NULL, 'janedoe@mail.com');

INSERT INTO person (Id, FirstName, LastName, ContactedNumber,LastContactedDate,DateAdded ) VALUES (1, 'Daniel', 'Pollock', 5,'2013-09-14 11:43:31','2014-01-14 11:43:31');
INSERT INTO person (Id, FirstName, LastName, ContactedNumber,LastContactedDate,DateAdded) VALUES (2, 'Jim', 'Tedford', 0,'2013-08-14 11:43:31','2015-09-07 11:43:31');
INSERT INTO person (Id, FirstName, LastName, ContactedNumber,LastContactedDate,DateAdded) VALUES (3, 'John', 'Doe', 1,'2013-07-14 11:43:31','2015-10-07 11:43:31');

INSERT INTO PersonAddress (Id, PersonId, AddressId) VALUES (1, 1, 1);
INSERT INTO PersonAddress (Id, PersonId, AddressId) VALUES (3, 2, 1);
INSERT INTO PersonAddress (Id, PersonId, AddressId) VALUES (4, 2, 2);
INSERT INTO PersonAddress (Id, PersonId, AddressId) VALUES (5, 3, 3);


INSERT INTO PhoneNumber (Id, PersonId, PhoneNumber) VALUES (1, 1, '555-1212');
INSERT INTO PhoneNumber (Id, PersonId, PhoneNumber) VALUES (2, 2, '555-1213');
INSERT INTO PhoneNumber (Id, PersonId, PhoneNumber) VALUES (3, 3, '555-1214');
INSERT INTO PhoneNumber (Id, PersonId, PhoneNumber) VALUES (4, 3, '555-1215');
