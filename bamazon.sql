CREATE DATABASE bamazon_db;
USE bamazon_db;

CREATE TABLE `products`(
  `itemid` INT NOT NULL auto_increment PRIMARY KEY,
  `productname` VARCHAR(100) NULL,
  `departmentname` VARCHAR(100) NULL,
  `price` DECIMAL(10,2) NULL,
  `StockQuntity` INT NULL
);

INSERT INTO Products (ProductName, DepartmentName, Price, StockQuntity) VALUES ('Flat Screen', 'Electronics', 1500.00, 80);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuntity) VALUES ('PlayStation 4', 'Electronics', 300.00, 500);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuntity) VALUES ('Blowdryer', 'Beauty', 30.00, 50);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuntity) VALUES ('Straightner', 'Beauty', 50.00, 45);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuntity) VALUES ('Whiskey', 'Alcohol', 35.00, 200);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuntity) VALUES ('Vodka', 'Alcohol', 30.00, 200);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuntity) VALUES ('Guitar', 'Musical Instruments', 800.00, 55);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuntity) VALUES ('Drums', 'Musical Instruments', 1000.00, 45);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuntity) VALUES ('Tent', 'Sports and Outdoors', 400.00, 100);
INSERT INTO Products (ProductName, DepartmentName, Price, StockQuntity) VALUES ('Kayak', 'Sports and Outdoors', 600.00, 50);
