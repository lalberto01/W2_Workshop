/*DROP SCHEMA IF EXISTS lana_dog_walking; 

Create SCHEMA lana_dog_walking; */

USE lana_dog_walking;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(255),
    phone_number VARCHAR(50),
    address VARCHAR(255)
);

CREATE TABLE dogs (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    dog_name VARCHAR(100),
    dog_breed VARCHAR(100),
    weight DECIMAL(5,2),
    age INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE walks (
    walk_id INT AUTO_INCREMENT PRIMARY KEY,
    walk_date DATE,
    walk_time TIME,
    duration INT,
    dog_id INT,
    FOREIGN KEY (dog_id) REFERENCES dogs(dog_id)
);

CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

