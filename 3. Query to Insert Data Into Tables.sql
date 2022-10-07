USE Uncover_Bionic
GO

--Master Tables -> more than or equals 10 data
--Insert data untuk Staff
INSERT INTO Staff VALUES
('ST001', 'Amanda', 'amanda123@gmail.com', '081381674587', 'Jalan Mawar No. 18', '1998-01-01', 'Female', 4500000),
('ST002', 'Kelvin', 'kelvin098@gmail.com', '081375839202', 'Jalan Anggur No. 36', '2000-10-10', 'Male', 11000000),
('ST003', 'Iwan', 'iwan789@gmail.com', '081382917382', 'Jalan Melon No. 34', '2000-09-09', 'Male', 10000000),
('ST004', 'Dinda', 'dinda098@gmail.com', '081357398452', 'Jalan Matahari No. 24', '1998-04-04', 'Female', 6500000),
('ST005', 'Guntur', 'guntur123@gmail.com', '081356473828', 'Jalan Jeruk No. 30', '1999-07-07', 'Male', 8000000),
('ST006', 'Enji', 'enji765@gmail.com', '081319283746', 'Jalan Manggis No. 26', '1999-05-05', 'Female', 7000000),
('ST007', 'Handi', 'handi456@gmail.com', '081394857601', 'Jalan Nanas No. 32', '1999-08-08', 'Male', 9000000),
('ST008', 'Caca', 'caca789@gmail.com', '081314659813', 'Jalan Anggrek No. 22', '1998-03-03', 'Female', 6000000),
('ST009', 'Bryan', 'budi456@gmail.com', '081345871308', 'Jalan Melati No. 20', '1998-02-02', 'Male', 4000000),
('ST010', 'Fernando', 'fernando432@gmail.com', '081319283746', 'Jalan Jambu No. 28', '1999-06-06', 'Male', 7500000)

--Insert data untuk Bionic Type
INSERT INTO BionicType VALUES
('TY099', 'Eye', 55),
('TY111', 'Arm', 63),
('TY121', 'Hand', 81),
('TY123', 'Hand', 90),
('TY259', 'Eye', 92),
('TY270', 'Foot', 78),
('TY321', 'Foot', 87),
('TY618', 'Arm', 90),
('TY877', 'Eye', 88),
('TY900', 'Leg', 57)

--Insert data untuk Bionic
INSERT INTO Bionic VALUES
('BI102', 'TY900', 'B-Leg', 68, '2016-02-05', 16300000),
('BI191', 'TY259', 'MyEye', 18, '2017-08-15', 91000000),
('BI200', 'TY270', 'Foot X', 108, '2019-07-02', 6312000),
('BI300', 'TY321', 'Go Walk', 41, '2021-09-20', 14320000),
('BI331', 'TY111', 'Arm-y', 48, '2018-01-19', 18200000),
('BI439', 'TY123', 'A-Hand', 62, '2020-05-19', 19920000),
('BI566', 'TY877', 'Super Eye', 23, '2020-12-12', 112995000),
('BI725', 'TY099', 'Eye Vision', 15, '2018-06-14', 42375000),
('BI888', 'TY121', 'Handie', 81, '2021-03-27', 15110000),
('BI911', 'TY618', 'Future Arm', 31, '2019-04-28', 21420000)

--Insert data untuk Customer
INSERT INTO Customer VALUES 
('CU001', 'Arlando', '081282377522', 'Jl. Keadilan Raya', 'Male', 'alrand@zmail.com', '2000-07-12'),
('CU002', 'Arlo', '08121892522', 'Jl. Keadilan Raya', 'Male', 'arlo@zmail.com', '2000-3-26'),
('CU003', 'Rere', '08121893332', 'Jl. Onderdil Tukul', 'Female', 'rere@kmail.com', '1998-12-12'),
('CU004', 'Ahmad Halilintar', '08121475612', 'Jl. Keadilan Raya', 'Male', 'halilintar@smail.com', '1999-11-9'),
('CU005', 'Karla', '08198891829', 'Jl. Kentutu Ambon', 'Female', 'karl@jmail.net', '2000-11-12'),
('CU006', 'Bertold', '08121101946', 'Jl. Kemakmuran Indah', 'Male', 'beber@zmail.com', '2001-03-16'),
('CU007', 'Ziggiy', '08151891019', 'Jl. Kentutu Ambon', 'Male', 'zigger@kmail.com', '2000-04-1'),
('CU008', 'Bima Ronald', '08121891912', 'Jl. Kemakmuran Indah', 'Male', 'bimbim@zmail.com', '1999-10-2'),
('CU009', 'Wina Bersaudara', '08161891743', 'Jl. Kebebasan Berpendapat', 'Female', 'limau@zmail.com', '2000-06-20'),
('CU010', 'Andi Rimawan', '08121463822', 'Jl. Kentutu Ambon', 'Male', 'andiganteng@lmail.com', '2001-03-19')

--Insert data untuk vendor
INSERT INTO Vendor VALUES
('VE080', 'PT Siloam Bionic', '086690029673', 'Jalan Bagus No. 90J', 'supplies@siloambionic.com'),
('VE112', 'PT Makmur Terus', '089185108800', 'Jalan Buah Naga No. 72', 'cs_supply@makmurterus.com'),
('VE121', 'Bio Tillman', '0818606225', 'Jalan Kebon Mangga No. 38', 'cs.biotillman@biotillmanpindonesia.co.id'),
('VE211', 'PT Sinar Matahari', '088798889121', 'Jalan Bukit Agung No. 17A', 'supply@sinarmatahari.co.id'),
('VE388', 'Cahaya Medika Tillman', '085835450683', 'Jalan Sate Ayam No. 69', 'cs.cahayamedika@gmail.com'),
('VE541', 'PT Indonesia Medica', '083027360145', 'Jalan Kenangan No. 88', 'my_supplier@indonesiamedica.co.id'),
('VE761', 'ABC Company', '081211123331', 'Jalan Industri Utama No. 21', 'supplier@abccompany.com'),
('VE860', 'Sentra Bionic', '085292339264', 'Jalan Selalu Setia No. 101C', 'cs.healthandmedical@sentrabionic.com'),
('VE876', 'Terbit Terbenam', '0832926477', 'Jalan Sunter Raya No. 181 A-B', 'supplier.contact@terbiterbenam.co.id'),
('VE901', 'PT Sukses Jaya', '088749338084', 'Jalan Kemanggisan No. 12', 'contact@suksesjaya.co.id')



--Transaction Tables -> more than or equals 15 data
--Purchase Header
INSERT INTO PurchaseHeader VALUES
('PU014', 'ST003', 'VE080', '2020-11-25'),
('PU015', 'ST002', 'VE388', '2020-12-21'),
('PU016', 'ST007', 'VE860', '2020-12-27'),
('PU017', 'ST001', 'VE112', '2021-03-12'),
('PU018', 'ST009', 'VE121', '2021-05-11'),
('PU019', 'ST001', 'VE211', '2021-05-07'),
('PU020', 'ST006', 'VE121', '2021-05-27'),
('PU021', 'ST004', 'VE541', '2021-07-30'),
('PU022', 'ST004', 'VE860', '2021-07-30'),
('PU023', 'ST010', 'VE112', '2021-08-03'),
('PU024', 'ST005', 'VE901', '2021-08-13'),
('PU025', 'ST008', 'VE080', '2021-08-27'),
('PU026', 'ST003', 'VE388', '2021-09-18'),
('PU027', 'ST010', 'VE112', '2021-10-28'),
('PU028', 'ST002', 'VE761', '2021-11-15'),
('PU029', 'ST007', 'VE211', '2021-12-03'),
('PU030', 'ST006', 'VE876', '2021-12-09'),
('PU031', 'ST009', 'VE901', '2021-12-18'),
('PU032', 'ST009', 'VE121', '2022-01-02'),
('PU033', 'ST003', 'VE388', '2022-01-05'),
('PU034', 'ST009', 'VE388', '2022-01-08'),
('PU035', 'ST009', 'VE388', '2022-01-12')

--Sales Header
INSERT INTO SalesHeader VALUES
('SA031', 'ST001', 'CU001', '2021-02-19'),
('SA032', 'ST009', 'CU002', '2021-02-25'),
('SA033', 'ST006', 'CU005', '2021-03-17'),
('SA034', 'ST004', 'CU004', '2021-04-15'),
('SA035', 'ST003', 'CU009', '2021-04-23'),
('SA036', 'ST005', 'CU007', '2021-05-04'),
('SA037', 'ST008', 'CU003', '2021-05-11'),
('SA038', 'ST002', 'CU005', '2021-05-14'),
('SA039', 'ST004', 'CU004', '2021-05-16'),
('SA040', 'ST002', 'CU010', '2021-06-22'),
('SA041', 'ST007', 'CU008', '2021-07-14'),
('SA042', 'ST006', 'CU003', '2021-09-12'),
('SA043', 'ST005', 'CU002', '2021-09-12'),
('SA044', 'ST003', 'CU001', '2021-09-28'),
('SA045', 'ST010', 'CU006', '2021-11-01')



--Transaction Detail Tables -> more than or equals 25 data
--Purchase Detail
INSERT INTO PurchaseDetail VALUES
('PU014', 'BI200', 6),
('PU014', 'BI911', 4),
('PU015', 'BI725', 48),
('PU016', 'BI300', 7),
('PU016', 'BI566', 50),
('PU016', 'BI191', 2),
('PU017', 'BI331', 5),
('PU017', 'BI725', 115),
('PU017', 'BI191', 21),
('PU017', 'BI200', 5),
('PU018', 'BI911', 3),
('PU018', 'BI725', 72),
('PU018', 'BI102', 3),
('PU019', 'BI191', 1),
('PU019', 'BI102', 1),
('PU019', 'BI566', 63),
('PU020', 'BI300', 2),
('PU021', 'BI911', 2),
('PU021', 'BI331', 4),
('PU022', 'BI300', 4),
('PU022', 'BI439', 5),
('PU022', 'BI888', 2),
('PU023', 'BI725', 3),
('PU023', 'BI300', 6),
('PU024', 'BI200', 3),
('PU024', 'BI888', 4),
('PU025', 'BI331', 2),
('PU025', 'BI439', 4),
('PU026', 'BI888', 3),
('PU026', 'BI439', 2),
('PU027', 'BI888', 2),
('PU028', 'BI191', 42),
('PU029', 'BI191', 32),
('PU029', 'BI200', 1),
('PU029', 'BI102', 2),
('PU030', 'BI200', 4),
('PU031', 'BI191', 119)

--Sales Detail
INSERT INTO SalesDetail VALUES
('SA031', 'BI911', 1),
('SA031', 'BI888', 2),
('SA031', 'BI331', 6),
('SA032', 'BI200', 11),
('SA032', 'BI888', 5),
('SA033', 'BI102', 12),
('SA033', 'BI725', 2),
('SA034', 'BI566', 3),
('SA035', 'BI331', 13),
('SA035', 'BI911', 12),
('SA035', 'BI300', 8),
('SA036', 'BI331', 14),
('SA036', 'BI439', 4),
('SA037', 'BI300', 5),
('SA038', 'BI102', 5),
('SA038', 'BI300', 11),
('SA039', 'BI439', 3),
('SA039', 'BI566', 4),
('SA040', 'BI566', 13),
('SA040', 'BI911', 4),
('SA040', 'BI439', 1),
('SA041', 'BI725', 17),
('SA041', 'BI331', 5),
('SA042', 'BI300', 5),
('SA042', 'BI200', 3),
('SA043', 'BI200', 2),
('SA044', 'BI200', 18),
('SA044', 'BI911', 2),
('SA045', 'BI888', 2),
('SA045', 'BI102', 15)