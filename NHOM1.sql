
 DROP DATABASE IF  EXISTS 		Hotel;
 CREATE DATABASE Hotel;
 USE  Hotel;
-- C1
DROP TABLE IF  EXISTS Countries;
 CREATE TABLE Countries
 (
	Country_ID 		INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Country_Name 	VARCHAR(255) NOT NULL
 );
 -- C2
 DROP TABLE IF  EXISTS Localtions;

  CREATE TABLE Localtions
 (
	Localtions_ID			INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Name			 		VARCHAR(255) NOT NULL,
    Country_ID				INT NOT NULL,
    Postal_Code 		VARCHAR(255),
	FOREIGN KEY (Country_ID) REFERENCES Countries (Country_ID)
 );
 -- C3
  DROP TABLE IF  EXISTS House;
   CREATE TABLE House
 (
	House_id			INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Address			 	TEXT NOT NULL,
    Localtions_ID		INT NOT NULL,
    House_Number  		VARCHAR(255),
    TimeBuilding		DATE,
	FOREIGN KEY (Localtions_ID) REFERENCES Localtions (Localtions_ID)
 );
 
 -- C4
   DROP TABLE IF  EXISTS Rooms;

  CREATE TABLE Rooms
 (
	Room_id				INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Room_Color			VARCHAR(255),
    House_id 			INT NOT NULL,
	FOREIGN KEY (House_id) REFERENCES House (House_id)
 );
 
 -- C5 
 -- A
 ALTER TABLE Countries
 ADD Number_Of_Provinces  INT;
 -- B
 ALTER TABLE Rooms  
 RENAME TO PersonalRoom;
 

