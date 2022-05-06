-- Part 2 Hotel schema 

DROP DATABASE IF EXISTS Hotel;
    CREATE DATABASE Hotel;
    USE Hotel;

CREATE TABLE `Reservation` (
  `ReservationId int NOT NULL`,
  `GuestId int NOT NULL`,
  `NumberAdults int NOT NULL`,
  `NumberChildren int`,
  `StateDate DATE NOT NULL`,
  `EndDate DATE NOT NULL`,
  PRIMARY KEY (`ReservationId int NOT NULL`)
  FOREIGN KEY (GuestId)
		REFERENCES Guest(GuestId),
);

CREATE TABLE `Room` (
  `RoomNumber int NOT NULL`,
  `RoomType CHAR(10) NOT NULL`,
  `ADAaccessible BIT(1) NOT NULL`,
  PRIMARY KEY (`RoomNumber int NOT NULL`)
   FOREIGN KEY (RoomType)
        REFERENCES Room (RoomType),
);

CREATE TABLE `RoomReservation` (
  `RoomNumber`,
  `ReservationId`,
  `RoomResernationID`,
  PRIMARY KEY (`RoomResernationID`)
  FOREIGN KEY (ReservationID)
        REFERENCES Reservation (ReservationID),
  FOREIGN KEY (RoomNumber)       
        REFERENCES Room (RoomNumber),
);

CREATE TABLE `RoomType` (
  `RoomType ChAR(10) NOT NULL`,
  `MaxOccupancy int NOT NULL`,
  `StandardOccupancy int NOT NULL`,
  `BasePrice Money NOT NULL`,
  `PricePerAdult Money`,
  PRIMARY KEY (`RoomType ChAR(10) NOT NULL`)
);

CREATE TABLE `Amenity` (
  `AmenityName CHAR(30) NOT NULL`,
  `Description VARCHAR(50)`,
  `AddCost Money`,
  PRIMARY KEY (`AmenityName CHAR(30) NOT NULL`)
);

CREATE TABLE `Guest` (
  `GuestId int NOT NULL AUTO`,
  `FirstName CHAR(20) NOT NULL`,
  `LastName CHAR(30) NOT NULL`,
  `Phone CHAR(10) NOT NULL`,
  `Street CHAR(50) NOT NULL`,
  `City CHAR(50) NOT NULL`,
  `State CHAR(2) NOT NULL`,
  `ZIP CHAR(5) NOT NULL`,
  PRIMARY KEY (`GuestId int NOT NULL AUTO`)
);

CREATE TABLE `RoomAmenity` (
  `RoomNumber`,
  `AmenityName`,
  FOREIGN KEY (RoomNumber)
        REFERENCES Room (RoomNumber),
    FOREIGN KEY (AmenityName)
        REFERENCES Amenity (AmenityName)
);


