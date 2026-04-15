# Requirements and Conceptual Model
Tihitina Zergaw, Lesley Alberto, and Saliem Araya. 
Gathering requirements End user- Lana
what will the end user need to be able to do? Registering customers, record payments, managing appointments, registering dogs, 
Catagories- Customers, Dogs, Walks, Payment 
Customers- Customer ID, First name, Last name, Phone number, Email, Address
Dogs- Dog ID, customer ID, dog name, dog breed, weight, age
Walks- Walk ID, Data, Time, Duration, Dog ID
Payments- Payment ID, Customer ID, Payment data, amount, apointment ID 
#Logical Model
A, Customers, Dogs, Walks, Payment
B, ID'S
C, Customer to dog One to many, customers to payment one to many, dogs to walks many to many 
D, dogs to walks many to many
