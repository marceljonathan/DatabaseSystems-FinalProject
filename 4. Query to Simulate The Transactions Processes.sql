USE Uncover_Bionic
GO

--DML Syntax to simulate the transactions process for sales transactions
INSERT INTO SalesHeader VALUES
('SA046', 'ST008', 'CU002', '2021-12-21'),
('SA047', 'ST004', 'CU005', '2022-01-12')

INSERT INTO SalesDetail VALUES
('SA046', 'BI725', 3),
('SA046', 'BI888', 5),
('SA047', 'BI439', 7),
('SA047', 'BI102', 18),
('SA047', 'BI300', 12)


--DML Syntax to simulate the transactions process for purchase transactions
INSERT INTO PurchaseHeader VALUES
('PU036', 'ST001', 'VE860', '2021-12-27'),
('PU037', 'ST003', 'VE541', '2022-01-05')

INSERT INTO PurchaseDetail VALUES
('PU036', 'BI331', 5),
('PU036', 'BI200', 3),
('PU037', 'BI300', 9),
('PU037', 'BI439', 7)