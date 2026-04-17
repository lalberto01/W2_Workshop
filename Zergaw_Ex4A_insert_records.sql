USE lana_dog_walking;

INSERT INTO Customers (FirstName, LastName, PhoneNumber, Email, Address)
VALUES
('Emma', 'Johnson', '7045551234', 'emma.johnson@email.com', '123 Oak Street, Charlotte, NC 28202'),
('Liam', 'Smith', '7045555678', 'liam.smith@email.com', '456 Pine Street, Charlotte, NC 28203'),
('Olivia', 'Brown', '7045559012', 'olivia.brown@email.com', '789 Cedar Street, Charlotte, NC 28204'),
('Noah', 'Davis', '7045553456', 'noah.davis@email.com', '321 Birch Street, Charlotte, NC 28205'),
('Ava', 'Wilson', '7045557890', 'ava.wilson@email.com', '654 Spruce Street, Charlotte, NC 28206'),
('Sophia', 'Taylor', '7045552345', 'sophia.taylor@email.com', '987 Willow Street, Charlotte, NC 28207'),
('James', 'Anderson', '7045556789', 'james.anderson@email.com', '159 Elm Street, Charlotte, NC 28208'),
('Isabella', 'Thomas', '7045551122', 'isabella.thomas@email.com', '753 Aspen Street, Charlotte, NC 28209'),
('Mason', 'Jackson', '7045553344', 'mason.jackson@email.com', '852 Redwood Street, Charlotte, NC 28210'),
('Mia', 'White', '7045555566', 'mia.white@email.com', '951 Cherry Street, Charlotte, NC 28211');

SELECT LASTName FROM Customers;
SELECT * FROM Customers;

USE lana_dog_walking;

INSERT INTO Dogs (CustomerID, DogName, Breed, Weight, Age)
VALUES
(1, 'Luna', 'Pit Bull Terrier', 55.00, 4),
(2, 'Max', 'Labrador Retriever', 65.50, 6),
(3, 'Bella', 'German Shepherd', 70.25, 5),
(4, 'Charlie', 'Golden Retriever', 68.00, 3),
(5, 'Lucy', 'Bulldog', 50.75, 4),
(6, 'Cooper', 'Beagle', 30.20, 2),
(7, 'Daisy', 'Poodle', 25.50, 7),
(8, 'Rocky', 'Boxer', 60.00, 5),
(9, 'Molly', 'Dachshund', 20.10, 6),
(10, 'Bailey', 'Siberian Husky', 55.80, 4);

USE lana_dog_walking;


INSERT INTO Dogs (CustomerID, DogName, Breed, Weight, Age)
VALUES
(1, 'Luna', 'Pit Bull Terrier', 55.00, 4),
(2, 'Max', 'Labrador Retriever', 65.50, 6),
(3, 'Bella', 'German Shepherd', 70.25, 5),
(4, 'Charlie', 'Golden Retriever', 68.00, 3),
(5, 'Lucy', 'Bulldog', 50.75, 4),
(6, 'Cooper', 'Beagle', 30.20, 2),
(7, 'Daisy', 'Poodle', 25.50, 7),
(8, 'Rocky', 'Boxer', 60.00, 5),
(9, 'Molly', 'Dachshund', 20.10, 6),
(10, 'Bailey', 'Siberian Husky', 55.80, 4);

SELECT dogid, dogname from dogs;

--  DROP table walk_dogs;
 
 -- DROP table dogs;
 
 USE lana_dog_walking;


INSERT INTO Dogs (CustomerID, DogName, Breed, Weight, Age)
VALUES
(1, 'Luna', 'Pit Bull Terrier', 55.00, 4),
(2, 'Max', 'Labrador Retriever', 65.50, 6),
(3, 'Bella', 'German Shepherd', 70.25, 5),
(4, 'Charlie', 'Golden Retriever', 68.00, 3),
(5, 'Lucy', 'Bulldog', 50.75, 4),
(6, 'Cooper', 'Beagle', 30.20, 2),
(7, 'Daisy', 'Poodle', 25.50, 7),
(8, 'Rocky', 'Boxer', 60.00, 5),
(9, 'Molly', 'Dachshund', 20.10, 6),
(10, 'Bailey', 'Siberian Husky', 55.80, 4);

CREATE TABLE Dogs (
    DogID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    DogName VARCHAR(50),
    Breed VARCHAR(50),
    Weight DECIMAL(5,2),
    Age INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Dogs (CustomerID, DogName, Breed, Weight, Age)
VALUES
(1, 'Luna', 'Pit Bull Terrier', 55.00, 4),
(2, 'Max', 'Labrador Retriever', 65.50, 6),
(3, 'Bella', 'German Shepherd', 70.25, 5),
(4, 'Charlie', 'Golden Retriever', 68.00, 3),
(5, 'Lucy', 'Bulldog', 50.75, 4),
(6, 'Cooper', 'Beagle', 30.20, 2),
(7, 'Daisy', 'Poodle', 25.50, 7),
(8, 'Rocky', 'Boxer', 60.00, 5),
(9, 'Molly', 'Dachshund', 20.10, 6),
(10, 'Bailey', 'Siberian Husky', 55.80, 4);

CREATE TABLE Walk_Dogs (
    WalkID INT,
    DogID INT,
    PRIMARY KEY (WalkID, DogID),
    FOREIGN KEY (WalkID) REFERENCES Walks(WalkID),
    FOREIGN KEY (DogID) REFERENCES Dogs(DogID)
);
USE lana_dog_walking;

INSERT INTO Walks (Date, Time, Duration)
VALUES
('2026-06-01', '17:00:00', 45),
('2026-06-02', '09:30:00', 30),
('2026-06-03', '14:00:00', 60),
('2026-06-04', '11:15:00', 45),
('2026-06-05', '16:45:00', 50),
('2026-06-06', '08:00:00', 35),
('2026-06-07', '13:30:00', 40),
('2026-06-08', '18:00:00', 55),
('2026-06-09', '10:00:00', 30),
('2026-06-10', '15:20:00', 45);

USE lana_dog_walking;

INSERT INTO Walk_Dogs (WalkID, DogID)
VALUES
(1, 4),
(1, 2),
(2, 3),
(2, 5),
(3, 1),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10);

SELECT * FROM walk_dogs;

USE lana_dog_walkings;

INSERT INTO Payments (CustomerID, WalkID, PaymentDate, Amount)
VALUES
(1, 1, '2026-06-05', 25.00),
(2, 2, '2026-06-06', 30.00),
(3, 3, '2026-06-07', 35.00),
(4, 4, '2026-06-08', 28.00),
(5, 5, '2026-06-09', 40.00),
(6, 6, '2026-06-10', 22.00),
(7, 7, '2026-06-11', 33.00),
(8, 8, '2026-06-12', 27.00),
(9, 9, '2026-06-13', 31.00),
(10, 10, '2026-06-14', 29.00);

USE lana_dog_walkings;

SELECT * FROM Customers;
SELECT * FROM Dogs;
SELECT * FROM Walks;
SELECT * FROM Walk_Dogs;
SELECT * FROM Payments;

select breed, weight,age from dogs;
