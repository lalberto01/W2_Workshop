DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

-- Customers (no dependencies)
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100)
);

-- Pets (depends on Customers)
CREATE TABLE Pets (
    pet_id INT PRIMARY KEY,
    pet_name VARCHAR(100),
    species VARCHAR(50),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Walks (depends on Pets)
CREATE TABLE Walks (
    walk_id INT PRIMARY KEY,
    pet_id INT,
    walk_date DATETIME,
    duration_minutes INT,
    FOREIGN KEY (pet_id) REFERENCES Pets(pet_id)
);