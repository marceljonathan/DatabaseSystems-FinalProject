CREATE DATABASE Uncover_Bionic
GO

USE Uncover_Bionic
GO

--1. Staff
CREATE TABLE [Staff](
	StaffID CHAR(5) PRIMARY KEY CHECK(StaffID like 'ST[0-9][0-9][0-9]'),
	StaffName VARCHAR(30) NOT NULL,
	StaffEmail VARCHAR(50) NOT NULL,
	StaffPhoneNumber VARCHAR(12) NOT NULL,
	StaffAddress VARCHAR(100) NOT NULL,
	StaffDateOfBirth DATE NOT NULL,
	StaffGender VARCHAR(6) CHECK(StaffGender = 'Male' OR StaffGender = 'Female') NOT NULL,
	StaffSalary INT NOT NULL
)

--2. Customer
CREATE TABLE [Customer](
	CustomerID CHAR(5) PRIMARY KEY CHECK(CustomerID LIKE 'CU[0-9][0-9][0-9]'),
	CustomerName VARCHAR(30) NOT NULL,
	CustomerPhoneNumber VARCHAR(12) NOT NULL,
	CustomerAddress VARCHAR(100) NOT NULL,
	CustomerGender VARCHAR(6) CHECK(CustomerGender = 'Male' OR CustomerGender = 'Female') NOT NULL,
	CustomerEmail VARCHAR(50) NOT NULL,
	CustomerDateOfBirth DATE NOT NULL,
)

--3. Vendor
CREATE TABLE [Vendor](
	VendorID CHAR(5) PRIMARY KEY CHECK(VendorID LIKE 'VE[0-9][0-9][0-9]'),
	VendorName VARCHAR(30) NOT NULL,
	VendorPhoneNumber VARCHAR(12) NOT NULL,
	VendorAddress VARCHAR(100) CHECK(LEN(VendorAddress) > 10) NOT NULL,
	VendorEmail VARCHAR(50) CHECK(VendorEmail LIKE '%@%') NOT NULL
)

--4. BionicType
CREATE TABLE [BionicType](
	TypeID CHAR(5) PRIMARY KEY CHECK(TypeID LIKE 'TY[0-9][0-9][0-9]'),
	TypeName VARCHAR(30) CHECK(TypeName = 'Hand' OR TypeName = 'Foot' OR TypeName = 'Leg' OR TypeName = 'Arm' OR TypeName = 'Eye') NOT NULL,
	TypeDurability INT CHECK(TypeDurability > 50 AND TypeDurability < 100) NOT NULL
)

--5. Bionic
CREATE TABLE [Bionic](
	BionicID CHAR(5) PRIMARY KEY CHECK(BionicID LIKE 'BI[0-9][0-9][0-9]'),
	TypeID CHAR(5) FOREIGN KEY REFERENCES [BionicType](TypeID) NOT NULL,
	ProductName VARCHAR(30) NOT NULL,
	Stock INT NOT NULL,
	LaunchDate DATE NOT NULL,
	Price INT NOT NULL
)

--6. PurchaseHeader
CREATE TABLE [PurchaseHeader](
	PurchaseID CHAR(5) PRIMARY KEY CHECK(PurchaseID LIKE 'PU[0-9][0-9][0-9]'),
	StaffID CHAR(5) FOREIGN KEY REFERENCES [Staff](StaffID) NOT NULL,
	VendorID CHAR(5) FOREIGN KEY REFERENCES [Vendor](VendorID) NOT NULL,
	TransactionDate DATE NOT NULL
)

--7. PurchaseDetail
CREATE TABLE [PurchaseDetail](
	PurchaseID CHAR(5) FOREIGN KEY REFERENCES [PurchaseHeader](PurchaseID),
	BionicID CHAR(5) FOREIGN KEY REFERENCES [Bionic](BionicID),
	QTY INT CHECK(QTY > 0) NOT NULL,
	PRIMARY KEY (PurchaseID, BionicID)
)

--8. SalesHeader
CREATE TABLE [SalesHeader](
	SalesID CHAR(5) PRIMARY KEY CHECK(SalesID LIKE 'SA[0-9][0-9][0-9]'),
	StaffID CHAR(5) FOREIGN KEY REFERENCES [Staff](StaffID) NOT NULL,
	CustomerID CHAR(5) FOREIGN KEY REFERENCES [Customer](CustomerID) NOT NULL,
	TransactionDate DATE NOT NULL
)

--9. SalesDetail
CREATE TABLE [SalesDetail](
	SalesID CHAR(5) FOREIGN KEY REFERENCES [SalesHeader](SalesID),
	BionicID CHAR(5) FOREIGN KEY REFERENCES [Bionic](BionicID),
	QTY INT CHECK(QTY > 0) NOT NULL,
	PRIMARY KEY (SalesID, BionicID)
)