-- Script Date: 3/17/2021 6:06 PM  - ErikEJ.SqlCeScripting version 3.5.2.86
CREATE TABLE Users (
UserID varchar(9) PRIMARY KEY NOT NULL,
FirstName varchar(50) NOT NULL,
LastName varchar(50) NOT NULL,
City varchar(100) NOT NULL,
State varchar(35) NOT NULL,
ZipCode  varchar(5) NOT NULL,
Email varchar(100) NULL,
CellPhone varchar(11) NULL,
HomePhone varchar(11) NULL,
IsAdmin BIT
);

CREATE TABLE Questions (
Questions varchar(255) NOT NULL,
QuestionID varchar(7) Primary Key NOT NULL,
QuestionType varchar(50) NOT NULL
);

CREATE TABLE UserAnswers (
UserID varchar(9),
QuestionID varchar(7),
Questions varchar(255),
Answers varchar(255),
Email varchar(255),
CONSTRAINT FK_user FOREIGN KEY (UserID)
REFERENCES Users(UserID)
CONSTRAINT FK_question FOREIGN KEY (Questions)
REFERENCES Questions(Questions)
);

INSERT INTO Users (userID, FirstName, LastName, City, State, ZipCode, Email, CellPhone, HomePhone)
VALUES('0000001', 'Harrison', 'Grogan', 'Hopkinsville', 'Kentucky', '42240', 'hgrogan2', '555-5555', '555-5556');


SELECT * FROM Users;

INSERT INTO Users (isAdmin)
VALUES(1)

SELECT isAdmin FROM Users;

INSERT INTO Questions (questions)
VALUES('Were you satisfied with the service you received today?');

SELECT * FROM Questions;

INSERT INTO User_Answers
VALUES('Yes');

SELECT * FROM User_Answers;
