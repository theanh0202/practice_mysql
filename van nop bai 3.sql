create database `testing_system_assignment3`;
use `testing_system_assignment3`;
CREATE TABLE trainee (
    traineeID INT AUTO_INCREMENT PRIMARY KEY,
    Full_Name NVARCHAR(50) NOT NULL,
    Birth_Date DATE,
    Gender ENUM('Male', 'Female', 'unknown') NOT NULL,
    ET_IQ INT UNSIGNED CHECK (ET_IQ <= 20),
    ET_Gmath INT UNSIGNED CHECK (ET_Gmath <= 20),
    ET_ENglish INT UNSIGNED CHECK (ET_English <= 50),
    Training_Class CHAR(10),
    Evaluation_Notes TEXT
);


-- exercise 2: Data types
-- ID int primary key auto_increment
-- Code char (5)
-- ModifiedDate datetime default(current_time())

-- Exercise 3: Data types 2
-- ID int primary key auto_increment