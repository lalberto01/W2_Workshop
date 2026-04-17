DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Customers (
CustomerID INT PRIMARY KEY,
Name VARCHAR(100),
Phone VARCHAR(20),
Email VARCHAR(100)
);
CREATE TABLE Dogs (
DogID INT PRIMARY KEY,
DogName VARCHAR(100),
Breed VARCHAR(100),
CustomerID INT,
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
CREATE TABLE Walks (
WalkID INT PRIMARY KEY,
DogID INT,
WalkDate DATETIME,
Duration INT,
FOREIGN KEY (DogID) REFERENCES Dogs(DogID)
);
CREATE TABLE Payments (
PaymentsID INT PRIMARY KEY,
CustomerID INT,
WalkID INT,
PaymentDate DATETIME,
Amount DECIMAL(10,2),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
FOREIGN KEY (WalkID) REFERENCES Walks(WalkID)
);



