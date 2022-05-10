-- Part 2 Hotel schema 

DROP DATABASE IF EXISTS Hotel;
    CREATE DATABASE Hotel;
    USE Hotel;

CREATE TABLE `Guest` (
  `GuestId int NOT NULL AUTO`,
  `FirstName CHAR(20) NOT NULL`,
  `LastName CHAR(30) NOT NULL`,
  `Street CHAR(50) NOT NULL`,
  `City CHAR(50) NOT NULL`,
  `State CHAR(2) NOT NULL`,
  `ZIP CHAR(5) NOT NULL`,
  `Phone CHAR(10) NOT NULL`,
  PRIMARY KEY (`GuestId int NOT NULL AUTO`)
);

CREATE TABLE `Reservation` (
  `ReservationId int NOT NULL`,
  `GuestId int NOT NULL`,
  `NumberAdults int NOT NULL`,
  `NumberChildren int`,
  `StateDate DATE NOT NULL`,
  `EndDate DATE NOT NULL`,
  `RoomNumber int NOT NULL`,
  PRIMARY KEY (`ReservationId int NOT NULL`)
  FOREIGN KEY (`GuestId int NOT NULL`)
            REFERENCES `Guest`(`GuestId int NOT NULL AUTO`),
  FOREIGN KEY (`RoomNumber int NOT NULL`)
            REFERENCES `Room` (`RoomNumber int NOT NULL`)
);

CREATE TABLE `Room` (
  `RoomNumber int NOT NULL`,
  `RoomType CHAR(10) NOT NULL`,
  `ADAaccessible CHAR(10) NOT NULL`,
  `MaxOccupancy int NOT NULL `,
  `StandardOccupancy int NOT NULL`,
  `BasePrice Money NOT NULL`,
  `PricePerAdult Money`,
  `Microwave CHAR(10) `,
  `Refrigerator CHAR(10)`,
  `Oven CHAR(10)`
  `Jacuzzi CHAR(10)`,
  PRIMARY KEY (`RoomNumber int NOT NULL`)
);

