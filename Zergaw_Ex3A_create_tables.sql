USE lana_dog_walking;
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(255)
);

CREATE TABLE Dogs (
    DogID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    DogName VARCHAR(50),
    Breed VARCHAR(50),
    Weight DECIMAL(5,2),
    Age INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Walks (
    WalkID INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    Time TIME,
    Duration INT
);

CREATE TABLE Walk_Dogs (
    WalkID INT,
    DogID INT,
    PRIMARY KEY (WalkID, DogID),
    FOREIGN KEY (WalkID) REFERENCES Walks(WalkID),
    FOREIGN KEY (DogID) REFERENCES Dogs(DogID)
);

CREATE TABLE Payments (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    WalkID INT,
    PaymentDate DATE,
    Amount DECIMAL(8,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (WalkID) REFERENCES Walks(WalkID)
);