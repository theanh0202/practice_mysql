DROP DATABASE IF EXISTS manage_fresher ;
CREATE DATABASE manage_fresher;
use manage_fresher;
-- Exercise 1:Design a table

CREATE TABLE Trainee (
    TraineeID INT AUTO_INCREMENT PRIMARY KEY,
    Full_Name NVARCHAR(50),
    Birth_Date DATE,
    Gender ENUM('male', 'female', 'unknow'),
    ET_IQ TINYINT UNSIGNED CHECK ( ET_IQ < 20),
    ET_Gmath INT CHECK (ET_Gmath > 0 AND ET_Gmath < 50),
    ET_English INT CHECK (ET_English > 0 AND ET_English < 50),
    Training_Class VARCHAR(255),
    Evaluation_Notes TEXT
);

ALTER TABLE Trainee add VTI_Account VARCHAR (50) NOT NULL UNIQUE ;

-- Exercise 2: Data Types
CREATE TABLE `Data Types` (
    id MEDIUMINT PRIMARY KEY AUTO_INCREMENT,
    `Name` VARCHAR(20),
    `code` CHAR(5) CHECK (Code REGEXP '^[A-Za-z0-9]+$'),
    ModifiedDate DATETIME DEFAULT NOW()
);

-- Exercise 3: Data Types (2)

CREATE TABLE `Data Types2` (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    BirthDate DATE,
    Gender BIT,
    IsDeletedFlag BIT DEFAULT(0)
);


