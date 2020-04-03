CREATE TABLE Invoices (InvoiceID int, Date int, Car int, CustomerID int, SalesStaffID int);
CREATE TABLE Customer (CustomerID int, Phone int, Email int, Address varchar(200), City varchar(50), State varchar(50), Country varchar(50), Postal int);
CREATE TABLE Salesperson (StaffID int, Name varchar(50), Store  varchar(50));
CREATE TABLE Car (VIN  int, Manufacturer varchar(20), Model varchar(200), Year int, Color varchar(50));
ALTER TABLE Car DROP COLUMN Manufacturer;
ALTER TABLE Car ADD Manufacturer VARCHAR(17);
ALTER TABLE Car ADD ID int;
ALTER TABLE Car DROP COLUMN VIN;
ALTER TABLE Car ADD VIN VARCHAR(17);
ALTER TABLE Customer ADD ID int;
ALTER TABLE Customer DROP COLUMN Phone;
ALTER TABLE Customer ADD Phone varchar(20);
ALTER TABLE Customer ADD Name varchar(20);
ALTER TABLE Salesperson ADD ID int;
DROP TABLE Invoices;
CREATE TABLE Invoices (InvoiceID int, Date date, Car int, CustomerID int, SalesStaffID int);
ALTER TABLE Invoices ADD ID int;
ALTER TABLE Customer DROP COLUMN Email;
ALTER TABLE Customer ADD Email varchar(50)