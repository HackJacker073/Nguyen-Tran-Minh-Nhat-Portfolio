﻿INSERT INTO KHACH_HANG VALUEs ('KH0012345','1234567890',N'Nguyễn Văn Anh','0901234567','nguyenvananh@gmail.com');
INSERT INTO KHACH_HANG VALUEs ('KH0023456 ','0987654321',N'Trần Thị Bông','0912345678','tranthibong@gmail.com');
INSERT INTO KHACH_HANG VALUEs ('KH0026431','9876543210',N'Lê Văn Cường','0923456789','levancuong@gmail.com');
INSERT INTO KHACH_HANG VALUEs ('KH0022235','2345678901',N'Phạm Thị Dung','0934567890','phamthidung@gmail.com');

INSERT INTO LOAI_VE VALUEs ('GN',N'Giường nằm',N'Được miễn phí thay đổi giờ và ngày đi. Phí thay đổi hành trình được tính: 5.000 VND + chênh lệch giá.');
INSERT INTO LOAI_VE VALUEs ('LMS',N'Limousine',N'Nếu thay đổi trước ngày bay trước ngày khởi hành đầu tiên ghi trên vé: được phép thay đổi giờ, ngày, với phí 10.000 VND + chênh lệch giá.Từ ngày khởi hành: được phép thay đổi giờ ngày, bay với phí 15.000 VND + chênh lệch giá.');
INSERT INTO LOAI_VE VALUEs ('XK',N'Xe khách',N'Được miễn phí thay đổi giờ và ngày đi. Miễn phí thay đổi hành trình.');

INSERT INTO VE VALUEs ('A1B2C3D',180000,N'Đã xác nhận','LMS');
INSERT INTO VE VALUEs ('E4F5G6H',250000,N'Chưa xác nhận','GN');
INSERT INTO VE VALUEs ('I7J8K9L',130000,N'Đã xác nhận','XK');
INSERT INTO VE VALUEs ('M1N2O3P',200000,N'Đã xác nhận','GN');
INSERT INTO VE VALUEs ('Q4R5S6T',280000,N'Chưa xác nhận','GN');

 
INSERT INTO CHI_TIET_VE_KH VALUEs ('E4F5G6H ','KH0023456 ',3,'13');
INSERT INTO CHI_TIET_VE_KH VALUEs ('A1B2C3D ','KH0022235 ',1,'2');
INSERT INTO CHI_TIET_VE_KH VALUEs ('Q4R5S6T','KH0012345 ',1,'5');
INSERT INTO CHI_TIET_VE_KH VALUEs ('E4F5G6H ','KH0026431',4,'7');
 
INSERT INTO PHI_PHAT_SINH VALUEs ('VAT',N'Phí giá trị gia tăng',NULL);
INSERT INTO PHI_PHAT_SINH VALUEs ('CH',N'Phí đổi vé',10.000);

INSERT INTO CHI_TIET_PHI_PHAT_SINH VALUEs ('VAT','A1B2C3D');
INSERT INTO CHI_TIET_PHI_PHAT_SINH VALUEs ('CH','Q4R5S6T');

INSERT INTO TUYEN_XE VALUEs('11',226);
INSERT INTO TUYEN_XE VALUEs('17',251);
INSERT INTO TUYEN_XE VALUEs('15',372);

INSERT INTO BEN_XE VALUEs('WCS',N'Bến xe Miền Tây',N'TP.Hồ Chí Minh');
INSERT INTO BEN_XE VALUEs('KGS',N'Bến xe Kiên Giang',N'TP.Rạch Giá');
INSERT INTO BEN_XE VALUEs('ECS',N'Bến xe Miền Đông',N'TP. Hồ Chí Minh');


INSERT INTO CHI_TIET_TUYEN_XE VALUEs('11','WCS');
INSERT INTO CHI_TIET_TUYEN_XE VALUEs('17','KGS');
INSERT INTO CHI_TIET_TUYEN_XE VALUEs('15','ECS');
 
INSERT INTO XE VALUEs('71',N'51D-148.12','36');
INSERT INTO XE VALUEs('28',N'51C-168.21','36');
INSERT INTO XE VALUEs('15',N'51C-178.10','34');

INSERT INTO CHUYEN_XE VALUEs('FUTA1234','11:00','17:00','11','71');
INSERT INTO CHUYEN_XE VALUEs('FUTA2213','3:00','9:00','17','15');
INSERT INTO CHUYEN_XE VALUEs('FUTA3122','5:00','13:00','15','28');

INSERT INTO CHI_TIET_VE_CX VALUEs ('FUTA1234','E4F5G6H',13);
INSERT INTO CHI_TIET_VE_CX VALUEs ('FUTA2213','A1B2C3D',7);
INSERT INTO CHI_TIET_VE_CX VALUEs ('FUTA3122','Q4R5S6T',25);
 
INSERT INTO DICH_VU_BO_TRO VALUEs('TC',N'Bán kính 5km',NULL);
INSERT INTO DICH_VU_BO_TRO VALUEs('CPN',N'Chuyển phát nhanh',NULL);

INSERT INTO CHI_TIET_DICH_VU_BO_TRO VALUEs('TC','A1B2C3D');
INSERT INTO CHI_TIET_DICH_VU_BO_TRO VALUEs('CPN','Q4R5S6T');
 
INSERT INTO CHI_NHANH_VAN_PHONG VALUEs('HCM01',N' Hồ Chí Minh',N'32A Nguyễn Chí Thanh, P2, Q10');
INSERT INTO CHI_NHANH_VAN_PHONG VALUEs('HCM02',N' Hồ Chí Minh',N'395 Kinh Dương Vương, P.An Lạc, Q.Bình Tân');
INSERT INTO CHI_NHANH_VAN_PHONG VALUEs('HCM09',N'Hồ Chí Minh',N'Bến Xe An Sương, QL 22, Bà Diểm, Hooc Môn');
INSERT INTO CHI_NHANH_VAN_PHONG VALUEs('HCM12',N' Hồ Chí Minh',N'94 Cao Lầu, P2, Q6');

INSERT INTO NHAN_VIEN VALUEs('FT001',N'Nguyễn Thị hạnh','0919722545','hanh1023@gmail.com',N'Nữ','01/28/1997','3/1022,Q3,TP.HCM',N'bán vé','HCM01');
INSERT INTO NHAN_VIEN VALUEs('FT002',N'Trần Văn Quang','0916860804','quangtran.3@gmail.com',N'Nam','05/23/2003','43-45 VU LOI , Q5, TP.HCM',N'phụ xe','HCM02');
INSERT INTO NHAN_VIEN VALUEs('FT003',N'Lê Mai','0918345369','maichupy12@gmail.com',N'nữ','02/12/2002','177 Vũ Lỗi, Q8, TP.HCM',N'bán vé','HCM09');
INSERT INTO NHAN_VIEN VALUEs('FT004',N'Phạm Thuận','0169852741','phamthuanne112@gmail.com',N'nam','1/31/1998',N'119 Nguyễn Chí Thanh,Q5, TP.HCM',N'phụ xe','HCM12');
 
INSERT INTO KHUYEN_MAI VALUEs('FUTA60',N'Thanh toán lần đầu bằng Ví Momo và áp dụng mã ưu đãi',NULL,NULL,30);
INSERT INTO KHUYEN_MAI VALUEs('FUTAMOMO',N'Thanh toán lần đầu bằng Ví Momo và áp dụng mã ưu đãi','N’áp dụng vào 10H-14H Thứ 4 hàng tuần', NULL,10);

INSERT INTO HOA_DON VALUEs('01VEDB3009','2023-10-1 12:24:12',280000,'E4F5G6H','FT001','FUTA60');
INSERT INTO HOA_DON VALUEs('09VEBD4023','2023-11-14 10:24:15',280000,'A1B2C3D','FT003',NULL);
INSERT INTO HOA_DON VALUEs('02VEDB2001','2023-06-13 13:24:14',280000,'Q4R5S6T','FT004','FUTA60');
INSERT INTO HOA_DON VALUEs('01VEDB4012','2023-10-18 06:28:14',190000,'E4F5G6H','FT001','FUTAMOMO'); 
 
 
   

 
 
 
 
 
 
 
