USE Uncover_Bionic
GO

--1
SELECT
    ST.StaffID,
    COUNT(PurchaseID) AS TotalPurchase,
    V.VendorName
FROM PurchaseHeader PH
    JOIN Staff ST ON PH.StaffID = ST.StaffID
    JOIN Vendor V ON PH.VendorID = V.VendorID
WHERE VendorName LIKE '%Tillman'
GROUP BY ST.StaffID, ST.StaffName, V.VendorName
HAVING COUNT(PurchaseID) > 1

--2
SELECT
	s.StaffID,
	StaffName,
	StaffSalary,
	[Total Bionic Sold] = SUM(QTY)
FROM Staff s
	JOIN SalesHeader sh ON s.StaffID = sh.StaffID
	JOIN SalesDetail sd ON sh.SalesID = sd.SalesID
WHERE StaffSalary BETWEEN 8000000 AND 10000000
GROUP BY s.StaffID, StaffName, StaffSalary
HAVING SUM(QTY) > 10

--3
SELECT
	sh.SalesID,
	CustomerName,
	CustomerGender,
	[Total Quantity Purchased] = SUM(QTY),
	[Total Bionic Purchased] = COUNT(sh.SalesID),
	CONVERT(VARCHAR, TransactionDate, 107) AS SalesDate
FROM Customer c
	JOIN SalesHeader sh ON c.CustomerID = sh.CustomerID
	JOIN SalesDetail sd ON sh.SalesID = sd.SalesID
WHERE CustomerGender LIKE 'Female'
GROUP BY sh.SalesID, CustomerName, CustomerGender, TransactionDate
HAVING SUM(QTY) > 7
	
--4
SELECT
	REPLACE(ph.PurchaseID, 'PU', 'Purchase ') AS [Purchase Id],
	COUNT(ph.PurchaseID) AS [Total Purchase Detail],
	MAX(b.Price) AS [Highest Bionic Price],
	TypeName
FROM PurchaseHeader ph
	JOIN PurchaseDetail pd ON ph.PurchaseID = pd.PurchaseID
	JOIN Bionic b ON pd.BionicID = b.BionicID
	JOIN BionicType bt ON b.TypeID = bt.TypeID
WHERE TypeName LIKE 'Hand'
GROUP BY ph.PurchaseID, TypeName
HAVING COUNT(ph.PurchaseID) > 1

--5
SELECT
    StaffName,
    CONCAT('Rp. ', StaffSalary) AS StaffSalary,
    StaffGender,
    CONVERT(VARCHAR, TransactionDate, 107) AS PurchaseDate,
    V.VendorName
FROM PurchaseHeader PH
    JOIN Staff ST ON PH.StaffID = ST.StaffID
    JOIN Vendor V ON PH.VendorID = V.VendorID,
    (
        SELECT
            AVG(StaffSalary) AS Average
        FROM Staff
    ) SUB
WHERE StaffSalary > SUB.Average AND YEAR(TransactionDate) = 2020

--6
SELECT
	sh.SalesID,
	s.StaffID,
	StaffSalary,
	StaffGender = LEFT(StaffGender, 1),
	ProductName AS BionicName,
	[Total Sold Price] = Price*QTY,
	CONVERT(VARCHAR, TransactionDate, 107) AS SalesDate
FROM Staff s
	JOIN SalesHeader sh ON s.StaffID = sh.StaffID
	JOIN SalesDetail sd ON sh.SalesID = sd.SalesID
	JOIN Bionic b ON sd.BionicID = b.BionicID
	JOIN BionicType bt ON b.TypeID = bt.TypeID,
	(
		SELECT
			AVG(Price) AS averageprice
		FROM Bionic
	) AVGSUB
WHERE StaffSalary > 5000000 AND (Price*QTY) > AVGSUB.averageprice
--Asumsi soal nomor 6: average of bionic price from total transaction. Total transaction adalah jumlah seluruh harga bionic

--7
SELECT
    REPLACE(sh.SalesID,'SA','Sales ') AS SalesId,
    CONVERT(VARCHAR, TransactionDate, 107) AS SalesDate,
    CONCAT(SUM(QTY),' Pc(s)') AS [Total Quantity],
    ProductName AS BionicName,
    TypeName,
    TypeDurability
FROM SalesHeader sh
	JOIN SalesDetail sd ON sh.SalesID = sd.SalesID
	JOIN Bionic b ON sd.BionicID = b.BionicID
	JOIN BionicType bt ON b.TypeID = bt.TypeID,
	(
		SELECT
			 AVG(TypeDurability) as avgdurability
		FROM BionicType
	) Subquery
WHERE YEAR(TransactionDate) > 2016
GROUP BY sh.SalesID, ProductName, TypeName, TypeDurability, TransactionDate, Subquery.avgdurability
HAVING TypeDurability < Subquery.avgdurability

--8
SELECT 
    REPLACE(VendorID, 'VE', 'Vendor') AS VendorId,
    CONCAT(SUM(QTY), ' Pc(s)') AS [Total Quantity],
    b.BionicID,
    TypeName,
    TypeDurability
FROM PurchaseHeader PH
    JOIN PurchaseDetail PD ON PH.PurchaseID = PD.PurchaseID
    JOIN Bionic B ON PD.BionicID = B.BionicID
    JOIN BionicType BT ON BT.TypeID = B.TypeID,
    (
        SELECT 
          MAX(Stock) as MaximumBionicStock
        FROM Bionic
    ) SAB
WHERE TypeName LIKE 'Eye'
GROUP BY VendorID, B.BionicID, TypeName, TypeDurability, SAB.MaximumBionicStock
HAVING SUM(QTY) >= SAB.MaximumBionicStock
ORDER BY [Total Quantity] DESC

--9
GO
CREATE VIEW LoyalCustomer
AS
SELECT 
    CS.CustomerID, 
	CustomerName, 
	CustomerGender,
	COUNT(SH.SalesID) AS [Total Transaction],
	CONCAT(SUM(QTY), ' Pc(s)') AS TotalBionicBought
FROM Customer CS
    JOIN SalesHeader SH ON CS.CustomerID = SH.CustomerID
	JOIN SalesDetail SD ON SH.SalesID = SD.SalesID
GROUP BY CS.CustomerId, CustomerName, CustomerGender
HAVING COUNT(SH.SalesID) > 1 AND SUM(QTY) > 10
GO

--10
GO
CREATE VIEW StaffPurchaseRecap
AS
SELECT 
    ST.StaffID,
    StaffName,
    StaffSalary,
    COUNT(PH.PurchaseID) AS [Total Purchase Finished],
    SUM(QTY) AS [Total Bionic Purchased]
FROM PurchaseHeader PH
    JOIN Staff ST ON PH.StaffID = ST.StaffID
    JOIN PurchaseDetail PD ON PH.PurchaseID = PD.PurchaseID
WHERE YEAR(TransactionDate) > 2016
GROUP BY ST.StaffID, StaffName, StaffSalary, TransactionDate
HAVING COUNT(PH.PurchaseID) > 1
GO