CREATE DATABASE NHOM6
GO
 
CREATE TABLE KHACH_HANG (
   	makh    		CHAR(9) NOT NULL PRIMARY KEY,
   	cccd 	CHAR (12) ,
   	hotenkh 	NVARCHAR(50) NOT NULL,
   	sdt     		CHAR(10)  NOT NULL,
   	email    		CHAR(25) NOT NULL
)
CREATE TABLE VE (
   	madatcho	CHAR(7) NOT NULL PRIMARY KEY,
   	giave    		REAL NOT NULL ,
   	tinhtrangve   	NVARCHAR(15) ,
   	malv     		CHAR(3)
)
CREATE TABLE CHI_TIET_VE_KH (
   	madatcho	CHAR(7) NOT NULL ,
   	makh    		CHAR(9) NOT NULL  ,
   	slkhachhang   	INT  ,
   	masoghe         	CHAR(3) ,
   	primary key(madatcho,makh)
)
CREATE TABLE PHI_PHAT_SINH (
   	maloaiphi   CHAR(3) NOT NULL PRIMARY KEY,
   	tenloaiphi  NVARCHAR(20) NOT NULL ,
   	chiphi         	REAL
)
CREATE TABLE CHI_TIET_PHI_PHAT_SINH (
   	maloaiphi   	CHAR(3) NOT NULL,
   	madatcho	CHAR(7) NOT NULL,
   	primary key(maloaiphi,madatcho)
)
CREATE TABLE LOAI_VE(
   	malv   		CHAR(3) PRIMARY KEY,
   	tenlv    	 	NVARCHAR(100),  	
   	dieukienve 	NVARCHAR(500)
)
CREATE TABLE CHUYEN_XE(
   	macx            	CHAR(8) NOT NULL PRIMARY KEY ,
   	thoidiemdi  DATETIME  ,
   	thoidiemden DATETIME  ,
   	matx   CHAR(3)  ,
   	maxe   CHAR(3) NOT NULL
)
CREATE TABLE CHI_TIET_VE_CX(
   	macx            	CHAR(8) NOT NULL ,
   	madatcho      	CHAR(7) NOT NULL ,
   	slgheconlai 	 INT,
   	primary key(macx,madatcho)
)
CREATE TABLE TUYEN_XE (
   	matx     		CHAR(3) NOT NULL PRIMARY KEY,
   	khoangcach		INT
)
CREATE TABLE BEN_XE(
   	mabx            	CHAR(3) NOT NULL PRIMARY KEY ,
   	tenbenxe      	NVARCHAR(20) NOT NULL  ,
   	thanhpho       	NVARCHAR(30) NOT NULL
)
CREATE TABLE CHI_TIET_TUYEN_XE(
   	matx            	CHAR(3) NOT NULL,
   	mabx            	CHAR(3) NOT NULL ,
   	primary key(matx,mabx)
)
CREATE TABLE XE(
   	maxe   CHAR(3) NOT NULL PRIMARY KEY ,
   	biensoxe  CHAR(10) NOT NULL ,
   	slghe INT NOT NULL
)
CREATE TABLE DICH_VU_BO_TRO (
   	madv   CHAR(3) PRIMARY KEY,
   	tendv NVARCHAR(20) ,
   	giadv REAL
)
CREATE TABLE CHI_TIET_DICH_VU_BO_TRO (
   	madv     	CHAR(3),
   	madatcho	CHAR(7) ,
   	primary key(madv,madatcho)
)
CREATE TABLE HOA_DON(
   	mahd            	CHAR(10) NOT NULL PRIMARY KEY ,
   	thoigiantt      	DATETIME  ,
   	trigiahd       	REAL  NOT NULL,
   	madatcho        	CHAR(7) ,
   	manv            	CHAR(5) NOT NULL ,
   	makm            	CHAR(10)
)
CREATE TABLE NHAN_VIEN (
   	manv     	CHAR(5) NOT NULL PRIMARY KEY,
   	hotennv       	NVARCHAR(50) ,
   	sdtnv             	CHAR(20) ,
   	email    		CHAR(25) ,
   	gioitinh 		NVARCHAR(3) CHECK (gioitinh IN (N'nam', N'n?')),
   	ngaysinh 	DATE ,
   	diachinv		NVARCHAR(100) ,
   	bophan         	NVARCHAR(10) ,
   	macn     	CHAR(7)
)
CREATE TABLE CHI_NHANH_VAN_PHONG (
   	macn     	CHAR(7) NOT NULL PRIMARY KEY,
   	tencn   		NVARCHAR(20)  ,
   	diachicn		NVARCHAR(100)
)
CREATE TABLE KHUYEN_MAI(
   	makm            	CHAR(10) PRIMARY KEY ,
   	yeucau              	NVARCHAR(200)   ,
   	thoigianbdkm 			NVARCHAR(100)   ,
   	thoigianktkm 			NVARCHAR(100),
   	giam            		REAL
)
--1.T?o khoá ngo?i cho b?ng CHI_TIET_TUYEN_XE tham chi?u ??n khoá chính trong b?ng BEN_XE
ALTER TABLE CHI_TIET_TUYEN_XE ADD CONSTRAINT FK_1 FOREIGN KEY (mabx) REFERENCES BEN_XE (mabx)
 
--2.T?o khoá ngo?i cho b?ng CHI_TIET_TUYEN_XE tham chi?u ??n khoá chính trong b?ng TUYEN _XE
ALTER TABLE CHI_TIET_TUYEN_XE ADD CONSTRAINT FK_2 FOREIGN KEY (matx) REFERENCES TUYEN_XE (matx)
 
--3.T?o khoá ngo?i cho b?ng CHUYEN_XE tham chi?u ??n khoá chính trong b?ng TUYEN_XE
ALTER TABLE CHUYEN_XE ADD CONSTRAINT FK_3 FOREIGN KEY (matx) REFERENCES TUYEN_XE (matx)
 
--4.T?o khoá ngo?i cho b?ng CHUYEN_XE tham chi?u ??n khoá chính trong b?ng XE
ALTER TABLE CHUYEN_XE ADD CONSTRAINT FK_4 FOREIGN KEY (maxe) REFERENCES XE (maxe)
 
--5.T?o khoá ngo?i cho b?ng CHI_TIET_VE_CX tham chi?u ??n khoá chính trong b?ng CHUYEN_XE
ALTER TABLE CHI_TIET_VE_CX ADD CONSTRAINT FK_5 FOREIGN KEY (macx) REFERENCES CHUYEN_XE (macx)
 
--6.T?o khoá ngo?i cho b?ng CHI_TIET_VE_CX tham chi?u ??n khoá chính trong b?ng VE
ALTER TABLE CHI_TIET_VE_CX ADD CONSTRAINT FK_6 FOREIGN KEY (madatcho) REFERENCES VE (madatcho)
 
--7.T?o khoá ngo?i cho b?ng VE tham chi?u ??n khoá chính trong b?ng LOAI_VE
ALTER TABLE VE ADD CONSTRAINT FK_7 FOREIGN KEY (malv) REFERENCES LOAI_VE (malv)
 
--8.T?o khoá ngo?i cho b?ng CHI_TIET_DICH_VU_BO_TRO tham chi?u ??n khoá chính trong b?ng VE
ALTER TABLE CHI_TIET_DICH_VU_BO_TRO ADD CONSTRAINT FK_8 FOREIGN KEY (madatcho) REFERENCES VE (madatcho)
 
--9.T?o khoá ngo?i cho b?ng CHI_TIET_DICH_VU_BO_TRO tham chi?u ??n khoá chính trong b?ng DICH_VU_BO_TRO
ALTER TABLE CHI_TIET_DICH_VU_BO_TRO ADD CONSTRAINT FK_9 FOREIGN KEY (madv) REFERENCES DICH_VU_BO_TRO (madv)
 
--10.T?o khoá ngo?i cho b?ng CHI_TIET_PHI_PHAT_SINH tham chi?u ??n khoá chính trong b?ng VE
ALTER TABLE CHI_TIET_PHI_PHAT_SINH ADD CONSTRAINT FK_10 FOREIGN KEY (madatcho) REFERENCES VE (madatcho)
 
--11.T?o khoá ngo?i cho b?ng CHI_TIET_PHI_PHAT_SINH tham chi?u ??n khoá chính trong b?ng PHI_PHAT_SINH
ALTER TABLE CHI_TIET_PHI_PHAT_SINH ADD CONSTRAINT FK_11 FOREIGN KEY (maloaiphi) REFERENCES PHI_PHAT_SINH (maloaiphi)
 
--12.T?o khoá ngo?i cho b?ng CHI_TIET_VE_KH tham chi?u ??n khoá chính trong b?ng VE
ALTER TABLE CHI_TIET_VE_KH ADD CONSTRAINT FK_12 FOREIGN KEY (madatcho) REFERENCES VE (madatcho)
 
--13.T?o khoá ngo?i cho b?ng CHI_TIET_VE_KH tham chi?u ??n khoá chính trong b?ng KHACH_HANG
ALTER TABLE CHI_TIET_VE_KH ADD CONSTRAINT FK_13 FOREIGN KEY (makh) REFERENCES KHACH_HANG (makh)
 
--14.T?o khoá ngo?i cho b?ng HOA_DON tham chi?u ??n khoá chính trong b?ng VE
ALTER TABLE HOA_DON ADD CONSTRAINT FK_14 FOREIGN KEY (madatcho) REFERENCES VE (madatcho)
 
--15.T?o khoá ngo?i cho b?ng HOA_DON tham chi?u ??n khoá chính trong b?ng KHUYEN_MAI
ALTER TABLE HOA_DON ADD CONSTRAINT FK_15 FOREIGN KEY (makm) REFERENCES KHUYEN_MAI (makm)
 
--16.T?o khoá ngo?i cho b?ng HOA_DON tham chi?u ??n khoá chính trong b?ng NHAN_VIEN
ALTER TABLE HOA_DON ADD CONSTRAINT FK_16 FOREIGN KEY (manv) REFERENCES NHAN_VIEN (manv)
 
--17.T?o khoá ngo?i cho b?ng NHAN_VIEN tham chi?u ??n khoá chính trong b?ng CHI_NHANH_VAN_PHONG
ALTER TABLE NHAN_VIEN ADD CONSTRAINT FK_17 FOREIGN KEY (macn) REFERENCES CHI_NHANH_VAN_PHONG (macn)
--T?O RÀNG BU?C B?NG TRIGGER
--RB1: Khách hàng ch? ???c ??t t?i ?a 5 ch? trong m?i l?n ??t vé.
GO
CREATE TRIGGER tr_1 ON CHI_TIET_VE_KH
AFTER INSERT, UPDATE
AS
DECLARE @SLkhachhang int
SELECT @SLkhachhang = SLkhachhang
FROM INSERTED
IF(@Slkhachhang>5)
BEGIN
PRINT('Khách hàng ch? ???c ??t t?i ?a 5 ch? trong m?i l?n ??t vé, thay ??i không ???c th?c hi?n!')
ROLLBACK TRANSACTION
END
 
--RB2: Hoá ??n ph?i ???c l?p b?i 1 nhân viên ? b? ph?n bán vé.
GO
CREATE TRIGGER tr_2_1 ON HOA_DON
AFTER INSERT, UPDATE
AS
DECLARE @manv CHAR(7)
SELECT @manv= manv
FROM INSERTED
IF @manv IN (SELECT manv FROM NHAN_VIEN WHERE bophan<> 'bán vé')
BEGIN
PRINT('Hoá ??n ph?i ???c l?p b?i 1 nhân viên ? b? ph?n bán vé, thay ??i không ???c th?c hi?n!')
ROLLBACK TRANSACTION
END
 
GO
CREATE TRIGGER tr_2_2 ON NHAN_VIEN
AFTER UPDATE
AS
DECLARE @manv CHAR(7), @bophan NVARCHAR(20)
SELECT @manv= manv, @bophan=bophan
FROM INSERTED
IF @manv IN (SELECT manv FROM HOA_DON) AND @bophan <> 'bán vé'
BEGIN
PRINT('Hoá ??n ph?i ???c l?p b?i 1 nhân viên ? b? ph?n bán vé, thay ??i không ???c th?c hi?n!')
ROLLBACK TRANSACTION
END
 
--RB3: 1 vé dành cho ít nh?t 1 khách hàng
GO
CREATE TRIGGER tr_3 ON CHI_TIET_VE_KH
AFTER INSERT, UPDATE
AS
DECLARE @SLkhachhang INT
SELECT @SLkhachhang= SLkhachhang
FROM INSERTED
IF(@SLkhachhang<1)
BEGIN
PRINT('1 vé dành cho ít nh?t 1 khách hàng , thay ??i không ???c th?c hi?n!')
ROLLBACK TRANSACTION
END
 
--RB4: 1 tuy?n xe liên quan ??n ít nh?t 2 b?n xe
GO
CREATE TRIGGER tr_4 ON CHI_TIET_TUYEN_XE
AFTER INSERT, UPDATE
AS
DECLARE @soBX INT, @matx CHAR(10);
 
SELECT @matx= matx
FROM INSERTED;
 
SELECT @soBX=COUNT(*)
FROM CHI_TIET_TUYEN_XE
WHERE matx=@matx;
 
IF(@soBX<2)
BEGIN
PRINT('1 tuy?n xe liên quan ??n ít nh?t 2 b?n xe, thay ??i không ???c th?c hi?n!')
ROLLBACK TRANSACTION
END
 
--RB5: ??i v?i m?i chuy?n xe, th?i ?i?m ?i luôn luôn n?m tr??c (nh? h?n) th?i ?i?m ??n
GO
CREATE TRIGGER tr_5 ON CHUYEN_XE
AFTER INSERT, UPDATE
AS
DECLARE @thoidiemdi datetime, @thoidiemden datetime
SELECT @thoidiemdi= thoidiemdi, @thoidiemden=thoidiemden
FROM INSERTED
IF(@thoidiemdi >= @thoidiemden)
BEGIN
PRINT('Th?i ?i?m ?i luôn luôn n?m tr??c (nh? h?n) th?i ?i?m ??n, thay ??i không ???c th?c hi?n!')
ROLLBACK TRANSACTION
END