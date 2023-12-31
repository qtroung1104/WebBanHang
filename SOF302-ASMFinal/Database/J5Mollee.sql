USE master
GO
CREATE DATABASE J5Mollee
GO
USE J5Mollee
GO
CREATE TABLE Accounts (
	username varchar(50) NOT NULL,
	password varchar(50) NOT NULL,
	fullname nvarchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	activated bit NOT NULL,
	admin bit NOT NULL,
	img varchar(50) NULL,
	token varchar(50) NULL,
	CONSTRAINT PK_Accounts PRIMARY KEY CLUSTERED (username)
)
GO
CREATE TABLE Categories (
	id int IDENTITY(1,1) NOT NULL,
	name nvarchar(50) NOT NULL,
	CONSTRAINT PK_Categories PRIMARY KEY CLUSTERED (id)
)
GO
CREATE TABLE OrderDetails (
	id int IDENTITY(1,1) NOT NULL,
	price float NOT NULL,
	quantity int NOT NULL,
	orderid int NOT NULL,
	productid int NOT NULL,
	CONSTRAINT PK_OrderDetails PRIMARY KEY CLUSTERED (id)
)
GO
CREATE TABLE Orders (
	id int IDENTITY(1,1) NOT NULL,
	address nvarchar(50) NOT NULL,
	phone varchar(11) NOT NULL,
	createdate date NOT NULL,
	username varchar(50) NOT NULL,
	CONSTRAINT PK_Orders PRIMARY KEY CLUSTERED (id)
)
GO
CREATE TABLE Products (
	id int IDENTITY(1,1) NOT NULL,
	name nvarchar(50) NOT NULL,
	price float NOT NULL,
	createdate date NOT NULL,
	available bit NOT NULL,
	img varchar(50) NULL,
	description nvarchar(255) NULL,
	categoryid int NOT NULL,
	CONSTRAINT PK_Products PRIMARY KEY CLUSTERED (id)
)
GO
-- Thêm người dùng
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('admin', '123', N'Nguyễn Văn A', 'duyplus1999@gmail.com', 1, 1, 'cherry.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('bmaclee2', '3Jg7yz', N'Xuân Mã', 'xuanma@cisco.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('cbatille', 'XE3t9c', N'Phong Giao', 'pgiao@cbsnews.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('crafeoa', 'BFuV7V', N'Huỳnh Kim', 'hkimad4@mail.biz', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('dstewart', '2le6pU', N'Thoa Bùi', 'thoabuip@yandex.ru', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('duyplus', '123', N'Nguyễn Hoàng Duy', 'duyplusdz@gmail.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('gsipper9', 'sfj6qZ', N'Mỹ Cát', 'mycat421@yahoo.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('hfoucar5', 'jLQJfD', N'Ân Hình', 'anhinhh@tiny.net', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('hgoomesh', 'SXgySV', N'Kiên Ninh', 'kiemniinh@gmail.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('hnorgan8', N'AtoQdc', N'Trúc Vi', 'vitruccc@hotmail.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('kpenritg', 'oc6tcL', N'Quang Khương', 'qkhung55@gmail.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('mlovejoy3', 'wosJl8', N'Thái Cung', 'thaicng1@vinaa.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('ngerdez4', 'OHIvre', N'Thọ Thiều', 'thothiue@zume.it', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('pcaelnic', 'XteWiS', N'Quyền Chung', 'qchungn@hotmai.de', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('pcowell1', 'aycIan', N'Nhã Đan', 'nhdam512@yahoo.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('pdolane', 'VG0edk', N'Vỹ Quản', 'quanvyyy@gmail.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('rfealeyi', 'Fcyh7n', N'Hải Tiêu', 'tieuhaii@vinaora.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('tgilletb', 'avBwbS', N'Thành Thịnh', 'ththinh12@yahoo.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('tjerach7', 'aIb7Od', N'Phúc Thôi', 'phucth0i@hotmai.org', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('vyahin6', 'qMe6Uq', N'Trưởng Bùi', 'truongb22@gmail.com', 1, 0, 'noavt.png', '')
-- Thêm chuyên mục
SET IDENTITY_INSERT Categories ON
INSERT INTO Categories (id, name) VALUES (1, N'Quần Áo')
INSERT INTO Categories (id, name) VALUES (2, N'Giày')
INSERT INTO Categories (id, name) VALUES (3, N'Bóng')
INSERT INTO Categories (id, name) VALUES (4, N'Găng Tay')
INSERT INTO Categories (id, name) VALUES (5, N'Phụ Kiện')
SET IDENTITY_INSERT Categories OFF
-- Thêm chi tiết hoá đơn
SET IDENTITY_INSERT OrderDetails ON
INSERT INTO OrderDetails (id, price, quantity, orderid, productid) VALUES (1, 5, 3, 1, 4)
INSERT INTO OrderDetails (id, price, quantity, orderid, productid) VALUES (2, 10, 1, 1, 2)
INSERT INTO OrderDetails (id, price, quantity, orderid, productid) VALUES (4, 15, 5, 2, 10)
INSERT INTO OrderDetails (id, price, quantity, orderid, productid) VALUES (5, 20, 1, 2, 15)
INSERT INTO OrderDetails (id, price, quantity, orderid, productid) VALUES (6, 25, 2, 3, 20)
INSERT INTO OrderDetails (id, price, quantity, orderid, productid) VALUES (7, 30, 3, 3, 22)
INSERT INTO OrderDetails (id, price, quantity, orderid, productid) VALUES (8, 35, 6, 4, 27)
SET IDENTITY_INSERT OrderDetails OFF
-- Thêm hoá đơn
SET IDENTITY_INSERT Orders ON
INSERT INTO Orders (id, phone, address, createdate, username) VALUES (1, '0919993715', N'Phan Thiết', CAST('2022-05-28' AS Date), 'admin')
INSERT INTO Orders (id, phone, address, createdate, username) VALUES (2, '0334123456', N'Hồ Chí Minh', CAST('2022-04-12' AS Date), 'duyplus')
INSERT INTO Orders (id, phone, address, createdate, username) VALUES (3, '0983234567', N'Vũng Tàu', CAST('2022-03-15' AS Date), 'pcowell1')
SET IDENTITY_INSERT Orders OFF
-- Thêm sản phẩm
SET IDENTITY_INSERT Products ON
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (1, N'Áo Sân Nhà Đá Đội Tuyển Việt Nam 2022', 10, CAST('2023-04-30' AS Date), 1, '1.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 1)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (2, N'Áo Sân Khách Đá Đội Tuyển Việt Nam 2022', 10, CAST('2023-04-30' AS Date), 1, '2.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 1)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (3, N'Áo Sân Nhà Đội Tuyển Pháp', 10, CAST('2022-02-25' AS Date), 1, '5.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 1)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (4, N'Áo Sân Nhà Đội Tuyển Bồ Đào Nha', 10, CAST('2019-09-19' AS Date), 1, '7.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 1)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (5, N'Giày Mira Galaxy S1', 15, CAST('2020-09-19' AS Date), 1, 'g1.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 2)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (6, N'Giày Mira Gavin TF', 15, CAST('2022-04-30' AS Date), 1, 'g2.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 2)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (7, N'Bóng Fusal 2030 Gerustar Dán', 20, CAST('2020-09-19' AS Date), 1, 'b1.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 3)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (8, N'Bóng size 5 UCV 3,05', 20, CAST('2020-04-04' AS Date), 1, 'b2.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 3)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (9, N'Bóng size 4 Zocker Procter ZK4-P204', 20, CAST('2019-04-30' AS Date), 1, 'b3.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 3)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (10, N'Bóng size 4 UCV 2,05', 20, CAST('2020-09-19' AS Date), 1, 'b4.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 3)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (11, N'Bóng Futsal Molten tiêu chuẩn F9A1510', 20, CAST('2019-04-30' AS Date), 1, 'b5.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 3)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (12, N'Găng tay thủ môn Iwin Keepa A', 25, CAST('2019-04-30' AS Date), 1, 'gt1.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 4)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (13, N'Găng tay thủ môn Iwin Keepa B', 25, CAST('2021-04-30' AS Date), 1, 'gt2.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 4)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (14, N'Găng tay thủ môn Iwin Keepa PRO GK02', 25, CAST('2022-04-30' AS Date), 1, 'gt3.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 4)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (15, N'Găng tay thủ môn H3 Bengal', 25, CAST('2021-04-30' AS Date), 1, 'gt4.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 4)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (16, N'Găng tay thủ môn Iwin Keepa PRO GK01', 25, CAST('2019-04-30' AS Date), 1, 'gt5.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 4)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (17, N'Găng tay thủ môn HO Soccer Primary Protek Flat', 25, CAST('2019-04-30' AS Date), 1, 'gt6.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 4)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (18, N'Túi Trống Thể Thao', 5, CAST('2021-05-26' AS Date), 1, 't2.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (19, N'Túi Rút Ys', 5, CAST('2019-05-26' AS Date), 1, 't1.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (20, N'Tất Ống Đồng', 5, CAST('2021-05-26' AS Date), 1, 'tc1.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (21, N'Tất Chân Ngắn Trắng', 5, CAST('2019-05-26' AS Date), 1, 'tc3.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (22, N'Tất Chân Ngắn Đen', 5, CAST('2019-05-26' AS Date), 1, 'tc2.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (23, N'Tất Chân ChốngTrơn Dài Xám', 5, CAST('2022-03-04' AS Date), 1, 'tc4.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (24, N'Tất Chân Chống Trơn Đài Đen', 5, CAST('2019-03-22' AS Date), 1, 'tc5.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (25, N'Tất Chân Dài', 5, CAST('2022-03-04' AS Date), 1, 'tc6.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (26, N'Băng Keo Quấn', 5, CAST('2022-03-04' AS Date), 1, 'bang1.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (27, N'Bảo Vệ Ống Đồng Cam', 5, CAST('2020-02-25' AS Date), 1, 'c1.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (28, N'Bảo Vệ Ống Đồng Xanh', 5, CAST('2019-03-22' AS Date), 1, 'c2.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (29, N'Áo Bóng Đá Đội Tuyển Việt Nam', 10, CAST('2020-02-25' AS Date), 1, '3.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 1)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (30, N'Áo Bóng Đá Đội Tuyển Việt Nam', 10, CAST('2021-02-25' AS Date), 1, '4.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 1)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (31, N'Áo Sân Khách Đội Tuyển Bồ Đào Nha', 10, CAST('2020-02-25' AS Date), 1, '6.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 1)
SET IDENTITY_INSERT Products OFF
GO
ALTER TABLE OrderDetails  WITH CHECK ADD CONSTRAINT FK_OrderDetails_Products FOREIGN KEY(productid)
REFERENCES Products (id) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE OrderDetails  WITH CHECK ADD CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY(orderid)
REFERENCES Orders (id) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE OrderDetails CHECK CONSTRAINT FK_OrderDetails_Orders
GO
ALTER TABLE Orders  WITH CHECK ADD CONSTRAINT FK_Orders_Accounts FOREIGN KEY(username)
REFERENCES Accounts (username) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE Orders CHECK CONSTRAINT FK_Orders_Accounts
GO
ALTER TABLE Products  WITH CHECK ADD CONSTRAINT FK_Products_Categories FOREIGN KEY(categoryid)
REFERENCES Categories (id) ON UPDATE CASCADE ON DELETE CASCADE
GO