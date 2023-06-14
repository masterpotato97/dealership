create database MartiansDealership;


create table MartiansDealership(
	id INT PRIMARY KEY,
    name VARCHAR(255)
);
CREATE TABLE Salespersons (
    salesperson_id INT PRIMARY KEY,
    salesperson_name VARCHAR(255)
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255)
);

CREATE TABLE Cars (
    car_id INT PRIMARY KEY,
    car_name VARCHAR(255),
    salesperson_id INT,
    customer_id INT,
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons(salesperson_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE Invoices (
    invoice_id INT PRIMARY KEY,
    car_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons(salesperson_id)
);

CREATE TABLE ServiceTickets (
    service_ticket_id INT PRIMARY KEY,
    car_id INT,
    customer_id INT,
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE ServiceRecords (
    service_record_id INT PRIMARY KEY,
    car_id INT,
    service_ticket_id INT,
    mechanic_id INT,
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),
    FOREIGN KEY (service_ticket_id) REFERENCES ServiceTickets(service_ticket_id)
);

CREATE TABLE Mechanics (
    mechanic_id INT PRIMARY KEY,
    mechanic_name VARCHAR(255)
);
CREATE TABLE MechanicsCars (
    mechanic_id INT,
    car_id INT,
    FOREIGN KEY (mechanic_id) REFERENCES Mechanics(mechanic_id),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id)
);

insert into MartiansDealership(id,name)
values(1,'Martians Dealership');

select * from MartiansDealership;

insert into Cars (car_id, car_name)
VALUES (1, 'Toyota Camry'),
       (2, 'Honda Civic');
      
INSERT INTO Salespersons (salesperson_id, salesperson_name)
VALUES (1, 'William Smith'),
       (2, 'Tupac');

INSERT INTO Customers (customer_id, customer_name)
VALUES (1, 'Adam Johnson'),
       (2, 'Emily Davis');
      
 INSERT INTO Invoices (invoice_id, car_id, salesperson_id)
VALUES (1, 1, 1);

INSERT INTO ServiceTickets (service_ticket_id, car_id, customer_id)
VALUES (1, 2, 2);

INSERT INTO ServiceRecords (service_record_id, car_id, service_ticket_id)
VALUES (1, 1, 1),
       (2, 2, 1);
INSERT INTO Mechanics (mechanic_id, mechanic_name)
VALUES (1, 'Mike Johnson'),
       (2, 'Sarah Anderson');
  INSERT INTO MechanicsCars (mechanic_id, car_id)
VALUES (1, 1),
       (2, 2);
      