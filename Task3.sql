create database task3;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName TEXT,
    Country TEXT,
    Age INT
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product TEXT,
    Quantity INT,
    Price int,
    OrderDate DATE

);
INSERT INTO Customers
VALUES
(1,'teju','delhi',25),
(2,'Amir','UK',30),
(3,'Bob','hyderabad',28);

INSERT INTO Orders
VALUES
(101,1,'Laptop',1,800,'2024-01-10'),
(102,2,'Phone',2,600,'2024-02-15'),
(103,1,'Mouse',3,20,'2024-03-20'),
(104,3,'Keyboard',1,50,'2024-04-05');

select *from customers;

select *
from customers
where age > 25;

select *
from customers
order by CustomerName desc;

select *from orders
order by price desc;

select Quantity,count(*) As totalQuantity
from orders
group by Quantity;

select
c.CustomerName ,
c.Country,
c.Age,
o.orderID,
o.Product,
O.Price,
o.OrderDate
from customers c
inner join orders o 
on c.CustomerID=o.CustomerID;

##LEFT JOIN

select
c.CustomerName ,
o.Product
from customers c
Left join orders o 
on c.CustomerID=o.CustomerID;

##RIGHT JOIN
select
c.CustomerName ,
o.Product
from customers c
right join orders o 
on c.CustomerID=o.CustomerID;

##SUBQUERY

select CustomerName,Age
from customers
where Age <
(
select avg(30)
from customers
);

select product,Price
from orders
where Price >
(
select avg(price)
from orders
);

SELECT SUM(Price * Quantity) AS TotalSales
FROM Orders;

SELECT avg(Price ) AS AverageSales
FROM Orders;

##VIEW
CREATE VIEW Details AS
SELECT Price, Product
FROM orders;

#Indexes
CREATE INDEX idx_customerID
ON Orders(CustomerID);

select*
from orders
where CustomerID=3



