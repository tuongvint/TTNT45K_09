Create Database PM_QUANLYTHUVIEN
Use PM_QUANLYTHUVIEN

create table NHANVIEN (MaNV varchar(10) not null primary key,
					  TenNV varchar(50) not null,
					  NgaySinh date not null,
					  GioiTinh varchar(5) not null,
					  BoPhan varchar(50) not null,
					  SDT varchar(10))

create table TACGIA (MaTG varchar(10) not null primary key,
					 TenTG varchar(50) not null,
					 ChucDanh varchar(50) not null)

create table LOAISACH (MaLS varchar(10) not null primary key,
					   TenLS varchar(50) not null)

create table NHAXUATBAN (MaNXB varchar(10) not null primary key,
						 TenNXB varchar(50) not null)

create table SACH (MaSach varchar(10) not null primary key,
				   TenSach varchar(50) not null,
				   MaNXB varchar(10) not null,
				   TenNXB varchar(50) not null,
				   MaTG varchar(10) not null,
				   MaLS varchar(10) not null,
				   MaNV varchar(10) not null,
				   NamXuatBan int,
				   Gia int,
				   TongSoQuyen int )

create table THEDOCGIA (MaThe varchar(10) not null primary key,
						TenDG varchar(50) not null,
						GioiTinh varchar(5) not null,
						NgayCap date not null,
						NgayHetHan date not null,
						MaNV varchar(10) not null)

create table PHIEUYEUCAU (MaPYC varchar(10) not null primary key,
						  MaThe varchar(10) not null,
						  TenDG varchar(50) not null,
						  TenSach varchar(50) not null,
						  SoQuyen int)

create table THEODOIMUONTRA (MaPYC varchar(10) not null,
							 MaThe varchar(10) not null,
							 TenDG varchar(50) not null,
							 MaSach varchar(10) not null,
							 TenSach varchar(50) not null,
							 NgayMuon date not null,
							 NgayHenTra date not null,
							 NgayTra date not null,
							 TTSachTruocKhiMuon varchar(50) not null,
							 TTSachSauKhiMuon varchar(50) not null,
							 SoLuongMuon int,
							 SoLuongTra int)

create table THUTIENPHAT (MaThe varchar(10) not null,
						  TenDG varchar(50) not null,
						  MaNV varchar(10) not null,
						  TenNV varchar(50) not null,
						  TenSach varchar(50) not null,
						  LyDoPhat varchar(50) not null,
						  TienPhat int,
						  SoTienThu int,
						  ConLai float)

Alter Table THUTIENPHAT
add Constraint FK_nv foreign key (MaNV) references NHANVIEN (MaNV)

Alter Table THUTIENPHAT
add Constraint FK_TDG foreign key (MaThe) references THEDOCGIA (MaThe) 

Alter Table THEODOIMUONTRA
add Constraint FK_TheDG foreign key (MaThe) references THEDOCGIA (MaThe)

Alter Table THEODOIMUONTRA
add Constraint FK_TheMuon foreign key (MaPYC) references PHIEUYEUCAU (MaPYC)

Alter Table THEODOIMUONTRA
add Constraint FK_Sach foreign key (Masach) references SACH (Masach)

Alter Table THEDOCGIA
add Constraint FK_Nhanvien foreign key (MaNV) references NHANVIEN (MaNV)

Alter Table PHIEUYEUCAU
add Constraint FK_Docgia foreign key (MaThe) references THEDOCGIA (MaThe)

Alter Table SACH
add Constraint FK_NhaXB foreign key (MaNXB) references NHAXUATBAN (MaNXB)

Alter Table SACH
add Constraint FK_TGia foreign key (MaTG) references TACGIA (MaTG)

Alter Table SACH
add Constraint FK_LS foreign key (MaLS) references LOAISACH (MaLS)

Alter Table SACH
add Constraint FK_Nvien foreign key (MaNV) references NHANVIEN (MaNV)

Insert into NHANVIEN 
Values ('NV00', 'Le Thu Trang','1992-09-04', 'Nu', 'Thu thu', '0368759578'),
       ('NV01', 'Do Thanh Thao','1994-12-09', 'Nu', 'Thu thu', '0367554823'),
	   ('NV02', 'Nguyen Ngoc Chau','1992-09-03', 'Nu', 'Thu thu', '0868759599'),
	   ('NV03', 'Dinh Thai Hoai','1997-08-04', 'Nu', 'Cong tac ban đoc', '0872919329'),
	   ('NV04', 'Do Nhu Y','1998-12-6', 'Nu', 'Cong tac ban đoc', '0367715608'),
       ('NV05', 'Dang Van Huy','1995-10-03', 'Nam', 'Cong tac ban đoc', '0368551912'),
	   ('NV06', 'Le Gia Han','1993-09-03', 'Nu', 'Nghiep vu', '0368759919'),
	   ('NV07', 'Dao Tuong Vy','1992-04-12', 'Nu', 'Nghiep vu', '0369754586'),
	   ('NV08', 'Vo Nhu May','1996-05-04', 'Nu', 'Hanh chinh', '0368997516'),
	   ('NV09', 'Nguyen Ngoc Khoa','1994-12-10', 'Nam', 'Hanh chinh', '0360451267')
Select * From NHANVIEN 

Insert into TACGIA 
Values ('TG01', ' David J.Schwartz, Ph.D','Nha van'),
       ('TG02', ' Trac Nha', 'Nha van'),
	   ('TG03', ' Cao Phi Hai', 'Dien gia'),
	   ('TG04', ' Tran Trung Hieu',' Giao su'),
	   ('TG05', ' Michael E. Goldberg', 'Nha van'),
	   ('TG06', ' Chris Guillebeau', 'Nha van'),
	   ('TG07', ' Nhieu tac gia','Nha van'),
	   ('TG08', ' James Altucher',' Doanh nhan'),
	   ('TG09', ' Hong Khanh', 'Dich gia'),
	   ('TG10', ' Patricia Boussiron', 'Nha van'),
	   ('TG11', ' Michael E.Gerber', 'Nha van'),
	   ('TG12', ' Eric Ries', 'Nha van'),
	   ('TG13', ' Peter Thiel và Blake Masters', 'Nha van'),
	   ('TG14', ' Tran Thanh Phong', 'Nha van'),
	   ('TG15', ' Sean Wise', 'Nha van'),
	   ('TG16', ' Chris Guillebeau',' Nha van'),
	   ('TG17', ' Alex Tu', 'Nha van'),
	   ('TG18', ' Shane Snow','Nha van'),
	   ('TG19', ' Benjamin Graham', 'Nha kinh te hoc'),
	   ('TG20', ' Bill Aulet', 'Doanh nhan'),
	   ('TG21', ' H.N. Casson', 'Nha bao'),
	   ('TG22', ' Richard Powers', ' Tieu thuyet gia'),
	   ('TG23', ' Peter Wohlleben', 'Nha lam nghiep'),
	   ('TG24', ' Anne Passchier', 'Hoa si'),
	   ('TG25', ' Co Do Thu', ' Hoi pho kinh dich TG'),
	   ('TG26', ' HT.Thich Vien Đuc', 'Hoa thuong'),
	   ('TG27', ' Nac Bo Vuong Đien','Hoa thuong'),
	   ('TG28', ' John Medina', ' Nha sinh hoc'),
	   ('TG29', ' Michael Lewis', 'Nha van'),
	   ('TG30', ' Dan Ariely', 'Giao su tam ly hoc'),
	   ('TG31', ' David Lester', 'Nha tam ly hoc'),
	   ('TG32', ' Scott', ' Doanh nhan'),
	   ('TG33', ' Walter Isaacson', 'Nha van'),
	   ('TG34', ' Brad Stone' , 'Nha bao'),
	   ('TG35', ' Adam Lashinsky', 'Nha bao'),
	   ('TG36', ' Lam Anh Đao','Đau bep'),
	   ('TG37', ' Huynh Hong Hanh', 'Đau bep')
Select * from TACGIA 

Insert into LOAISACH 
Values ('LS01',' Khoi nghiep'),
       ('LS02', 'Khoa hoc và Cong nghe'),
	   ('LS03', 'Kinh te,kinh doanh va quan ly'),
	   ('LS04', 'Suc khoe'),
	   ('LS05', 'Tam ly và ky nang song'),
	   ('LS06', 'Chinh tri va phap luat'),
	   ('LS07', 'Van hoc nghe thuat'),
	   ('LS08', 'Tieu thuyet'),
	   ('LS09', 'Tam linh ton giao'),
	   ('LS10', 'Giao trinh'),
	   ('LS11', 'Thien nhien'),
	   ('LS12', 'Cong nghe thong tin'),
	   ('LS13', 'Am thuc')
Select * from LOAISACH 

Insert into NHAXUATBAN 
Values ( 'NXB01', 'NXB Tong hop TPHCM'),
       ( 'NXB02', ' NXB Van hoc'),
	   ( 'NXB03', 'NXB Lao dong - Xa hoi'),
	   ( 'NXB04', 'NXB Khoa hoc tu nhien va cong nghe'),
	   ( 'NXB05', 'NXB Khoa hoc va ky thuat'),
	   ( 'NXB06', 'NXB Thanh nien'),
	   ( 'NXB07', 'NXB Tre'),
	   ( 'NXB08', 'NXB Thanh Hoa'),
	   ( 'NXB09 ', 'NXB Da Nang'),
	   ( 'NXB10 ', 'NXB Lao dong'),
	   ( 'NXB11 ', 'NXB Phu nu '),
	   ( 'NXB12 ', 'NXB Dan tri '),
	   ( 'NXB13', 'NXB The gioi'),
	   ( 'NXB14 ', 'NXB My thuat '),
	   ( 'NXB15 ', 'NXB Dong A '),
	   ( 'NXB16 ', 'NXB Hong Duc '),
	   ( 'NXB17 ', 'NXB Ton giao '),
	   ( 'NXB18 ', 'NXB Cong thuong')
Select * from NHAXUATBAN 

Insert into SACH 
Values ('MS01', 'The Magic Of Thinking', 'NXB01', 'NXB Tong hop TPHCM', 'TG01','LS01', 'NV00', '2018', '98000','20'),
       ('MS02', 'Kheo an noi se co duoc thien ha', 'NXB02', ' NXB Van hocc', 'TG02','LS05', 'NV00', '2019', '110000','30'),
	   ('MS03', 'Tu lap tuoi 20', 'NXB03', 'NXB Lao dong - Xa hoi', 'TG03','LS01', 'NV00', '2019', '169000','25'),
	   ('MS04', 'Giao trinh xay dung nen duong', 'NXB04', 'NXB Khoa hoc tu nhien va cong nghe', 'TG04', 'LS02','NV01', '2020', '150000', '32'),
	   ('MS05', 'Vuon ra khoi thung lung Silicon', 'NXB05', 'NXB Khoa hoc va ky thuat', 'TG05', 'LS03', 'NV01', '2019', '99000', '19'),
	   ('MS06', 'Nghe tay trai hai ra tien', 'NXB06', 'NXB Thanh nien', 'TG06', 'LS01', 'NV02', '2019', '120000','37'),
	   ('MS07', 'Bac si tot nhat la chinh minh', 'NXB07', 'NXB Tre', 'TG07', 'LS04', 'NV02', '2017', '69000','35'),
	   ('MS08', 'Ong chu ngheo kho hay nhan vien giau co', 'NXB03', 'NXB Lao dong - Xa hoi', 'TG08', 'LS03', 'NV02', '2017', '119000','26'),
	   ('MS09', 'Thuong truong 36 ke', 'NXB08', 'NXB Thanh Hoa', 'TG09','LS03', 'NV02', '2017', '90000','30'),
       ('MS10', 'Tu cuu khi gap nguy hiem', 'NXB07', 'NXB Tre', 'TG10','LS04', 'NV02', '2017', '110000','40'),
	   ('MS11', 'De xay dung doanh nghiep hieu qua  ', 'NXB03 ', 'NXB Lao dong - Xa hoi ','TG11', 'LS01', 'NV00', '2019 ', '76000 ','42'),
	   ('MS12', 'Khoi nghiep tinh gon', 'NXB01 ', 'NXB Tong hop TPHCM ','TG12', 'LS01', 'NV00', '2018', '145000 ','45'),
	   ('MS13', 'Khong den mot  ', 'NXB07 ', 'NXB Tre ','TG13', 'LS01', 'NV00', '2019 ', '104500 ', '25'),
	   ('MS14', 'Khoi nghiep ban le ', 'NXB09 ', 'NXB Da Nang','TG14', 'LS01', 'NV00', '2020 ', '116000 ','47'),
	   ('MS15', 'Co hoi khoi nghiep ', 'NXB10 ', 'NXB Lao dong ','TG15', 'LS01', 'NV00', '2017 ', '60000', '28'),
	   ('MS16', 'Khoi nghiep voi 100$  ', 'NXB10 ', 'NXB Lao dong ','TG16', 'LS01', 'NV00', '2019 ', '58000 ', '30'),
	   ('MS17', 'Cafe book  ', 'NXB11 ', 'NXB Phu nu ','TG17', 'LS01', 'NV02', '2020 ', '52000 ', '40'),
	   ('MS18', 'Loi tat khon ngoan  ', 'NXB07 ', 'NXB Tre ','TG18', 'LS01', 'NV02', '2018 ', '70000 ', '33'),
	   ('MS19', 'Nha dau tu thong minh  ', 'NXB12 ', 'NXB Dan tri ','TG19', 'LS01', 'NV01', '2016 ', '145000','36'),
	   ('MS20', 'Kinh dien ve khoi nghiep ', 'NXB10 ', 'NXB Lao dong ','TG20', 'LS01', 'NV01', '2017 ', '182400 ','20'),
	   ('MS21', 'De lam nen su nghiep ', 'NXB10', 'NXB Lao dong','TG21', 'LS01', 'NV02', '2019 ', '64200 ','15'),
	   ('MS22', 'Vom rung ', 'NXB13 ', 'NXB The gioi ','TG22', 'LS11', 'NV02', '2017 ', '155000 ', '20'),
	   ('MS23', 'Đoi song bi an cua cay ', 'NXB13', 'NXB The gioi','TG23', 'LS11', 'NV00', '2018 ', '119000 ', '40'),
	   ('MS24', 'Animals – Cac loai dong vat  ', 'NXB14 ', 'NXB My thuat ','TG24', 'LS11', 'NV01', '2019 ', '74000 ','10'),
	   ('MS25', 'Lich su tu nhien ', 'NXB15 ', 'NXB Dong A ','TG07', 'LS11', 'NV01', '2017 ', '443000 ', '15'),
	   ('MS26', 'Mat tong tay tang  ', 'NXB16 ', 'NXB Hong Duc ','TG25', 'LS09', 'NV00', '2019 ', '205000 ', '10'),
	   ('MS27', 'Bo mat tong ', 'NXB17 ', 'NXB Ton giao ','TG26', 'LS09', 'NV00', '2015 ', '105000 ', '20'),
	   ('MS28', 'Phap khi mat tong ', 'NXB17 ', 'NXB Tôn giáo ','TG27', 'LS09', 'NV00', '2018 ', '179000 ','25'),
	   ('MS29', 'Luat tri nao  ', 'NXB13 ', 'NXB The gioi ','TG28', 'LS05', 'NV02', '2018 ', '105000 ', '30'),
	   ('MS30', 'Logic cua tam tri  ', 'NXB13 ', 'NXB The gioi ','TG29', 'LS05', 'NV02', '2019', '110000 ', '10'),
	   ('MS31', 'Phi ly tri  ', 'NXB03 ', 'NXB Lao dong - Xa hoi ','TG30', 'LS05', 'NV02', '2020 ', '112000 ', '15'),
	   ('MS32', 'Tien bac va ly tri  ', 'NXB03 ', 'NXB Lao dong - Xa hoi ','TG30', 'LS05', 'NV02', '2018 ', '106000 ', '20'),
	   ('MS33', 'Le phai cua ly tri ', 'NXB03 ', 'NXB Lao dong - Xa hoi ','TG30', 'LS05', 'NV02', '2019 ', '93000 ', '30'),
	   ('MS34', 'Nhung de che cong nghe so', 'NXB13 ', 'NXB The gioi ','TG31', 'LS12', 'NV01', '2017 ', '95000 ', '25'),
	   ('MS35', 'Tu dai quyen luc ', 'NXB01 ', 'NXB Tong hop TPHCM ','TG32', 'LS12', 'NV01', '2019 ', '112000 ', '28'),
	   ('MS36', 'Tieu su Steve Jobs  ', 'NXB10 ', 'NXB Lao dong','TG33', 'LS12', 'NV01', '2016 ', '255000 ', '30'),
	   ('MS37', 'Jeff Bezos va ky nguyen Amazon  ', 'NXB10 ', 'NXB Lao dong','TG34', 'LS12', 'NV01', '2018 ', '76000 ', '20'),
	   ('MS38', 'Uber – Chuyen di bao tap  ', 'NXB18 ', 'NXB Cong thuong ','TG35', 'LS12', 'NV01', '2019 ', '123000 ', '15'),
	   ('MS39', 'Che banh dan da  ', 'NXB11 ', 'NXB Phu nu ','TG36', 'LS13', 'NV01', '2017 ', '73000 ', '10'),
	   ('MS40', 'Cac mon che lanh  ', 'NXB01 ', 'NXB Tong hop TPHCM ','TG37', 'LS13', 'NV01', '2018 ', '25000 ', '20')
Select * from SACH 

Insert into THEDOCGIA 
values ('001', 'Dao Duy Huy', 'Nam','2019-06-11','2024-06-11', 'NV00'),
       ('002', 'Dang Ngoc Anh', 'Nu','2019-06-17','2024-06-17', 'NV03'),
	   ('003', 'Tran Van An', 'Nam','2020-07-20','2025-07-20', 'NV03'), 
	   ('004', 'Nguyen Hoa Hiep', 'Nam','2020-08-01','2025-08-01', 'NV04'),
	   ('005', 'Nguyen Thi My Duyen', 'Nu','2020-08-08','2025-08-08', 'NV04'),
	   ('006', 'Doan Thi Thu Thao', 'Nu','2020-09-10','2025-09-10', 'NV04'),
	   ('007', 'Le Linh Trang', 'Nu','2020-09-11','2025-09-11', 'NV04'),
	   ('008', 'Nguyen Viet Trinh', 'Nu','2020-09-17','2025-09-17', 'NV05'),
	   ('009', 'Do Ngoc Dat', 'Nam','2020-10-20','2025-10-20', 'NV05'),
	   ('010', 'Hoang Thuy An', 'Nu','2020-12-27','2025-12-27', 'NV05')
Select * From THEDOCGIA 

Insert into PHIEUYEUCAU 
Values ('PYC1','001', 'Dao Duy Huy','The Magic Of Thinking', '1'),
       ('PYC2','001','Dao Duy Huy', 'Giao trinh xay dung nen duong', '2'),
	   ('PYC3','003', 'Tran Van An','Ong chu ngheo kho hay nhan vien giau co', '1'),
	   ('PYC4','004', 'Nguyen Hoa Hiep', 'Tu lap tuoi 20', '1'),
	   ('PYC5','004', 'Nguyen Hoa Hiep','Kheo an noi se co duoc thien ha', '1'),
	   ('PYC6','006', 'Doan Thi Thu Thao',  'Tu cuu khi gap nguy hiem', '2'),
	   ('PYC7','007', 'Le Linh Trang', ' Vuon ra khoi thung lung Silicon','1'),
	   ('PYC8','009', 'Do Ngoc Dat', 'Nghe tay trai hai ra tien', '1'),
	   ('PYC9','009', 'Do Ngoc Dat', 'Bac si tot nhat la chinh minh', '1'),
	   ('PYC10','009',  'Do Ngoc Dat', 'Thuong truong 36 ke','1')
Select *from PHIEUYEUCAU 

Insert into THEODOIMUONTRA 
Values 
('PYC1','001', 'Dao Duy Huy','MS01', ' The Magic Of Thinking','2021-06-12', '2021-06-13','2021-06-13','Binh thuong','Rach bia sach','1','1'),
('PYC2','001', 'Dao Duy Huy','MS04', ' Giao trinh xay dung nen duong','2021-06-14', '2021-06-19','2021-06-19','Binh thuong','Mat mot quyen','2','1'),
('PYC3','003', 'Tran Van An','MS08', 'Ong chu ngheo kho hay nhan vien giau co','2021-03-15', '2021-03-17','2021-03-17','Binh thuong','Binh thuong','1','1'),
('PYC4','004', 'Nguyen Hoa Hiep','MS03', ' Tu lap tuoi 20','2021-06-15', '2021-06-18','2021-06-18','Binh thuong','Binh thuong','1','1'),
('PYC5','004', 'Nguyen Hoa Hiep','MS02', ' Kheo an noi se co duoc thien ha','2021-03-26', '2021-03-30','2021-03-30','Binh thuong','Binh thuong','1','1'),
('PYC6','006', 'Doan Thi Thu Thao','MS10', ' Tu cuu khi gap nguy hiem','2021-06-16', '2021-04-20', '2021-04-25','2021-04-26','Binh thuong','2','2'),
('PYC7','007', 'Le Linh Trang','MS05', ' Vuon ra khoi thung lung Silicon','2021-04-17', '2021-06-19','2021-06-20','Binh thuong','Binh thuong','1','1'),
('PYC8','009', 'Do Ngoc Dat','MS06', 'Nghe tay trai hai ra tien','2021-03-20', '2021-03-23','2021-03-24','Binh thuong','Mat sach','1','0'),
('PYC9','009', 'Do Ngoc Dat','MS07', 'Bac si tot nhat la chinh minh','2021-06-01', '2021-06-05','2021-06-05','Binh thuong','Binh thuong','1','1'),
('PYC10','009', 'Do Ngoc Dat','MS09', 'Thuong truong 36 ke','2021-05-20', '2021-05-24','2021-05-24','Binh thuong','Binh thuong','1','1')
Select *from THEODOIMUONTRA 

Insert into THUTIENPHAT
Values ( '001', 'Dao Duy Huy','NV08','Vo Nhu May', ' The Magic Of Thinking','Rach bia sach','30000','50000', '20000'),
	   ( '001', 'Dao Duy Huy','NV08','Vo Nhu May',' Giao trinh xay dung nen duong','Mat sach','150000','150000', '0'),
	   ( '007', 'Dao Tuong Vy','NV09','Nguyen Ngoc Khoa','Vuon ra khoi thung lung Silicon',' Tra sach tre thoi han','20000', '20000', '0'),
	   ( '009', 'Do Ngoc Dat','NV09','Nguyen Ngoc Khoa', 'Bac si tot nhat la chinh minh','Mat sach', '69000', '70000', '1000')
 Select * from THUTIENPHAT