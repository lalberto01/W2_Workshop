USE lana_dog_walking;
INSERT INTO Customer
(`customer_ID`, `First name`, `Last name`, `phone number`, `Email`, `Address`)
VALUES
(2, 'James', 'Walker', '704-555-2345', 'james.walker@email.com', '45 Pine Ave, Charlotte, NC'),
(3, 'Sophia', 'Nguyen', '704-555-3456', 'sophia.nguyen@email.com', '78 Maple Dr, Charlotte, NC'),
(4, 'Michael', 'Johnson', '704-555-4567', 'michael.johnson@email.com', '22 Elm St, Charlotte, NC'),
(5, 'Emily', 'Davis', '704-555-5678', 'emily.davis@email.com', '90 Cedar Ln, Charlotte, NC'),
(6, 'Daniel', 'Martinez', '704-555-6789', 'daniel.martinez@email.com', '31 Birch Rd, Charlotte, NC'),
(7, 'Olivia', 'Brown', '704-555-7890', 'olivia.brown@email.com', '14 Spruce Way, Charlotte, NC'),
(8, 'Ethan', 'Wilson', '704-555-8901', 'ethan.wilson@email.com', '67 Willow St, Charlotte, NC'),
(9, 'Isabella', 'Taylor', '704-555-9012', 'isabella.taylor@email.com', '11 Chestnut Blvd, Charlotte, NC'),
(10, 'Liam', 'Anderson', '704-555-0123', 'liam.anderson@email.com', '55 Poplar Ct, Charlotte, NC'),
(11, 'Mia', 'Thomas', '704-555-1122', 'mia.thomas@email.com', '88 Dogwood Dr, Charlotte, NC');

INSERT INTO Dogs
(pet_ID, Customer_ID, pet_name, Breed, weight, Age)
VALUES
(1, 2, 'Buddy', 'Golden Retriever', 65, 5),
(2, 3, 'Luna', 'Labrador Retriever', 55, 3),
(3, 4, 'Max', 'German Shepherd', 75, 6),
(4, 5, 'Bella', 'Poodle', 45, 4),
(5, 6, 'Charlie', 'Bulldog', 50, 7),
(6, 7, 'Rocky', 'Beagle', 35, 2),
(7, 8, 'Daisy', 'Shih Tzu', 12, 3),
(8, 9, 'Cooper', 'Husky', 60, 4),
(9, 10, 'Milo', 'Dachshund', 20, 5),
(10, 11, 'Sadie', 'Border Collie', 40, 6);
INSERT INTO Walks (Walk_ID, Dog_ID, Start_time, duration)
VALUES
(1, 1, '08:00:00', 30),
(2, 2, '08:30:00', 45),
(3, 3, '09:00:00', 40),
(4, 4, '09:30:00', 25),
(5, 5, '10:00:00', 60),
(6, 6, '10:30:00', 35),
(7, 7, '11:00:00', 20),
(8, 8, '11:30:00', 50),
(9, 9, '12:00:00', 30),
(10, 10, '12:30:00', 55);
INSERT INTO Walks (Walk_ID, Dog_ID, Start_time, duration)
VALUES (1, 1, '08:00:00', 30);
INSERT INTO Payments (Payment_ID, Customer_ID, Walk_ID, Payment_date, Amount)
VALUES
(1, 2, 1, '2026-04-17', 25.00),
(2, 3, 2, '2026-04-17', 30.00),
(3, 4, 3, '2026-04-17', 28.00),
(4, 5, 4, '2026-04-17', 20.00),
(5, 6, 5, '2026-04-17', 35.00),
(6, 7, 6, '2026-04-17', 22.00),
(7, 8, 7, '2026-04-17', 18.00),
(8, 9, 8, '2026-04-17', 32.00),
(9, 10, 9, '2026-04-17', 25.00),
(10, 11, 10, '2026-04-17', 40.00);
SELECT * FROM customers;
