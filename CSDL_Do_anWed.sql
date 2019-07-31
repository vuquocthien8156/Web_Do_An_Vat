create database CSDL_Web_Do_an_vat

	--Daxoa : Đánh dấu dòng đó có bị xóa hay chưa trong 1 bảng
	create table HinhAnh
	(
		MaOject char(10),
		MaHinh int identity,
		URL nvarchar(MAX),
		Daxoa bit
		primary key (MaOject , MaHinh)
	)
	create table LoaiTaiKhoan
	(
		MaloaiTK int Identity primary key,
		TenLoaiTK char(50) unique, --bao gồm admin , nhân viên , khách hàng , NCC , ...(Chưa phát sinh thêm)
		Daxoa bit,
	)

	create table TaiKhoan
	(
		TenTK char(50) primary key,
		Matkhau char(50),
		Dangnhap bit,
		LoaiTK int foreign key (LoaiTK) references LoaiTaiKhoan(MaloaiTK), 
		Daxoa bit,	
	)

	create table NhaCungCap
	(
		MaNCC char(10) primary key,
		TenNCC nvarchar(50),
		Diachi nvarchar(MAX),
		Giohoatdong char(50),
		Trangthai_mocua bit,
		DichVuShip bit, -- Có dịch vụ ship hay không 
		Mail char(50),
		URL nvarchar(max),
		Daxoa bit,
	)

	create table LoaiSanPham
	(
		Maloaisp int identity primary key,
		Tenloaisp nvarchar(50) unique,
		Daxoa bit,
	)


	create table SanPham
	(
		Masp char(10) primary key,
		Tensp nvarchar(50),
		Mota nvarchar(MAX),
		GiaSP bigint,
		Trangthai_con_het bit,
		Solandat int, -- Được cập nhập mỗi khi có người đặt mặc định 0
		URL nvarchar(MAX), -- Đường dẫn file hình
		NCC char(10),
		Loaisp int,
		Daxoa bit,
		foreign key (Loaisp) references LoaiSanPham(Maloaisp),
		foreign key (NCC) references NhaCungCap(MaNCC),
	)

	create table LoaiNV
	(
		MaloaiNV int identity primary key,
		TenLoainv nvarchar(50) unique, -- Admin , Nhân viên(Xác nhận đơn hàng và gửi xuốg cho NCC)(Nhân viên shiper nếu NCC không có dịch vụ ship sẽ nhận đơn hàng từ web)
		Daxoa bit,
	)

	create table NhanVien
	(
		Manv char(10) primary key,
		TenNV nvarchar(50),
		Phai bit,
		Ngaysinh datetime,
		Diachi nvarchar(MAX),
		Ngayvaolam datetime,
		LoaiNV int, 
		TenTK char(50),
		Mail char(50),
		Mathanhtoan char(50), --Luu giu vd: Ma ngan hang , the ATM , ... Co the tra cho nhan vien shiper.
		Daxoa bit,
		foreign key (LoaiNV) references LoaiNV(MaloaiNV),
		foreign key (TenTK) references TaiKhoan(TenTK),
	)

	create table KhachHang
	(
		MaKH char(10) primary key,
		TenTK char(50),
		TenKH nvarchar(50),
		Diachi nvarchar(MAX),
		SDT int,
		Email char(50),
		Daxoa bit,
		foreign key (TenTK) references TaiKhoan(TenTK),
	)


	create table HoaDon
	(
		MaHD char(10) primary key,
		MaKH char(10),
		Ghichu nvarchar(MAX),
		NgaylapHD datetime,
		Phiship bigint default 0, -- mac dinh la 0
		Tongtien bigint,
		Daxoa bit,
		foreign key (MaKH) references KhachHang(MaKH),
	)
 

	create table ChiTietHoaDon
	(
		MaHD char(10),
		Masp char(10),
		Dongia bigint,
		Soluong int,
		Thanhtien bigint,
		Giamgia int,
		primary key (MaHD , Masp),
		foreign key (MaHD) references Hoadon(MaHD),
		foreign key (Masp) references SanPham(Masp),
	)	

	create table Trangthai
	(
		MaTrangthai char(10) primary key,
		TenTrangthai nvarchar(50), -- Gồm Đang vẫn chuyển , Đã đặt , Đã hoàn thành , ... Chua phat sinh
		Daxoa bit,
	)

	create table LichSuHoaDon
	(
		MaHD char(10) ,
		MaTrangthai char(10),
		Thoigian datetime,
		Ghichu nvarchar(MAX),
		Daxoa bit,
		primary key(MaHD , MaTrangthai , Thoigian),
		foreign key(MaTrangthai) references Trangthai(MaTrangthai),
		foreign key(MaHD) references Hoadon(MaHD),
	)

	CREATE TRIGGER Them_SP
	On Chitiethoadon
	after insert
	as
		Set NoCount On
		Update Sanpham
		set Solandat = sp.Solandat + i.SL
		from Sanpham sp Join (select Masp , count(*) as SL from inserted group by Masp) i on sp.Masp = i.Masp 
	go

		insert into LoaiTaiKhoan
		values( 'Admin' , 0)
		insert into LoaiTaiKhoan
		values( 'Khachhang' , 0)
		insert into LoaiTaiKhoan
		values( 'Nhanvien' , 0)


		insert into TaiKhoan
		values('Admin', '202cb962ac59075b964b07152d234b70' , 0 , 1 , 0)
		insert into TaiKhoan
		values('NLNhung', '202cb962ac59075b964b07152d234b70' , 0 , 3 , 0)
	
		insert into LoaiSanPham
		values(N'Nước uống',0)
		insert into LoaiSanPham
		values(N'Thức ăn',0)

		insert into NhaCungCap
		values('NCC_1',N'Sữa chua dẻo',N'34 Nguyễn Bá Tòng, P. 11,  Quận Tân Bình, TP. HCM','07:00 - 22:00',1,1,'vuquocthien8156@gmail.com','img/NCC_1.jpg',0)
		insert into NhaCungCap
		values('NCC_2',N'Buzz Pizza',N'51 - 53 Nguyễn Thị Thập, P. Tân Hưng,  Quận 7, TP. HCM','10:30 - 22:30',1,1,'duyentran2498@gmail.com','img/NCC_2.jpg',0)
		insert into NhaCungCap
		values('NCC_3',N'Đen Đá Cafe - Trà Sữa & Trà Đào - Hàm Nghi',N'96 Hàm Nghi,  Quận 1, TP. HCM','08:30 - 23:00',1,1,'duyentran2498@gmail.com','img/NCC_3.jpg',0)
		insert into NhaCungCap
		values('NCC_4',N'Paris Baguette - Cao Thắng',N'1 Cao Thắng, P. 2,  Quận 3, TP. HCM','07:00 - 23:00',1,1,'tqkhai91@gmail.com','img/NCC_4.jpg',0)
		insert into NhaCungCap
		values('NCC_5',N'Beefsteak Titi - Vũ Huy Tấn',N'67/4/118 Vũ Huy Tấn, P. 3,  Quận Bình Thạnh, TP. HCM','10:00 - 21:30',1,1,'vuquocthien8156@gmail.com','img/NCC_5',0)

		INSERT INTO SanPham
		VALUES('SP_1',N'Sữa chua dẻo vị việt quất',N'mota',30000,1,0,'img/1.jpg', 'NCC_1' ,2,0)
		INSERT INTO SanPham
		VALUES('SP_2',N'Sữa chua dẻo vị cacao',N'mota',30000,1,0,'img/2.jpg','NCC_1',2,0)
		INSERT INTO SanPham
		VALUES('SP_3',N'Sữa chua dẻo vị Trà xanh',N'mota',30000,1,0,'img/3.jpg','NCC_1',2,0)
		INSERT INTO SanPham
		VALUES('SP_4',N'Sữa chua dẻo vị dâu tây',N'mota',30000,1,0,'img/4.jpg','NCC_1',2,0)
		INSERT INTO SanPham
		VALUES('SP_5',N'Sữa chua dẻo vị kiwi',N'mota',30000,1,0,'img/1.jpg','NCC_1', 1 ,0)
		INSERT INTO SanPham
		VALUES('SP_6',N'Sữa chua dẻo vị đào',N'mota',30000,1,0,'img/1.jpg','NCC_1', 1 ,0)
		INSERT INTO SanPham
		VALUES('SP_7',N'Sữa chua dẻo vị cam nha đam',N'mota',30000,1,0,'img/3.jpg','NCC_1',2,0)
		INSERT INTO SanPham
		VALUES('SP_8',N'Sữa chua dẻo vị blue curacao',N'mota',30000,1,5,'img/8.jpg','NCC_1',2,0)
		INSERT INTO SanPham
		VALUES('SP_9',N'Sữa chua dẻo vị xoài',N'mota',30000,1,5,'img/9.jpg','NCC_1',2,0)
		INSERT INTO SanPham
		VALUES('SP_10',N'Sữa chua dẻo vị phúc bồn tử',N'mota',30000,1,10,'img/1.jpg','NCC_1',2,0)
	
		INSERT INTO SanPham
		VALUES('SP_11',N'Seafood pizza',N'Hải sản, sốt cà, phô mai mozzarella, tỏi, lá quế',175000,1,1,'img/11.jpg','NCC_2',2,0)
		INSERT INTO SanPham
		VALUES('SP_12',N'Gorgonzola pizza',N'Phô mai mozzarella, gorgonzola, parmesan, sốt kem',164000,1,0,'img/12.jpg','NCC_2',2,0)
		INSERT INTO SanPham
		VALUES('SP_13',N'Quattro formagi',N'Phô mai emmental, mozzarella, gouda, edam, parmesan, sốt kem',175000,1,0,'img/13.jpg','NCC_2',2,0)
		INSERT INTO SanPham
		VALUES('SP_14',N'Chicken BBQ pizza ',N'Thịt gà nướng, khoai tây Ý, phô mai mozzarela, sốt cà chua, ớt chuông, oliu đen, sốt BBQ',208000,1,0,'img/14.jpg','NCC_2',2,0)
		INSERT INTO SanPham
		VALUES('SP_15',N'Diavola pizza',N'Xúc xích Ý, sốt cà, phô mai mozzarella, parmesan, lá quế, ớt',142000,1,0,'img/15.jpg','NCC_2',2,0)
		INSERT INTO SanPham
		VALUES('SP_16',N'Margherita pizza',N'Phô mai mozzarella, parmesan, sốt cà, lá quế',110000,1,0,'img/16.jpg','NCC_2',2,0)
		INSERT INTO SanPham
		VALUES('SP_17',N'Beef BBQ pizza',N'Thịt bò Úc, phô mai mozzarella, hành tây, trái olive, ớt chuông, sốt cà',252000,1,0,'img/17.jpg','NCC_2',2,0)
		INSERT INTO SanPham
		VALUES('SP_18',N'Funghi pizza',N'Thịt xông khói, nấm 2 loại, phô mai mozzarella, sốt nấm',208000,1,0,'img/18.jpg','NCC_2',2,0)
		INSERT INTO SanPham
		VALUES('SP_19',N'Chicken pizza',N'Thịt gà, tỏi, hành tây, phô mai mozzarella, ớt chuông, lá quế, sốt cà',142000,1,0,'img/19.jpg','NCC_2',2,0)
		INSERT INTO SanPham
		VALUES('SP_20',N'Mare monti pizza',N'Phô mai mozzarella, thịt xông khói, tôm, ớt chuông, olive đen, tỏi, hành tây, sốt cà',274000,1,0,'img/20.jpg','NCC_2',2,0)

	
		INSERT INTO SanPham
		VALUES('SP_21',N'Flan pudding milktea iceblended',N'Trà sữa bánh Flan đá xay',48000,5,0,'img/21.jpg','NCC_3',1,0)
		INSERT INTO SanPham
		VALUES('SP_22',N'Cheesyfoam blueberry',N'Phô mai việt quất đá xay',49000,10,0,'img/22.jpg','NCC_3',1,0)
		INSERT INTO SanPham
		VALUES('SP_23',N'Cheesyfoam chocolate',N'Phô mai chocolate đá xay',49000,12,0,'img/23.jpg','NCC_3',1,0)
		INSERT INTO SanPham
		VALUES('SP_24',N'Cheesyfoam caramel',N'Phô mai caramel đá xay',49000,3,0,'img/24.jpg','NCC_3',1,0)
		INSERT INTO SanPham
		VALUES('SP_25',N'Greentea latte frappe (no coffee)',N'Trà xanh đá xay',48000,0,0,'img/25.jpg','NCC_3',1,0)
		INSERT INTO SanPham
		VALUES('SP_26',N'Cookie cream frappe',N'Bánh cookie cream đá xay',49000,0,0,'img/26.jpg','NCC_3',1,0)
		INSERT INTO SanPham
		VALUES('SP_27',N'Mocha frappe',N'Mocha cafe đá xay',49000,0,0,'img/27.jpg','NCC_3',1,0)
		INSERT INTO SanPham
		VALUES('SP_28',N'Cocount egg pudding coffee',N'Cafe trứng cốt dừa',44000,0,0,'img/28.jpg','NCC_3',1,0)
		INSERT INTO SanPham
		VALUES('SP_29',N'Milktea iceblended',N'Trà sữa đá xay',40000,0,0,'img/29.jpg','NCC_3',1,0)
		INSERT INTO SanPham
		VALUES('SP_30',N'Latte frappe',N'Latte cafe đá xay',47000,0,0,'img/30.jpg','NCC_3',1,0)
	
		INSERT INTO SanPham
		VALUES('SP_31',N'My love forever',N'Hai Nửa Tình Yêu - Cốt bông lan, hoa quả và phô mai',350000,20,0,'img/31.jpg','NCC_4',2,0)
		INSERT INTO SanPham
		VALUES('SP_32',N'Cafe mocha cake',N'Bánh Kem Café Mocha - Hương vị thơm ngon không thể quên',320000,0,0,'img/32.jpg','NCC_4',2,0)
		INSERT INTO SanPham
		VALUES('SP_33',N'Sheep cake',N'Cừu Con Xinh Xắn - Cốt bông lan, hoa quả phủ kem tươi',360000,0,0,'img/33.jpg','NCC_4',2,0)
		INSERT INTO SanPham
		VALUES('SP_34',N'Red bean paste donut',N'Bánh Chiên Đậu Đỏ - Bánh chiên nhân đậu đỏ Hàn Quốc',20000,0,0,'img/34.jpg','NCC_4',2,0)
		INSERT INTO SanPham
		VALUES('SP_35',N'Choco ring donut',N'Chiếc Vòng Socola - Bánh chiên phủ socola thơm ngon',22000,0,0,'img/35.jpg','NCC_4',2,0)
		INSERT INTO SanPham
		VALUES('SP_36',N'Double strawberry cake',N'Dâu Tây Đôi - Bánh kem hương vị dâu và phô mai',390000,0,0,'img/36.jpg','NCC_4',2,0)
		INSERT INTO SanPham
		VALUES('SP_37',N'Double love blossom',N'Vườn Hoa Tình Yêu 2 Tầng - Món quà tuyệt vời, trao gửi yêu thương',400000,20,0,'img/37.jpg','NCC_4',2,0)
		INSERT INTO SanPham
		VALUES('SP_38',N'Olive sausage bread',N'Bánh Mì Xúc Xích Vị Oliu - Trái ô liu, nấm cùng phô mai phủ trên lớp bánh hấp dẫn',28000,0,0,'img/38.jpg','NCC_4',2,0)
		INSERT INTO SanPham
		VALUES('SP_39',N'Ham & cheese delta bread',N'Tam Giác Phô Mai Thịt Nguội - Dòng bánh thơm ngon nổi tiếng tại Singapore',37000,0,0,'img/39.jpg','NCC_4',2,0)
		INSERT INTO SanPham
		VALUES('SP_40',N'fly away UFO',N'Đĩa Bay - Chiếc bánh hình đĩa bay nhân kem su',20000,0,0,'img/40.jpg','NCC_4',2,0)
	
		INSERT INTO SanPham
		VALUES('SP_41',N'Mix Salad',N'Salad trộn sốt dâu tằm',25000,0,0,'img/41.jpg','NCC_5',2,0)
		INSERT INTO SanPham
		VALUES('SP_42',N'Salad tuna',N'Cá ngừ trộn với mayone',40000,0,0,'img/42.jpg','NCC_5',2,0)
		INSERT INTO SanPham
		VALUES('SP_43',N'Salad tuna cheese',N'Cá ngừ sốt phô mai',40000,0,7,'img/30.jpg','NCC_5',2,0)
		INSERT INTO SanPham
		VALUES('SP_44',N'Beefsteak with pepper sauce',N'Bò steak sốt tiêu',75000,0,5,'img/44.jpg','NCC_5',2,0)
		INSERT INTO SanPham
		VALUES('SP_45',N'Lamb with BBQ sauce',N'Cừu sốt bbq',85000,0,15,'img/45.jpg','NCC_5',2,0)
		INSERT INTO SanPham
		VALUES('SP_46',N'Shaky beef',N'Bò lúc lắc',75000,0,0,'img/46.jpg','NCC_5',2,0)
		INSERT INTO SanPham
		VALUES('SP_47',N'Spaghetti Bolognaise',N'Mì Ý bò bằm',60000,0,20,'img/47.jpg','NCC_5',2,0)
		INSERT INTO SanPham
		VALUES('SP_48',N'Shaky ostrich with bbq sauce',N'Lúc lắc đà điểu sốt bbq',75000,0,0,'img/48.jpg','NCC_5',2,0)
		INSERT INTO SanPham
		VALUES('SP_49',N'Spaghetti Carbonara',N'Mì Ý thịt nguội sốt cream béo',65000,0,0,'img/49.jpg','NCC_5',2,0)
		INSERT INTO SanPham
		VALUES('SP_50',N'Spaghetti with beef and vegetables',N'Mì Ý xào bò và rau củ',60000,0,0,'img/50.jpg','NCC_5',2,0)

		insert into LoaiNV
		values ('Admin' , 0)
		insert into LoaiNV
		values ('NhapDuLieu', 0)

		insert into NhanVien
		values ('NV_1' , 'Thien' , 0 , '8/21/1998' , 'abc' , '8/21/2017' , 1 , 'Admin' , 'abc@123' , 123456 , 0)
		insert into NhanVien
		values ('NV_2' , 'Nhung' , 1 , '1/20/1998' , 'abc' , '1/20/2017', 2 , 'NLNhung' , 'abc@123' , 123456 , 0)

		select *
		from LoaiSanPham

		select *
		from NhaCungCap

		Select *
		From LoaiNV

		Select *
		from NhanVien

		select *
		from TaiKhoan

		select *
		from LoaiTaiKhoan

		select *
		from KhachHang

		select *
		from Hoadon

		select *
		from ChiTietHoaDon

		select *
		from SanPham

		select *
		from LoaiSanPham

		select *
		from HinhAnh

		Select TOP 5 Masp , Tensp , Mota , GiaSP , Trangthai_con_het , Solandat , Sanpham.URL as URL , Diachi , Loaisp , NCC from SanPham , NhaCungCap where Sanpham.Daxoa = 0 and NCC = MaNCC Order By Solandat DESC

		Select Tensp 
		from SanPham
		where Masp in (Select Masp from ChiTietHoaDon where MaHD in (Select MaHD from HoaDon where MaKH = 'KH_1' ))
	
	
	
