USE lana_dog_walking;

INSERT INTO Customers (first_name, last_name, email, phone_number, address)
VALUES
('John', 'Smith', 'john.smith@email.com', '7045551111', '456 Oak St'),
('Maria', 'Lopez', 'maria.lopez@email.com', '7045552222', '789 Pine St'),
('David', 'Johnson', 'david.j@email.com', '7045553333', '321 Maple Ave'),
('Ashley', 'Brown', 'ashley.b@email.com', '7045554444', '654 Cedar Rd'),
('Michael', 'Davis', 'michael.d@email.com', '7045555555', '987 Birch Ln'),
('Emily', 'Wilson', 'emily.w@email.com', '7045556666', '159 Walnut St'),
('Chris', 'Martinez', 'chris.m@email.com', '7045557777', '753 Cherry St'),
('Jessica', 'Taylor', 'jessica.t@email.com', '7045558888', '852 Spruce St'),
('Daniel', 'Anderson', 'daniel.a@email.com', '7045559999', '951 Poplar St'),
('Sarah', 'Thomas', 'sarah.t@email.com', '7045550000', '147 Elm St');

INSERT INTO Dogs (customer_id, dog_name, dog_breed, weight, age)
VALUES
(1, 'Max', 'Golden Retriever', 65, 3),
(2, 'Bella', 'Labrador', 55, 4),
(3, 'Rocky', 'German Shepherd', 75, 5),
(4, 'Lucy', 'Poodle', 40, 2),
(5, 'Buddy', 'Beagle', 30, 6),
(6, 'Daisy', 'Bulldog', 50, 3),
(7, 'Charlie', 'Husky', 60, 4),
(8, 'Luna', 'Shih Tzu', 15, 2),
(9, 'Cooper', 'Boxer', 70, 5),
(10, 'Molly', 'Chihuahua', 10, 1);

INSERT INTO Payments (customer_id, payment_date, amount)
VALUES
(1, '2026-04-01', 25.00),
(2, '2026-04-02', 30.00),
(3, '2026-04-03', 20.00),
(4, '2026-04-04', 35.00),
(5, '2026-04-05', 28.00),
(6, '2026-04-06', 22.00),
(7, '2026-04-07', 40.00),
(8, '2026-04-08', 18.00),
(9, '2026-04-09', 33.00),
(10, '2026-04-10', 27.00);

INSERT INTO Walks (walk_date, walk_time, duration, dog_id)
VALUES
('2026-04-01', '09:00:00', 30, 1),
('2026-04-02', '10:00:00', 45, 2),
('2026-04-03', '11:00:00', 30, 3),
('2026-04-04', '12:00:00', 60, 4),
('2026-04-05', '13:00:00', 30, 5),
('2026-04-06', '14:00:00', 45, 6),
('2026-04-07', '15:00:00', 30, 7),
('2026-04-08', '16:00:00', 60, 8),
('2026-04-09', '17:00:00', 30, 9),
('2026-04-10', '18:00:00', 45, 10);

