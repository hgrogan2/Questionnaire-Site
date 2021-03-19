-- Script Date: 3/17/2021 6:06 PM  - ErikEJ.SqlCeScripting version 3.5.2.86
CREATE TABLE Users (
userID varchar(9) PRIMARY KEY NOT NULL,
FirstName varchar(50) NOT NULL,
LastName varchar(50) NOT NULL,
City varchar(100) NOT NULL,
State varchar(35) NOT NULL,
ZipCode  varchar(5) NOT NULL,
Email varchar(100) NULL,
CellPhone varchar(11) NULL,
HomePhone varchar(11) NULL
);

CREATE TABLE Admins (
adminID varchar(9) PRIMARY KEY NOT NULL,
FirstName varchar(50) NOT NULL,
LastName varchar(50) NOT NULL,
City varchar(100) NOT NULL,
State varchar(35) NOT NULL,
ZipCode  varchar(5) NOT NULL,
Email varchar(100) NULL,
CellPhone varchar(11) NULL,
HomePhone varchar(11) NULL
);

CREATE TABLE Questions (
questions varchar(255) Primary Key NOT NULL
);

CREATE TABLE User_Answers (
userID varchar(9),
questions varchar(255),
answers varchar(255),
CONSTRAINT FK_user FOREIGN KEY (userID)
REFERENCES Users(userID)
CONSTRAINT FK_question FOREIGN KEY (questions)
REFERENCES Questions(questions)
);

INSERT INTO Users (userID, FirstName, LastName, City, State, ZipCode, Email, CellPhone, HomePhone)
VALUES('0000001', 'Harrison', 'Grogan', 'Hopkinsville', 'Kentucky', '42240', 'hgrogan2', '555-5555', '555-5556');

INSERT INTO Admins (adminID, FirstName, LastName, City, State, ZipCode, Email, CellPhone, HomePhone)
VALUES('162735', 'Harry', 'Groge', 'Hopkinsville', 'Kentucky', '42240', 'hgrogan3', '555-5557', '555-5566');

SELECT * FROM Users;

SELECT * FROM Admins;

INSERT INTO Questions (questions)
VALUES('Were you satisfied with the service you received today?');

SELECT * FROM Questions;

INSERT INTO User_Answers
VALUES('Yes');

SELECT * FROM User_Answers;
