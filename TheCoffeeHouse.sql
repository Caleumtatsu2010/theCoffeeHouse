create database TheCoffeeHouse
go
use TheCoffeeHouse
go
 


--use master go drop database TheCoffeeHouse
--Tạo bảng tài khoản
create table TaiKhoan
(tenDangNhap varchar(30) primary key,
matKhau varchar(30) not null,
loai nvarchar(20) not null
)

select * from TaiKhoan

--Nhập một số tài khoản cho bảng tài khoản delete from TaiKhoan
insert into TaiKhoan values 
('admin', '1234', 'admin'),
('abc', '1234', 'user')



--Hiển thị delete from TaiKhoan


--Tao bảng thông tin của quản lý 
create table ThongTinAdmin
(maAdmin int primary key IDENTITY(10, 1),
tenDangNhap varchar(30) foreign key references TaiKhoan(tenDangNhap) on update cascade on delete cascade,
tenAdmin nvarchar(40) not null,
ngaySinh datetime, 
gioiTinh bit,
diaChi nvarchar(50),
email varchar(30),
sdt int,
ngayBatDau datetime not null,
hinhAnh nvarchar(100)
)

--Nhạp thông tin bảng nhân viên
insert into ThongTinAdmin values
( 'long', N'Nguyễn Hoàng Long', '2000-10-20', 1, N'Hải Dương', 'acb@gmail.com','123456789', '2020-05-05', N''),
( 'thanh', N'Trần Tiến Thành', '2000-09-27', 1, N'Hải Dương', 'acb@gmail.com','123456789', '2020-07-07', N''),
( 'nglong', N'Lê Thị A', '2000-10-20', 0, N'Hải Phong', 'acb@gmail.com','123456789', '2020-08-08', N'')




--Tạo bảng thông tin khách hàng
create table ThongTinKhachHang
(maKhachHang int primary key IDENTITY (100,1),
tenDangNhap varchar(30) foreign key references TaiKhoan(tenDangNhap) on update cascade on delete cascade,
tenKhachHang nvarchar(40),
ngaySinh date,
gioiTinh bit,
soDienThoai varchar(10) not null,
email varchar(30),
diaChi nvarchar(30) not null,
ghiChu nvarchar(100),
hinhAnh nvarchar(100)
)


--Nhập dữ liệu bảng Thông tin khách hàng


--Tao bang loai san pham
create table LoaiSanPham
(maLoai int primary key,
loaiSanPham nvarchar(50),
gioiThieu nvarchar(1000)
)
--Nhập thông tin bảng Loại sản phẩm
insert into LoaiSanPham values
(1, N'Cà phê', N'Cà phê giúp tỉnh táo'),
(2, N'Cà phê gói-Cà phê uống liền', N'Cà phê giúp tỉnh táo'),
(3, N'Trà trái cây-Trà sữa', N'Thức uống yêu thích của giới trẻ'),
(4, N'Đá xay-MatCha-Chocolate', N'Thức uống ngọt ngào phù hợp mọi học sinh'),
(5, N'Bánh & Snack', N'Muốn ăn yêu thích đi cùng với sinh tố và trà sữa'),
(6, N'MERCHANDISE', N'Đồ kỉ niệm của The Coffee House')



-- Tạo bảng kho 
create table KhoHang
(maSanPham int primary key,
tenSanPham nvarchar(50),
soLuongTon int,
giaNhap float,
ghiChu nvarchar(1000),
)
--Nhap thong tin bang kho
insert into KhoHang values 
(1, N'Americano', 30, 28000, N'Không'),
(2, N'Bạc xỉu', 36, 20000, N'Không'),
(3, N'Cà phê đen', 28, 24000, N'Không'),
(4, N'Cà phê sữa', 36, 20000, N'Không'),
(5, N'Cappuccino', 37, 40000, N'Không'),
(6, N'Caramel macchiato', 30, 41000, N'Không'),
(7, N'Coldbrew Phúc Bồn Tử', 24, 41000, N'Không'),
(8, N'Coldbrew Sữa tươi', 25, 35000, N'Không'),
(9, N'Coldbrew Truyền thống', 37, 34000, N'Không'),
(10, N'Thùng cafe sữa đá', 110, 320000, N'Không'),
(11, N'Cafe sữa phin', 150, 56000, N'Không'),
(12, N'Cafe Arabica', 105, 94000, N'Không'),
(13, N'Trà long nhãn hạt chia', 24, 40000, N'Không'),
(14, N'Trà hạt sen', 26, 38000, N'Không'),
(15, N'Trà matcha macchiato', 25, 35000, N'Không'),
(16, N'Trà đào cam sả', 39, 40000, N'Không'),
(17, N'Trà sữa mắc ca trân châu', 35, 42000, N'Không'),
(18, N'Trà phúc bồn tử', 24, 41000, N'Không'),
(19, N'Chanh sả đá xay', 37, 44000, N'Không'),
(20, N'Cà phê đá xay', 50, 52000, N'Không'),
(21, N'Phúc bồn tử cam đá xay', 47, 51000, N'Không'),
(22, N'Sinh tố việt quất', 28, 47000, N'Không'),
(23, N'Cookies đá xay', 35, 52000, N'Không'),
(24, N'Matcha đá xay', 44, 49000, N'Không'),
(25, N'Sô cô la', 65, 50000, N'Không'),
(26, N'Bánh bao hai trứng cút', 110, 20000, N'Không'),
(27, N'Bánh mì chà bông phô mai', 127, 27000, N'Không'),
(28, N'Bánh mì que', 210, 8000, N'Không'),
(29, N'Bông lan trứng muối', 65, 27000, N'Không'),
(30, N'Cam tươi xấy dẻo', 56, 30000, N'Không'),
(31, N'Cơm cháy chà bông', 65, 30000, N'Không'),
(32, N'Gà xé lá chanh', 111, 22000, N'Không'),
(33, N'Heo sấy xông khói', 86, 32000, N'Không'),
(34, N'Mít sấy', 123, 15000, N'Không'),
(35, N'Mochi kem chocolate', 77, 17000, N'Không'),
(36, N'Mochi kem dừa dứa', 82, 17000, N'Không'),
(37, N'Mochi kem matcha', 78, 17000, N'Không'),
(38, N'Mochi kim phúc bồn tử', 63, 17000, N'Không'),
(39, N'Mochi kem xoài', 66, 17000, N'Không'),
(40, N'Mochi kem kim việt quất', 69, 17000, N'Không'),
(41, N'Bình giữ nhiệt inox con thuyền', 22, 280000, N'Không'),
(42, N'Bình giữ nhiệt inox đen 500ml', 18, 280000, N'Không'),
(43, N'Bình giữ nhiệt inox quả dứa', 25, 280000, N'Không'),
(44, N'Bình giữ nhiệt inox trắng đen 500ml', 30, 220000, N'Không'),
(45, N'Bình giữ nhiệt inox xám cam 473ml', 32, 220000, N'Không'),
(46, N'Cốc sứ The Coffee house Đà Nẵng', 22, 99000, N'Không'),
(47, N'Cốc sứ The Coffee house gợn sóng', 25, 99000, N'Không'),
(48, N'Cốc sứ The Coffee house Hà Nội', 29, 99000, N'Không'),
(49, N'Cốc sứ The Coffee house TPHCM', 14, 99000, N'Không'),
(50, N'Ly Inox ống hút đen nhám', 46, 250000, N'Không'),
(51, N'Ly nhựa 2 lớp quả dứa', 50, 250000, N'Không'),
(52, N'Túi Canvas trăng nhà sung túc', 100, 59000, N'Không')

--Tạo bảng sản phẩm 
create table SanPham
(maSanPham int primary key,
tenSanPham nvarchar(50),
gioiThieu nvarchar(1000),
moTa nvarchar(1000),
gioiThieuChiTiet nvarchar(1000),
donGia float,
hangMoi bit,
hangNong bit, 
hangSale bit,
hinhAnh nvarchar(100),
maLoai int,
constraint Fk_Sp1 foreign key (maSanPham) references KhoHang(maSanPham) on update cascade on delete cascade,
constraint Fk_Sp2 foreign key (maLoai) references LoaiSanPham(maLoai) on update cascade on delete cascade
)
-- Nhập thông tin bảng sản phẩm 
insert into SanPham values
--
(1, N'Americano', N'Americano được pha chế bằng cách thêm nước vào một hoặc hai shot Espresso để pha loãng độ đặc của cà phê, từ đó mang lại hương vị nhẹ nhàng, không gắt mạnh và vẫn thơm nồng nàn.', 
N'CÀ PHÊ Ý, PHONG CÁCH MỸ',
N'Bạc sỉu và Cà phê sữa là hai loại đồ uống khác nhau.
Theo chân những người gốc Hoa đến định cư tại Sài Gòn, Bạc sỉu là cách gọi tắt của "Bạc tẩy sỉu phé" trong tiếng Quảng Đông.
Bạc là "trắng". Tẩy là "ly". Sỉu là "một chút". Phé là "cà phê".
Bạc sỉu chính là "Ly sữa trắng kèm một chút cà phê".
Người lao động phổ thông khi xưa dùng sữa đặc pha với nước nóng để thay thế cho sữa tươi đắt đỏ trong thời điểm ấy. Tuy vậy, vị sữa đặc pha khá nồng, nên họ biến tấu chút cà phê vào cho ly sữa thêm thơm và hấp dẫn.
Người Sài Gòn "chánh hiệu con mèo đen" dùng Bạc sỉu nóng. Theo thời gian, người ta thêm đá vào ly sữa-cà-phê này để thưởng thức được cả trong những ngày oi bức.
Nhưng dù uống nóng hay lạnh, Bạc sỉu cũng không phải là Cà phê sữa.', 
40000, 1, 1, 0, N'americano.jpg', 1),
--
(2, N'Bạc xỉu', N'Theo chân những người gốc Hoa đến định cư tại Sài Gòn, Bạc sỉu là cách gọi tắt của "Bạc tẩy sỉu phé" trong tiếng Quảng Đông, chính là: Ly sữa trắng kèm một chút cà phê.', 
N'BẠC TẨY SỈU PHÉ',
N'Bạc sỉu và Cà phê sữa là hai loại đồ uống khác nhau.
Theo chân những người gốc Hoa đến định cư tại Sài Gòn, Bạc sỉu là cách gọi tắt của "Bạc tẩy sỉu phé" trong tiếng Quảng Đông.
Bạc là "trắng". Tẩy là "ly". Sỉu là "một chút". Phé là "cà phê".
Bạc sỉu chính là "Ly sữa trắng kèm một chút cà phê".
Người lao động phổ thông khi xưa dùng sữa đặc pha với nước nóng để thay thế cho sữa tươi đắt đỏ trong thời điểm ấy. Tuy vậy, vị sữa đặc pha khá nồng, nên họ biến tấu chút cà phê vào cho ly sữa thêm thơm và hấp dẫn.
Người Sài Gòn "chánh hiệu con mèo đen" dùng Bạc sỉu nóng. Theo thời gian, người ta thêm đá vào ly sữa-cà-phê này để thưởng thức được cả trong những ngày oi bức.
Nhưng dù uống nóng hay lạnh, Bạc sỉu cũng không phải là Cà phê sữa.', 
32000, 1, 1, 0, N'bacsiu.jpg', 1),
--
(3, N'Cà phê đen', N'Một tách cà phê đen thơm ngào ngạt, phảng phất mùi cacao là món quà tự thưởng tuyệt vời nhất cho những ai mê đắm tinh chất nguyên bản nhất của cà phê. Một tách cà phê trầm lắng, thi vị giữa dòng đời vồn vã.', 
N'Phong vị trầm lắng hảo hạng', 
N'Cà phê đen bao giờ cũng "kén" người thưởng thức.

Không ngọt ngào như Bạc sỉu hay Cà phê sữa, Cà phê đen mang trong mình phong vị trầm lắng, thi vị hơn.

Từng hạt cà phê tại Nhà đều phải vượt qua những "thử thách" chặt chẽ về chất lượng gieo trồng, vun dưỡng để chắt lọc ra những giọt cà phê tinh chất và nguyên bản nhất.

Chẳng thể nào vội vàng khi thưởng thức một tách Cà phê đen. Người ta thường phải ngồi rất lâu mới cảm nhận được hết hương thơm ngào ngạt, phảng phất mùi cacao và cái đắng mượt mà trôi tuột xuống vòm họng.

Những ai trót mê đắm thức uống này thường nói với nhau rằng, giữa dòng đời vồn vã, bao giờ cũng đủ thời gian cho một tách Cà phê đen.', 
32000, 1, 1, 1, N'cafedenda.jpg', 1),
--
(4, N'Cà phê sữa', N'Cà phê phin kết hợp cũng sữa đặc là một sáng tạo đầy tự hào của người Việt, được xem món uống thương hiệu của Việt Nam.', 
N'Sự mộc mạc trở thành dấu ấn Việt', 
N'Cà phê sữa Việt Nam được xếp vào một trong mười cách uống độc đáo trên thế giới.

Khi người Pháp đem văn hóa cà phê vào Việt Nam, người bản xứ thay thế sữa tươi đắt đỏ bằng sữa đặc rẻ tiền hơn để pha cùng cà phê. Tuy nhiên việc làm này vô tình khiến kết cấu của ly cà phê sánh đặc và đậm đà hơn. Dần dà, ly cà-phê-sữa-đặc đậm vị quen thuộc với nếp sống người Việt trở thành một nét sáng tạo riêng, chinh phục được trái tim hàng triệu người yêu cà phê trên thế giới.
Chằng có cách nào mô tả chính xác được mùi vị của Cà phê sữa Việt Nam hơn việc tự mình nhấm nháp.


Ngụm đầu tiên, vị ngọt thấm vào đầu lưỡi. Sau đó rút đi, để lại vị đắng thanh thoát.
Ngụm thứ hai, và bất chợt bạn cảm thấy mọi thứ trên đời này đều ổn cả.', 
32000, 1, 1, 0, N'cafesua.jpg', 1),
--
(5, N'Cappuccino', N'Cappuccino được gọi vui là thức uống "một-phần-ba" - 1/3 Espresso, 1/3 Sữa nóng, 1/3 Foam.', 
N'SÀNH ĐIỆU PHONG CÁCH Ý', 
N'Tay nghề của một Barista được cân đo đong đếm trong một cốc Cappuccino.


Bên dưới tầng foam xốp, dày và mịn là lớp Espresso mang hương vị mạnh mẽ và đậm đặc. Những nghệ nhân pha chế của The Coffee House luôn biết cách đo lường độ cân bằng giữa Espresso, sữa nóng và foam - 3 yếu tố tạo nên ly Cappuccino yêu thích của bạn.


Một điều nho nhỏ có lẽ bạn chưa biết, ở Ý, người ta thưởng thức Cappuccino chung với bữa sáng và hiếm khi uống Cappuccino sau 11 giờ trưa.', 
50000, 0, 0, 0, N'cappucino.jpg', 1),
--
(6, N'Caramel macchiato', N'Vị thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát của cà phê Espresso hảo hạng, và vị ngọt đậm của sốt caramel.', 
N'Cái nhấp môi ngọt ngào', 
N'Mỗi cái nhấp môi vào li Caramel Macchiato sẽ đem đến một sự ngạc nhiên thú vị, vì nhiều hương vị được gói gọn trong một li Caramel Macchiato: vị thơm béo của bọt sữa và sữa tươi, vị đắng thanh thoát của cà phê Espresso hảo hạng, và vị ngọt đậm của sốt caramel.', 
50000, 0, 1, 1, N'caramelmacchiato.jpg', 1),
--
(7, N'Coldbrew Phúc Bồn Tử', N'Cold Brew - xu hướng thưởng thức mới của người yêu cà phê trên thế giới', 
N'Coldbrew - Phúc Bồn Tử', 
N'Một sự kết hợp đầy thuyết phục cho những người thích cà phê nhưng lại muốn thay đổi vị.
Vị chua ngọt của trái phúc bồn tử, làm dậy lên hương vị trái cây tự nhiên vốn sẵn có trong hạt cà phê, hòa quyện thêm vị đăng đắng, ngọt dịu nhẹ nhàng của Cold Brew để mang đến một cách thưởng thức cà phê hoàn toàn mới, vừa thơm lừng hương cà phê quen thuộc, vừa nhẹ nhàng và thanh mát bởi hương trái cây đầy thú vị.', 
50000, 1, 0, 0, N'cbPhucbontu.jpg', 1),
--
(8, N'Coldbrew Sữa tươi', N'Cold Brew - xu hướng thưởng thức mới của người yêu cà phê trên thế giới',
N'Cái nhấp môi ngọt ngào', 
N'Thanh mát và cân bằng với hương vị cà phê nguyên bản 100% Arabica Cầu Đất cùng sữa tươi thơm béo cho từng ngụm tròn vị, hấp dẫn.', 
45000, 0, 1, 1, N'cbSuatuoi.jpg', 1),
--
(9, N'Coldbrew Truyền thống', N'Cold Brew - xu hướng thưởng thức mới của người yêu cà phê trên thế giới', 
N'Sự mộc mạc trở thành dấu ấn Việt', 
N'Trong một năm trở lại đây, cà phê pha lạnh Cold Brew đã trở thành một xu hướng thưởng thức mới đối với các tín đồ cà phê Việt Nam.
Cách pha chế Cold Brew tưởng chừng như đơn giản nhưng thực chất lại đòi hỏi rất nhiều sự tinh tế, cẩn trọng của người barista trong từng khâu thực hiện.
Mất 24 tiếng để ngâm ủ cà phê trong nước lạnh, Cold Brew mang đến sự mượt mà và tinh tế trong hương vị.
Tại The Coffee House, Cold Brew được ủ và phục vụ mỗi ngày từ 100% hạt Arabica Cầu Đất với hương gỗ thông, hạt dẻ, nốt sô-cô-la đặc trưng, thoang thoảng hương khói nhẹ giúp Cold Brew giữ nguyên vị tươi mới', 
45000, 0, 0, 0, N'cbTruyenthong.jpg', 1),
--
(10, N'Thùng cafe sữa đá', N'Cafe chưa bao giờ làm thất vọng cho người thưởng thức.', 
N'Một lon không đủ?', 
N'Hãy để Cà phê sữa đá Nhà thơm ngon đậm vị đồng hành cùng nhịp sống sôi nổi của tuổi trẻ, cho bạn một ngày làm việc đầy hứng khởi.', 
290000, 0, 1, 1, N'thungCafe.jpg', 2),
--
(11, N'Cafe phin', N'Cafe chưa bao giờ làm thất vọng cho người thưởng thức.', 
N'TỰ TAY PHA TẠI NHÀ
MỘT LY CÀ PHÊ ĐẬM ĐÀ', 
N'Cà phê Phin của The Coffee House được phối trộn theo tỉ lệ hoàn hảo giữa hạt Robusta và hạt Arabica được hái chín đến 95%.

The Coffee House áp dụng kĩ thuật rang xay hiện đại để tạo ra hương vị cân bằng tròn vị giữa những nốt hương đặc trưng, vị chua nhẹ, nhưng vẫn giữ được hậu vị đậm đà khi thưởng thức, "đúng gu" cà phê Việt.', 
60000, 1, 1, 0, N'cafephin.jpg', 2),
--
(12, N'Cafe Arabica', N'Cafe chưa bao giờ làm thất vọng cho người thưởng thức.', 
N'TỰ TAY PHA TẠI NHÀ
MỘT LY CÀ PHÊ ĐẬM ĐÀ', 
N'Nhà gửi bạn hương vị cà phê từ 100% hạt Arabica, được chọn lọc kỹ lưỡng tại vùng Cầu Đất, với độ cao 1650m.

Với vị đắng nhẹ, hậu vị chua thanh, ngọt dịu, cà phê Arabica từ Nhà sẽ giúp bạn tạo ra những tách cà phê máy hay hand brew đậm đà yêu thích của riêng mình.', 
100000, 1, 1, 0, N'cafearabica.jpg', 2),
--
(13, N'Trà long nhãn hạt chia', N'Lắc đều bí đao và syrup, thêm topping hạt chia, sương sáo và thạch dừa', 
N'Ngọt dịu, tươi mát', 
N'Cùng vị nhãn đặc trưng quyện cùng trà và hạt chia. Nền trà oolong hảo hạng kết hợp với vị nhãn vạn người mê. Nhâm nhi và cảm nhận trọn vẹn hương vị nhãn đặc trưng, cùng trà ngọt thanh và hạt chia bổ dưỡng.', 
45000, 1, 0, 0, N'longnhanchia.jpg', 3),
--
(14, N'Trà hạt sen', N'Trà sen vàng với chất nước thanh mát cùng hạt sen bùi bùi tốt cho sức khỏe', 
N'Ngọt dịu, tươi mát', 
N'Sự kết hợp của Trà hương thơm nhẹ, vị nồng hậu cùng Hạt sen tươi mềm có vị ngọt, sáp, vừa ngon miệng vừa có tác dụng an thần, tốt cho cơ thể.

Đặc biệt, lớp kem sữa phô mai được phủ lên bề mặt ly sẽ cho bạn một trải nghiệm cân bằng hơn về hương vị.', 
45000, 1, 0, 0, N'hatsen.jpg', 3),
--
(15, N'Trà matcha macchiato', N'Bột trà xanh Matcha thơm lừng hảo hạng cùng lớp Macchiato béo ngậy là một sự kết hợp tuyệt vời.', 
N'HÃY THỬ MATCHA MACCHIATO', 
N'Bột trà xanh Matcha thơm lừng hảo hạng cùng lớp Macchiato béo ngậy là một sự kết hợp tuyệt vời. Nếu bạn yêu thích Matcha Latte, không lý nào lại không thử Matcha Macchiato của chúng tôi.
Đảm bảo bạn sẽ không hối hận đâu!', 
45000, 1, 1, 0, N'matcham.jpg', 3),
--
(16, N'Trà đào cam sả', N'Vị thanh ngọt của đào Hy Lạp, vị chua dịu của Cam Vàng nguyên vỏ, vị chát của trà đen tươi được ủ mới mỗi 4 tiếng, cùng hương thơm nồng đặc trưng của sả chính là điểm sáng làm nên sức hấp dẫn của thức uống này. Sản phẩm hiện có 2 phiên bản Nóng và Lạnh phù hợp cho mọi thời gian trong năm.', 
N'Vì sao trong trà đào lại có sả?', 
N'Khi sáng chế ra thức uống này, người nghệ nhân tại The Coffee House muốn để lại dấu ấn riêng rất Việt trong món trà đào có phần quen thuộc đối với mọi người.


Sả được trồng và sử dụng rộng rãi như là một gia vị thường thấy trong bữa ăn hằng ngày tại các nước châu Á. Ngoài ra, sả còn có hương thơm của chanh, tính ấm, kết hợp với tính hàn của Cam vàng Mỹ, tạo nên sự kết hợp cân bằng, vừa mang dấu ấn riêng của Việt Nam, vừa có sự pha trộn phương Tây trong ly Trà đào Cam Sả The Coffee House.

Vị thanh ngọt của đào Hy Lạp, vị chua dịu của Cam Vàng nguyên vỏ, vị chát của trà đen tươi được ủ mới mỗi 4 tiếng, cùng hương thơm nồng đặc trưng của sả chính là điểm sáng làm nên sức hấp dẫn của thức uống này.


Để hiểu vì sao mỗi ngày có đến 20,000 ly Trà Đào Cam Sả được The Coffee House trao đến tay khách hàng, đến store gần nhất và order một ly Trà đào cam sả "trứ danh" để cảm nhận, bạn nhé!', 
45000, 0, 0, 0, N'camsa.jpg', 3),
--
(17, N'Trà sữa mắc ca trân châu', N'Trà sữa mắc ca không quá ngọt, thơm nhẹ mùi mắc ca.', 
N'Hương vị thân quen mà mới lạ', 
N'Đổi vị tươi mới - Vừa ngon vừa khoẻ
Mỗi ngày với Nhà sẽ là điều tươi mới hơn với sữa hạt mắc ca thơm ngon, bổ dưỡng quyện cùng nền trà Oolong cho vị cân bằng, ngọt dịu. Trân châu giòn dai được thêm sẵn, mang lại cho bạn cảm giác "đã" trong từng ngụm, thoả cơn thèm trà sữa ngay.', 
50000, 1, 1, 0, N'macca.jpg', 3),
--
(18, N'Trà phúc bồn tử', N'Lắc đều trà cùng đường, mật ong và chanh sau đó đổ ra ly', 
N'Thức uống mới lạ', 
N'Một sự kết hợp đầy hoàn hảo giữa thanh mát và bổ dưỡng.
Lần đầu tiên Trà và trái "Phúc Bồn Tử" hoàn toàn tự nhiên, được các barista của chúng tôi kết hợp một cách tinh tế để tạo ra một dư vị hoàn toàn tươi mới.
Nhấp ngay một ngụm là thấy mát lạnh ngay tức khắc, đọng lại mãi nơi cuốn họng là hương vị trà thơm lừng và vị ngọt thanh, chua dịu khó quên của trái phúc bồn tử.', 
50000, 1, 1, 0, N'pbt.jpg', 3),
--
(19, N'Chanh sả đá xay', N'Chanh được kết hợp với đá sẽ là giải pháp rất tốt cho mùa hè.', 
N'Giải khát cực đã', 
N'Sự kết hợp hài hoà giữa những nguyên liệu mộc mạc rất đỗi quen thuộc đối với người Việt cho một thức uống thanh mát, giải nhiệt lại tốt cho sức khoẻ.', 
49000, 1, 1, 0, N'chanhsa.jpg', 4),
--
(20, N'Cà phê đá xay', N'Cà phê lại kết hợp với đá xay?', 
N'Vị cà phê sảng khoái', 
N'Một phiên bản "upgrade" từ ly cà phê sữa quen thuộc, nhưng lại đầy tỉnh táo và tươi mát hơn bởi lớp đá xay mát lạnh đi kèm. Nhấp 1 ngụm là thấy đã, ngụm thứ hai thêm tỉnh táo và cứ thế lôi cuốn bạn đến giọt cuối cùng.', 
59000, 1, 1, 0, N'cafedasay.jpg', 4),
--
(21, N'Phúc bồn tử cam đá xay', N'Không bao giờ làm bạn thất vọng 1 cú “twist” ngoạn mục trong hương vị của Đá Xay mát lạnh', 
N'Giải khát cực đã', 
N'Tê tái ngay đầu lưỡi bởi sự mát lạnh của đá xay.

Hòa quyện thêm hương vị chua chua, ngọt ngọt từ trái cam tươi và trái phúc bồn tử 100% tự nhiên, để cho ra một hương vị thanh mát, kích thích vị giác đầy thú vị ngay từ lần đầu thưởng thức.

Lại thêm một lựa chọn mới cho "team đá xay" và "team trái cây", còn chần chờ gì nữa mà không thử ngay thôi!', 
59000, 0, 0, 0, N'campbt.jpg', 4),
--
(22, N'Sinh tố việt quất', N'Mứt Việt Quất chua thanh, ngòn ngọt, phối hợp nhịp nhàng với dòng sữa chua bổ dưỡng. Là món sinh tố thơm ngon mà cả đầu lưỡi và làn da đều thích.', 
N'Sóng sánh mộng mơ', 
N'Mứt Việt Quất chua thanh, ngòn ngọt, phối hợp nhịp nhàng với dòng sữa chua bổ dưỡng. Là món sinh tố thơm ngon mà cả đầu lưỡi và làn da đều thích.', 
59000, 1, 1, 0, N'stVietquat.jpg', 4),
--
(23, N'Cookies đá xay', N'Những mẩu bánh cookies giòn rụm kết hợp ăn ý với sữa tươi và kem tươi béo ngọt, đem đến cảm giác lạ miệng gây thích thú. Một món uống phá cách dễ thương.', 
N'Từng ngụm thú vị!', 
N'Những mẩu bánh cookies giòn rụm kết hợp ăn ý với sữa tươi và kem tươi béo ngọt, đem đến cảm giác lạ miệng gây thích thú. Một món uống phá cách dễ thương.', 
59000, 0, 0, 0, N'cookieds.jpg', 4),
--
(24, N'Matcha đá xay', N'Mứt Việt Quất chua thanh, ngòn ngọt, phối hợp nhịp nhàng với dòng sữa chua bổ dưỡng. Là món sinh tố thơm ngon mà cả đầu lưỡi và làn da đều thích.', 
N'Sóng sánh mộng mơ', 
N'Mứt Việt Quất chua thanh, ngòn ngọt, phối hợp nhịp nhàng với dòng sữa chua bổ dưỡng. Là món sinh tố thơm ngon mà cả đầu lưỡi và làn da đều thích.', 
59000, 0, 0, 1, N'matchads.jpg', 4),
--
(25, N'Sô cô la', N'Cacao nguyên chất hoà cùng sữa tươi béo ngậy. Vị ngọt tự nhiên, không gắt cổ, để lại một chút đắng nhẹ, cay cay trên đầu lưỡi.',
N'Ấm áp thuần chất', 
N'Cacao nguyên chất hoà cùng sữa tươi béo ngậy. Vị ngọt tự nhiên, không gắt cổ, để lại một chút đắng nhẹ, cay cay trên đầu lưỡi. Món uống có quyền năng an ủi tinh thần, dỗ dành tâm trạng.', 
59000, 0, 0, 1, N'socola.jpg', 4),
--
(26, N'Bánh bao hai trứng cút', N'Thơm ngon, bổ sung dinh dưỡng cho ngày dài năng động.', 
N'Ngon từ vỏ, ngọt từ nhân', 
N'Đồ ăn sáng thân thuộc với mọi người. Cảm nhận hương vị bánh ấm nóng vào buổi sáng còn gì tuyệt vời hơn.', 
25000, 0, 0, 0, N'bbao2trung.jpg', 5),
--
(27, N'Bánh mì chà bông phô mai', N'Thơm ngon, bổ sung dinh dưỡng cho ngày dài năng động.', 
N'Vị ngon không thể cưỡng', 
N'Bạn không thể bỏ lỡ chiếc bánh với lớp phô mai vàng sánh mịn bên trong, được bọc ngoài lớp vỏ xốp mềm thơm lừng. Thêm lớp chà bông mằn mặn hấp dẫn bên trên.', 
32000, 0, 0, 0, N'bmiChabong.jpg', 5),
--
(28, N'Bánh mì que', N'Hấp thu những tinh túy đặc thù của bánh mì Pháp cùng một chút “biến tấu” về nhân để phù hợp nhất với khẩu vị của người Việt.', 
N'Hương vị nguyên bản', 
N'Ngoại hình thon dài vui mắt, bánh mì que còn nổi tiếng bởi hương thơm nồng và vị beo béo, bùi bùi, đậm đà vừa miệng lại cay cay tê tê, kích thích vị giác khó tả.', 
12000, 1, 1, 1, N'bmiQue.jpg', 5),
--
(29, N'Bông lan trứng muối', N'Ngọt, mềm mịn, tơi xốp', 
N'Vị ngon không thể cưỡng', 
N'Chắc chắn bạn sẽ không thể cưỡng lại chiếc bánh bông lan tơi xốp, mềm mịn, vị ngọt dịu kết hợp với trứng muối và chà bông đậm đà, cân bằng vị giác.', 
29000, 0, 0, 0, N'bltrungmuoi.jpg', 5),
--
(30, N'Cam tươi sấy dẻo', N'Sản phẩm sấy từ những quả cam tươi ngon, chúng có vị ngọt nhẹ nhàng hòa một chút chua chua và vị the the đầy hấp dẫn.', 
N'Không chỉ cam tươi mà', 
N'Cam tươi sấy khô dẻo dai, ngọt bùi và chua thanh đầy thú vị. Món ăn vặt "healthy" kích thích vị giác cho bạn khi buồn miệng.', 
35000, 1, 1, 0, N'camtuoisay.jpg', 5),
--
(31, N'Cơm cháy chà bông', N'Món ăn vặt khoái khẩu, giòn cay với vị giòn rụm của nếp chiên, nước mắm thơm thơm cay cay hấp dẫn.', 
N'Vị ngon không thể cưỡng', 
N'Món ăn thân thuộc với mọi người, hương vị đậm đà từ chà bông sẽ khiến mọi người mê mẩn. ', 
35000, 0, 0, 0, N'comchay.jpg', 5),
--
(32, N'Gà xé lá chanh', N'Món ăn vặt được bản trẻ yêu thích.', 
N'Vị ngon không thể cưỡng', 
N'Thịt gà được xé tơi, vị mặn, ngọt và cay quyện nhau vừa chuẩn, thêm chút thơm thơm từ lá chanh sấy khô giòn giòn nữa thì cơn buồn miệng nào cũng sẽ bị xua tan.', 
25000, 0, 0, 0, N'gaxelachanh.jpg', 5),
--
(33, N'Heo sấy xông khói', N'Món ăn vặt được bản trẻ yêu thích.', 
N'Vị ngon không thể cưỡng', 
N'Thịt heo được ướp gia vị đậm đà - mặn, ngọt, chua, cay ngon ngất ngây. Chút "mồi" sừng sựt để cuộc hẹn hò không bao giờ chán.', 
35000, 0, 0, 0, N'heosay.jpg', 5),
--
(34, N'Mít sấy', N'Món ăn vặt được bản trẻ yêu thích.', 
N'Vị ngon không thể cưỡng', 
N'Khi "ăn vặt" đã trở thành xu thế, thì sao có thể bỏ qua mít sấy cực ngon của Nhà. Mít sấy khô vàng ươm giòn rụm, khi ăn vẫn giữ nguyên được vị ngọt lịm của mít tươi. Đến Nhà trò chuyện rôm rã và thưởng thức mít sấy để cho câu chuyện thêm giòn thêm vui ngay thôi!', 
20000, 0, 0, 0, N'mitsay.jpg', 5),
--
(35, N'Mochi kem chocolate', N'Món ăn ngọt Nhật Bản được mọi người trên thế giới ưa thích', 
N'Ngon ngọt mịn', 
N'Cảm nhận hương vị Á Âu từ lớp vỏ nếp sô cô la ngọt dẻo, đến lớp kem lạnh và sốt sô cô la bên trong. Cắn 1 miếng là mê ngay.', 
19000, 0, 0, 0, N'mochichoco.jpg', 5),
--
(36, N'Mochi kem dừa dứa', N'Món ăn ngọt Nhật Bản được mọi người trên thế giới ưa thích', 
N'Ngon ngọt mịn', 
N'Vừa quen vừa lạ từ vỏ bánh mềm dẻo, đến lớp kem lạnh và hương thơm ngọt ngào từ dừa dứa.', 
19000, 0, 0, 0, N'mochidua.jpg', 5),
--
(37, N'Mochi kem matcha', N'Món ăn ngọt Nhật Bản được mọi người trên thế giới ưa thích', 
N'Ngon ngọt mịn', 
N'Vừa quen vừa lạ từ vỏ bánh mềm dẻo, đến lớp kem lạnh và nhân trà xanh đậm vị, gọi 1 chiếc Mochi cho ngày thiệt tươi nha.', 
19000, 0, 0, 0, N'mochimatcha.jpg', 5),
--
(38, N'Mochi kem phúc bồn tử', N'Món ăn ngọt Nhật Bản được mọi người trên thế giới ưa thích', 
N'Ngon ngọt mịn', 
N'Vừa quen vừa lạ từ vỏ bánh mềm dẻo, đến lớp kem lạnh và nhân phúc bồn tử đậm vị, gọi 1 chiếc Mochi cho ngày thiệt tươi nha.', 
19000, 0, 0, 0, N'mochipbt.jpg', 5),
--
(39, N'Mochi kem xoài', N'Món ăn ngọt Nhật Bản được mọi người trên thế giới ưa thích', 
N'Ngon ngọt mịn', 
N'Bạn sẽ thích thú với hương vị chua chua ngọt ngọt từ sự kết hợp giữa nhân kem lạnh và sốt xoài. Bao bọc bởi lớp vỏ nếp mềm dẻo. Gọi Mocchi Xoài cho ngày dài thiệt tươi.', 
19000, 0, 0, 0, N'mochikx.jpg', 5),
--
(40, N'Mochi kem kim việt quất', N'Món ăn ngọt Nhật Bản được mọi người trên thế giới ưa thích', 
N'Ngon ngọt mịn',
N'Hương thơm ngọt ngào kết hợp với vỏ bánh mềm dẻo sẽ làm hài lòng mọi thực khách', 
19000, 0, 0, 0, N'mochivietquat.jpg', 5),
--
(41, N'Bình giữ nhiệt inox con thuyền', N'Sản phẩm đặc biệt dành cho khách hàng.', 
N'Giữ ấm giữ lạnh giữ mọi thứ trong bình', 
N'Xách bình đi khắp thế gian, với thiết kế xịn sò, màu sắc nổi bật, người bạn mới này sẽ nhắc bạn uống nước mỗi ngày ngon hơn, đều đặn hơn nha.

Dung tích: 500ml

Chất liệu: Inox', 
300000, 0, 0, 0, N'binhthuyen.jpg', 6),
--
(42, N'Bình giữ nhiệt inox đen 500ml', N'Sản phẩm đặc biệt dành cho khách hàng.', 
N'Giữ ấm giữ lạnh giữ mọi thứ trong bình', 
N'Xách bình đi khắp thế gian, với thiết kế xịn sò, màu sắc nổi bật, người bạn mới này sẽ nhắc bạn uống nước mỗi ngày ngon hơn, đều đặn hơn nha.

Dung tích: 500ml

Chất liệu: Inox', 
300000, 0, 0, 0, N'binhden.jpg', 6),
--
(43, N'Bình giữ nhiệt inox quả dứa', N'Sản phẩm đặc biệt dành cho khách hàng.', 
N'Giữ ấm giữ lạnh giữ mọi thứ trong bình', 
N'Xách bình đi khắp thế gian, với thiết kế xịn sò, màu sắc nổi bật, người bạn mới này sẽ nhắc bạn uống nước mỗi ngày ngon hơn, đều đặn hơn nha.

Dung tích: 500ml

Chất liệu: Inox', 
300000, 0, 0, 0, N'binhdua.jpg', 6),
--
(44, N'Bình giữ nhiệt inox trắng đen 500ml', N'Sản phẩm đặc biệt dành cho khách hàng.', 
N'Giữ ấm giữ lạnh giữ mọi thứ trong bình', 
N'Xách bình đi khắp thế gian, với thiết kế xịn sò, màu sắc nổi bật, người bạn mới này sẽ nhắc bạn uống nước mỗi ngày ngon hơn, đều đặn hơn nha.

Dung tích: 500ml

Chất liệu: Inox', 
250000, 0, 0, 0, N'binhtd.jpg', 6),
--
(45, N'Bình giữ nhiệt inox xám cam 473ml',  N'Sản phẩm đặc biệt dành cho khách hàng.',  
N'Giữ ấm giữ lạnh giữ mọi thứ trong bình', 
N'Xách bình đi khắp thế gian, với thiết kế xịn sò, màu sắc nổi bật, người bạn mới này sẽ nhắc bạn uống nước mỗi ngày ngon hơn, đều đặn hơn nha.

Dung tích: 500ml

Chất liệu: Inox', 
250000, 0, 0, 0, N'binhxc.jpg', 6),
--
(46, N'Cốc sứ The Coffee house Đà Nẵng',  N'Sản phẩm đặc biệt dành cho khách hàng.',  
N'Không chỉ là một chiếc cốc', 
N'Lấy cảm hứng từ những biểu tượng quen thuộc của Đà Nẵng, hiện đại và dễ thương, đây sẽ là món quà đặc biệt mà bất cứ ai cũng sẽ yêu thích, hôm nay bạn cũng có thể tự tặng món quà này cho mình.
Dung tích: 450ml

Chất liệu: Sứ', 
120000, 0, 0, 0, N'cocDNjpg.jpg', 6),
--
(47, N'Cốc sứ The Coffee house gợn sóng',  N'Sản phẩm đặc biệt dành cho khách hàng.', 
N'Không chỉ là một chiếc cốc', 
N'Một chiếc ly mới, mang lại cảm hứng mới mỗi ngày cho bạn hoặc cho ai đó khi nhận được món quà xịn sò này.

Dung tích: 450 ml

Chất liệu: Sứ', 
100000, 0, 0, 0, N'cocGS.jpg', 6),
--
(48, N'Cốc sứ The Coffee house Hà Nội',  N'Sản phẩm đặc biệt dành cho khách hàng.', 
N'Không chỉ là một chiếc cốc', 
N'Lấy cảm hứng từ những biểu tượng quen thuộc của Hà Nội, cổ kính, thân thương, đây sẽ là món quà đặc biệt mà bất cứ ai cũng sẽ yêu thích, hôm nay bạn cũng có thể tự tặng món quà này cho mình.

Dung tích: 450ml

Chất liệu: Sứ', 
120000, 0, 0, 0, N'cocHN.jpg', 6),
--
(49, N'Cốc sứ The Coffee house TPHCM',  N'Sản phẩm đặc biệt dành cho khách hàng.', 
N'Không chỉ là một chiếc cốc', 
N'Lấy cảm hứng từ những biểu tượng quen thuộc của Sài Gòn, nhộn nhịp và gần gũi, đây sẽ là món quà đặc biệt mà bất cứ ai cũng sẽ yêu thích, hôm nay bạn cũng có thể tự tặng món quà này cho mình.

Dung tích: 450ml

Chất liệu: Sứ', 
120000, 0, 0, 0, N'cocHCM.jpg', 6),
--
(50, N'Ly Inox ống hút đen nhám',  N'Sản phẩm đặc biệt dành cho khách hàng.', 
N'Không chỉ là một cái ly', 
N'Màu đen ngày nào cũng được khen- Chiếc ly inbox kèm ống hút mang sắc đen ngầu này sẽ là người bạn đồng hành may mắn mỗi ngày bên bạn, nước ngon hơn, nhiều cảm hứng hơn.

Dung tích: 500ml

Chất liệu: Inox, nhựa', 
280000, 0, 0, 0, N'lyden.jpg', 6),
--
(51, N'Ly nhựa 2 lớp quả dứa',  N'Sản phẩm đặc biệt dành cho khách hàng.', 
N'Không chỉ là một cái ly', 
N'Một người bạn "Go green" mới sẽ mang lại nguồn cảm hứng mới cho món quen mỗi ngày của bạn.

Dung tích ly: 450ml

Chất liệu: Inox, nhựa 2 lớp', 
180000, 0, 0, 0, N'lynDua.jpg', 6),
--
(52, N'Túi Canvas trăng nhà sung túc',  N'Sản phẩm đặc biệt dành cho khách hàng.', 
N'Là túi nhưng phông phải túi', 
N'Đựng cả thế giới với túi vải của Nhà. Một trung thu hiện đại nhưng quen thuộc, gần gũi được khắc hoạ trên chiếc túi xinh thiệt xinh này. Cùng mang túi đi khắp thế gian thôi!

*Chất liệu: Canvas, cotton
*Kích thước: 38 cm x 38 cm', 
79000, 0, 0, 0, N'tuitrang.jpg', 6)


create table GioHang
(maGioHang int primary key IDENTITY (100,1),
maKhachHang int,
ngayBan datetime,
tongSoLuong int,
thanhTien float,
constraint Fk_GH1 foreign key (maKhachHang) references ThongTinKhachHang(maKhachHang)
)



create table ChiTietGioHang
(maChiTietGioHang int primary key identity(10, 1),
maSanPham int,
soLuong int,
donGia float,
maGioHang int,
constraint Fk_CTGH1 foreign key (maSanPham) references SanPham(MaSanPham),
constraint Fk_CTGH2 foreign key (maGioHang) references GioHang(maGioHang)
)






-- Tạo bảng hóa đơn
create table HoaDon
(maHoaDon int primary key IDENTITY (1,1),
maKhachHang int,
ngayBan datetime,
tongSoLuong int,
giamGia float,
thanhTien float,
hinhThucThanhToan nvarchar(50)
constraint Fk_HD3 foreign key (maKhachHang) references ThongTinKhachHang(maKhachHang)
)


insert into HoaDon values('101', '2020-1-1', '3', '2000', '2000')

insert into HoaDon values('101', '2020-1-1', '3', '2000', '2000')



create table ChiTietHoaDon
(maChiTietHoaDon int primary key identity(1, 1),
maSanPham int,
soLuong int,
donGia float,
maHoaDon int,
constraint Fk_CTHD1 foreign key (maSanPham) references SanPham(MaSanPham),
constraint Fk_CTHD2 foreign key (maHoaDon) references HoaDon(maHoaDon)
)








create trigger tg_HangBan
on HoaDon 
for insert 
as 
begin
	declare @soLuongBan int
	set @soLuongBan = (select soLuong from HoaDon)
	update KhoHang set soLuongTon = soLuongTon - @soLuongBan
end


--tao bang phản hồi sản phẩm của khách hàng
create table PhanHoi
(maPH int primary key identity(10000,1),
maKhachHang int,
diem int,
ghiChu nvarchar(1000),
constraint Fk_PH3 foreign key (maKhachHang) references ThongTinKhachHang(maKhachHang)
)



--taoj bảng tin tức
create table TinTuc
(maTinTuc int primary key,
tieuDe nvarchar(1000) not null,
noiDung nvarchar(3000),
hinhAnh nvarchar(30),
ngayDang datetime,
)



insert into TinTuc values
(1, N'MỪNG SINH NHẬT NHÀ 7 TUỔI', 
N'Tháng 8 về, Nhà mừng tuổi mới. Cảm ơn các bạn đã cùng Nhà đồng hành trong suốt chặng đường 7 năm qua. 2020 - 2021 là 1 năm đầy thử thách với tất cả chúng ta, dù vậy Nhà đã có 1 năm thật nhiều ý nghĩa với sự đồng hành từ bạn. 
28 Nhà mới mở cửa phục vụ bạn nâng tổng số Nhà trên toàn quốc lên 181, trong đó có 3 tỉnh thành Nhà lần đầu tiên được đặt chân đến: Phú Quốc, Tây Ninh & Hà Tĩnh. Đặc biệt, năm 2020 cũng là năm Nhà ra mắt "The Coffee House Destination" tại Phú Quốc và Tây Ninh. "The Coffee House Destination" là concept Nhà đặt tại các điểm du lịch nổi tiếng, với thiết kế được địa phương hoá để tăng trải nghiệm của khách hàng.
Đều đặn ra mắt các bộ sưu tập món mới cho Fan phát mê: 

Collection Trứng muối với Trà lài sen trứng muối, Cà phê sữa trứng muối, Trà sữa khoai môn.
Collection "Taste of XMas"  Chạm vị Giáng Sinh với 2 món uống béo ngọt Merry Choco (Choco Lúa mạch) và Merry Coffee (Cà phê lúa mạch)
Bộ đôi Dưa lưới: Trà dưa lưới phú quý & Yogurt dưa lưới phát tài
Trăng Nhà Sung Túc với 3 món nước được ra mắt dịp trung thu: Trà sữa khoai môn, Cà phê sữa trứng muối & Trà lài sen trứng muối
Golden Kiwi được ra mắt tại The Coffee House Signature với 2 hương vị: Golden Kiwi Cold Brew & Golden Kiwi Jasmine Tea
Trà sữa Nhà đúng gu với 3 hương vị: Hồng Trà Latte Macchiato, Trà sữa Oolong nướng & Hồng trà sữa trân châu
2 Sản phẩm cà phê uống liền mới toanh chào sân: Cà phê sữa đá hoà tan và Cà phê sữa đá lon. Năm 2021 bên cạnh các sản phẩm cà phê rang xay, The Coffee House cũng chính thức ra mắt 2 sản phẩm hoà tan để phục vụ nhu cầu thưởng thức cà phê tại nhà của khách hàng: Cà phê sữa đá hoa tan và cà phê sữa đá lon.
 Tổ chức những hoạt động Online đến Offline với mong muốn mang đến những trải nghiệm ngày càng mới mẻ cho khách hàng: Livestream Workfromhome & Tour Trà Sữa lớn nhất năm. 
 Tiếp nối chương trình cộng đồng #Cảmơnnhữngngườihùngthầmlặng với hàng ngàn phần quà đã được Nhà trao đi kèm theo lời nhắn từ các bạn. 
 Hy vọng bạn sẽ tiếp tục cùng Nhà đồng hành trên hành trình lan toả hạnh phúc, mang đến nhiều hơn những ly cà phê tử tế và khám phá nhiều vùng đất mới với lời hứa "Ai rồi cũng có một The Coffee House gần nhà". Bạn có kỷ niệm nào đặc biệt với Nhà trong năm qua, để lại bình luận để Nhà biết với nhé!
',
N'tin1.jpg','2021-08-24')

insert into TinTuc values
(2, N'Nhà Thông Báo Chính Sách Phí Giao Hàng Mới', 
N'Nhà xin phép thông báo đến bạn từ ngày 29/07/2021 do ảnh hưởng từ các quy định giới hạn và quản lý giám sát mùa dịch, Nhà sẽ tạm dừng áp dụng ưu đãi Freeship cho đơn hàng từ 50K. Phí giao hàng sẽ được áp dụng theo địa điểm đặt hàng.

Cảm ơn bạn đã lựa chọn đồng hành và luôn ủng hộ các sản phẩm, dịch vụ mới từ Nhà. 

Tại Hồ Chí Minh và Hà Nội, bạn có thể đặt các sản phẩm cà phê uống liền và nhận ưu đãi giảm 10% cho các đơn hàng từ 119.000đ tại link sau: 

Link order: https://order.thecoffeehouse.com/cpg/facebook

Mở app tại đây: https://tchapp.page.link/installv5, để khám phá thêm nhiều ưu đãi thành viên.

_______

* Các sản phẩm được áp dụng: Cà phê sữa đá hoà tan, Cà phê sữa đá lon, Cà phê rang xay

#Thecoffeehouse #Stayhomestaysafe',
N'tin2.jpg','2021-07-29')
insert into TinTuc values
(3, N'NHÀ MỞ LẠI GIAO HÀNG TẬN NƠI TẤT CẢ CÁC SẢN PHẨM CÀ PHÊ UỐNG LIỀN', 
N'Không để bạn phải chờ lâu thêm nữa, Nhà chính thức mở lại dịch vụ Giao hàng tận nơi cho khu vực Hồ Chí Minh từ hôm nay. Bạn có thể đặt mua ngay các dòng sản phẩm cà phê uống liền và cà phê rang xay qua App The Coffee House và Website đặt hàng.

Các sản phẩm bạn có thể đặt mua bao gồm: Cà phê sữa đá hoà tan, cà phê sữa đá lon, cà phê rang xay Peak Flavor (Hương thơm đỉnh cao) và Rich Finish (Gu Đậm Tinh Tế). Hơn thế nữa, Nhà còn gởi bạn ưu đãi 10% cho tất cả các đơn hàng từ 119.000đ. 
Đối với các sản phẩm cà phê lon, bạn có thêm lựa chọn cực hời khi mua theo thùng 24 lon với giá chỉ 289.000đ (Giá gốc 336.00đ). 
Ở nhà cần năng lượng order The Coffee House. Nhà Hẹn sớm gặp lại nhau bạn nhé! ',
N'tin3.jpg','2020-05-20')
insert into TinTuc values
(4, N'THÔNG BÁO TẠM ĐÓNG CỬA CÁC CỬA HÀNG TẠI TP.HCM TỪ 0H NGÀY 09/07', 
N'Trước tình hình diễn biến phức tạp của Covid-19, nhằm chủ động bảo vệ sức khỏe cho khách hàng, cộng đồng và tuân thủ chỉ đạo của Ủy ban Nhân dân Thành phố, The Coffee House xin thông báo tạm thời đóng cửa tất cả các cửa hàng tại Tp.HCM từ 0h ngày 09/07/2021 cho đến khi có thông báo mới nhất.
Đối với những bạn đang sử dụng Gói Work From Home, thời gian sử dụng sẽ được The Coffee House gia hạn thêm tương ứng với thời gian đóng cửa hàng tại Tp.HCM.
Chúng tôi sẽ cập nhật thông tin chính xác và sớm nhất đến các bạn tại Website, Fanpage và Ứng dụng (App) chính thức của The Coffee House. Mọi thông tin cần hỗ trợ, vui lòng liên hệ đường dây nóng Chăm Sóc Khách Hàng (028) 71087088.',
N'tin4.jpg','2021-06-21')
--lol
insert into TinTuc values
(5, N'THE COFFEE HOUSE CẬP NHẬT THÔNG TIN CÔNG VĂN SỐ 129/TB-BCĐ TỪ BAN CHỈ ĐẠO PHÒNG CHỐNG DỊCH COVID-19 ỦY BAN NHÂN DÂN PHƯỜNG 6, QUẬN 4, TP.HCM', 
N'Gửi Quý khách hàng của The Coffee House,

Nhằm tăng cường công tác phòng chống dịch bệnh và ngăn ngừa việc lây nhiễm, tăng cường truy vết, giám sát, phát hiện sớm nhất các trường hợp nhiễm Covid-19 trong cộng đồng, công văn số 129/TB-BCĐ từ Ban Chỉ Đạo Phòng Chống Dịch Bệnh Covid-19 và Trạm Y tế Phường 6, Quận 4, TP.HCM đề nghị:

Tất cả các cá nhân, đơn vị đã đến cửa hàng The Coffee House (Địa chỉ: 37 Đường số 41, Phường 6, Quận 4, TP.HCM) trong vòng 14 ngày kể từ ngày 16/06/2021 nhanh chóng đến Trạm Y tế Phường 6, Quận 4 hoặc Trạm Y tế tại địa phương nơi đang cư trú để khai báo y tế và được hướng dẫn theo quy định.

Mọi thông tin thắc mắc, vui lòng liên hệ Trạm Y tế Phường 6, Quận 4 (Địa chỉ: 178 Bến Vân Đồn, Phường 6, Quận 4, Số điện thoại: (028) 38265644 hoặc liên hệ bà Trần Thị Bích Trâm - Trưởng Trạm Y tế, Số điện thoại: 0906 764 047; bà Vương Thị Linh – Phụ trách Phòng chống dịch, Số điện thoại: 0977 992 374 để được hướng dẫn).

Chúng tôi sẽ cập nhật thông tin chính xác và sớm nhất đến các bạn tại Website, Fanpage và Ứng dụng (App) chính thức của The Coffee House. Mọi thông tin cần hỗ trợ, vui lòng liên hệ đường dây nóng Chăm Sóc Khách Hàng (028) 71087088. ',
N'tin5.jpg','2021-04-12')
insert into TinTuc values
(6, N'Mời bạn dùng thử Cà phê sữa đá hoà tan - Sản phẩm hoàn toàn mới từ Nhà!', 
N'Cà phê sữa đá hoà tan MỚI, muốn là có, pha ngay tại nhà mà vẫn đúng gu, thơm ngon, đậm vị. 
 

Mỗi gói Cà phê sữa đá hoà tan là công thức hoàn hảo cho một ly cà phê sữa thơm ngon, chuẩn chỉnh giúp bạn tỉnh táo và hứng khởi cho một ngày làm việc thật hiệu quả.


ƯU ĐÃI GIÁ DÙNG THỬ:

Với mỗi hóa đơn từ 50.000đ, bạn sẽ được mua 01 hộp 10 gói Cà phê sữa đá hoà tan với giá ưu đãi 29.000đ (giá gốc 44.000đ).

🔸Áp dụng trên App TCH và mua tại Cửa hàng (trừ TCH Signature, TCH Vin Wonders, Grand World, Hòn Thơm, Bà Đen)

🔸Thời gian bắt đầu: từ 19/06 đến 30/06.

🔸Ưu đãi không áp dụng lũy tiến và không áp dụng song song với các chương trình khuyến mãi khác.

 

THÔNG TIN CHI TIẾT

🔸 App The Coffee House: https://tchapp.page.link/installv5.
🔸 Website: https://www.thecoffeehouse.com/prod.../ca-phe-sua-da-hoa-tan',
N'tin6.jpg','2021-06-30')
insert into TinTuc values
(7, N'TĂNG NĂNG SUẤT GẤP 15 KHI LÀM VIỆC TẠI NHÀ VỚI GÓI WORK FROM HOME TƯƠI TỈNH/TƯƠI MÁT - FREESHIP CẢ THÁNG', 
N'Cùng Nhà khám phá Gói Work From Home tại app The Coffee House để thưởng thức món yêu thích và tăng năng suất đến tận 15 lần các bạn nhé. 

Nhà hiểu rằng, đối với những ngày work from home, team ghiền cà phê lúc nào cũng sẽ cần một ly cà phê sữa đá để có thể thực sự bắt tay vào làm việc. Nhà mang đến “GÓI TƯƠI TỈNH”, để ngày nào, bạn cũng được thưởng thức vị bừng tỉnh.. Hiểu ý bạn, Nhà đã mang GÓI TƯƠI TỈNH trở lại với team ghiền cà phê và còn mang thêm GÓI TRÀ TƯƠI MÁT gửi đến các bạn team trà đấy. 

GÓI WORK FROM HOME TƯƠI TỈNH - FREESHIP CẢ THÁNG 

Là gói tiết kiệm được mua trả trước, phục vụ cho nhu cầu thưởng thức Cà phê của bạn mỗi ngày thông qua dịch vụ giao tận nơi trên App The Coffee House, với rất nhiều ữu đãi như: Miễn phí giao hàng (dù chỉ một ly), miễn phí upsize, tặng thêm đến 15 ly và thanh toán 1 lần duy nhất, trong 1 nốt nhạc, không cần tiền mặt.
Áp dụng cho Cà phê sữa/ Cà phê đen/ Bạc xỉu áp dụng cho cỡ ly bất kỳ.

GÓI WORK FROM HOME TƯƠI MÁT - FREESHIP CẢ THÁNG 

Giống như Gói Work From Home Tươi Tỉnh, gói Work From Home Tươi Mát là gói tiết kiệm được mua trả trước, phục vụ nhu cầu thưởng thức trà giải nhiệt ngày hè của bạn mỗi ngày thông qua dịch vụ giao tận nơi trên App The Coffee House, với mức ưu đãi như: Miễn phí giao hàng (dù chỉ một ly), tặng kèm lên đế 15 ly, thanh toán qua thẻ tiện lợi...',
N'tin7.jpg','2021-08-20')
insert into TinTuc values
(8, N'The Coffee House sẵn sàng phục vụ bạn cùng Baemin', 
N'Trải qua hơn 6 năm hình thành và phát triển, dù ở thời điểm nào, The Coffee House cũng luôn kiên trì theo đuổi định hướng khách hàng là trọng tâm, bằng cách mang đến cho khách hàng những trải nghiệm tốt nhất, xây dựng mối quan hệ mật thiết để phục vụ khách hàng mọi lúc mọi nơi.

Vì vậy vào năm 2015, App The Coffee House ra đời đã giúp chúng tôi trực tiếp kết nối với khách hàng. Đông đảo khách hàng đã đón nhận và sử dụng App để trở thành thành viên thân thiết, tích điểm đổi ưu đãi, đặt giao hàng hoặc sử dụng các tính năng trên App để chia sẻ và đóng góp ý kiến. Nhờ đó mà The Coffee House có thể thấu hiểu, nâng tầm sản phẩm và dịch vụ nhằm phục vụ khách hàng tốt hơn.

Không dừng lại đó, chúng tôi vẫn luôn trăn trở về việc làm thế nào để có thể đem sản phẩm và dịch vụ đến với nhiều khách hàng hơn, làm thế nào để có thể lắng nghe và kết nối với khách hàng ở tất cả điểm chạm, tất cả các kênh tương tác.

Mong muốn đó đã đưa chúng tôi đi đến quyết định đồng hành cùng Baemin - Đối tác uy tín trong lĩnh vực giao đồ ăn trực tuyến. Chúng tôi vui mừng thông báo, từ ngày 14/05/2021, khách hàng ở khu vực Hồ Chí Minh, Biên Hòa, Đà Nẵng, Hà Nội đã có thể đặt món của Nhà qua Baemin. The Coffee House và Baemin sẽ cùng mang những sản phẩm đặc trưng, được yêu thích nhất của Nhà đến với khách hàng và sẽ mở rộng ra nhiều thành phố khác trên cả nước trong thời gian sớm nhất.

Bạn có thể trải nghiệm và chia sẻ cảm nhận để chúng tôi có thể lắng nghe và phục vụ tốt nhất, để Nhà có thể mang đến cho bạn những trải nghiệm cà phê thân thuộc, dù ở bất cứ nơi đâu.',
N'tin8.jpg','2021-03-20')
insert into TinTuc values
(9, N'THE COFFEE HOUSE THÔNG BÁO VỀ VIỆC CỬA HÀNG THE COFFEE HOUSE ĐÀ NẴNG TIẾP ĐÓN 1 KHÁCH HÀNG DƯƠNG TÍNH VỚI VIRUT COVID-19', 
N'Gửi quý khách hàng của The Coffee House,
 
Theo thông tin được cập nhật từ Ban Phòng Chống Dịch Bệnh COVID-19 của TP. Đà Nẵng, ngày 05/05/2021 cửa hàng The Coffee House 195 Nguyễn Văn Thoại, quận Ngũ Hành Sơn (lúc 13h) và The Coffee House số 1 Núi Thành, quận Hải Châu (trong khoảng thời gian từ 19h30 -22h), đã đón tiếp và phục vụ 01 khách hàng, được xác nhận là dương tính với vi rút COVID-19 vào ngày 10/05/2021.
 
Nhằm cung cấp thông tin chính xác đến khách hàng và chung tay bảo vệ sức khỏe cộng đồng, The Coffee House xin được cập nhật các diễn biến mới nhất.
 
 Các bước chúng tôi đã thực hiện ngay trong tối 10/05/2021:
 
1. Tạm dừng hoạt động 02 cửa hàng The Coffee House Nguyễn Văn Thoại và The Coffee House Núi Thành từ 19h ngày 10/05.
 
2. Phối hợp với Ban Phòng Chống Dịch Bệnh COVID - 19 của TP. Đà Nẵng xử lý phun thuốc khử trùng cửa hàng theo đúng tiêu chuẩn Bộ Y Tế.
 
3. Khai báo danh sách 12 nhân viên, xác lập danh sách các trường hợp tiếp xúc trực tiếp hoặc gián tiếp.
 
- 04 nhân viên tiếp xúc trực tiếp với khách hàng F0 ngày 05/05 đã được Bộ Y Tế xét nghiệm và làm thủ tục cách ly.
 
- 08 nhân viên tiếp xúc gián tiếp tại 02 cửa hàng trong ngày 05/05 đã khai báo Y Tế và được cách ly tại nhà theo hướng dẫn của Bộ Y Tế.
 
- Hiện tại sức khỏe của 12 nhân viên đều ổn định, chưa có triệu chứng của vi rút.
 
 Các bước xử lý tiếp theo:
 
1. The Coffee House trực tiếp liên hệ các khách hàng có thông tin và lịch sử giao dịch nhằm cập nhật thông tin chính thống. Chúng tôi khuyến nghị khách hàng đã đến trải nghiệm tại The Coffee House 195 Nguyễn Văn Thoại và The Coffee House số 1 Núi Thành, Đà Nẵng từ ngày 05/05 - 10/05 hãy chủ động liên hệ đường dây nóng của Bộ Y Tế 1900 9095 để được hỗ trợ và hướng dẫn.
 
2. The Coffee House tăng cường tiêu chuẩn và tần suất vệ sinh tại cửa hàng, 100% nhân viên thực hiện đúng chỉ thị 5K từ Chính Phủ, đeo khẩu trang, rửa tay bằng gel sát khuẩn 15 phút 1 lần, thay thế ly thuỷ tinh bằng ly giấy hoặc ly nhựa sử dụng 1 lần tại các cửa hàng khu vực Đà Nẵng.
3. Chúng tôi có chính sách hỗ trợ nhân viên để đảm bảo quyền lợi nhân viên không bị ảnh hưởng trong thời gian cách ly.
 
4. The Coffee House sẽ tích cực hợp tác chặt chẽ cùng Cơ Quan Chức Năng, và làm mọi cách có thể để cùng bảo vệ sức khoẻ cho khách hàng, nhân viên và cộng đồng. Các cửa hàng khác trong hệ thống không bị ảnh hưởng và sẽ tiếp tục phục vụ khách hàng.
 
Chúng tôi sẽ cập nhật thông tin chính xác và sớm nhất đến các bạn tại Website, Fanpage và Ứng dụng (App) chính thức của The Coffee House. Mọi thông tin cần hỗ trợ, vui lòng liên hệ đường dây nóng Chăm Sóc Khách Hàng (028) 71087088.
 
urther information or inquiry, please contact our Customer Service Hotline (028) 71087088.',
N'tin9.jpg','2021-11-20')
insert into TinTuc values
(10, N'Trà sữa Nhà đúng gu', 
N'Chào tháng 4 với những ngày nắng oi ả, Nhà mang đến bạn một làn gió mát lành tươi mới đó là bộ 3 trà sữa đúng gu, để những ngày tháng 4 ghé Nhà hoặc đang ngồi tại bất cứ đâu và nhớ Nhà thì bạn vẫn có thể tìm ngay một ly trà sữa đúng sở thích của mình: 

- Trà sữa Oolong nướng chuẩn gu đậm đà từ nền trà oolong được nướng đậm vị, hoà với sữa thơm ngậy - cho từng ngụm mát lạnh, vị đậm đà lưu luyến mãi nơi cuống họng.
- Hồng trà sữa trân châu chuẩn gu ngọt ngào với hồng trà nguyên lá, lớp sữa ngọt béo được cân chỉnh hoàn hảo, thêm trân châu trắng dai giòn cho từng ngụm thơm ngậy, thiệt ngon, thiệt đã.
- Hồng trà latte chuẩn gu tinh tế với sự kết hợp hồng trà dịu nhẹ hoà quyện với sữa tươi thơm lừng, nhấn nhá thêm lớp macchiato béo ngậy, cho từng ngụm ngon mát, dễ chịu.
Đặc biệt hơn, bộ 3 Trà sữa đúng gu sẽ được đựng trong chiếc ly giấy phiên bản giới hạn chắc chắn sẽ làm cho ngày của bạn thêm tươi mới và dễ thương hơn rất nhiều! 

Trà sữa đúng gu có mặt tại hệ thống The Coffee House trên toàn quốc từ ngày 01/04, mời bạn ghé Nhà gần nhất hoặc order về để tìm hương vị trà sữa đúng gu của mình nhé. ',
N'tin10.jpg','2021-18-2')
insert into TinTuc values
(11, N'CHƯƠNG TRÌNH KHÁCH HÀNG THÂN THIẾT: DÙNG BEAN ĐỔI QUÀ - TẶNG NGƯỜI PHỤ NỮ BẠN THƯƠNG.', 
N'Tháng 3 này, chương trình khách hàng thân thiết - The Coffee House Rewards đã cập nhật thêm rất nhiều ưu đãi hấp dẫn tại mục “ĐỔI ƯU ĐÃI" - từ The Coffee House và các đối tác khác: giải trí, mua sắm, ăn uống…Mau mau kiểm tra BEAN sắp hết hạn tại mục “TÍCH ĐIỂM", và tận dụng ưu đãi đặc quyền này để “hớp hồn" hội chị em thôi!

BEAN TÍCH LUỸ QUÝ 3 NĂM 2020 CỦA BẠN SẮP HẾT HẠN

Cụ thể số BEAN bạn đã tích luỹ từ 01/07/2020 đến 30/09/2020 (Quý 3/2020) sẽ hết hạn vào ngày 30/03/2021. Mau mau vào mục “ĐỔI ƯU ĐÃI" tại app, dùng số BEAN sắp hết hạn đổi lấy ưu đãi đặc quyền từ The Coffee House, bạn nhé!

ƯU ĐÃI ĐẶC QUYỀN

Từ những hạt BEAN tích luỹ, giờ đây bạn có thể lựa chọn quy đổi để sử dụng các dịch vụ giải trí, mua sắm, ăn uống...và làm món quà đặc biệt để hớp hồn chị em trong dịp 8 tháng 3 sắp tới - từ The Coffee House và những đối tác hàng đầu trên thị trường tại mục “ĐỔI ƯU ĐÃI" trên app The Coffee House:

- Ăn uống: Gogi House, Ashima - Lẩu nấm thiên nhiên, San Fu Lou, Sumo BBQ.

- Mua sắm: VinID, Thế giới di động, Điện máy xanh, Bách hoá xanh.

- Voucher tiện ích: thẻ nạp điện thoại Mobiphone/Vinaphone/Viettel.

- Đặc quyền: thưởng thức những món uống best - seller tại The Coffee House.

KIỂM TRA BEAN SẮP HẾT HẠN NHƯ THẾ NÀO?

Để kiểm tra số BEAN sắp hết hạn, bạn thực hiện 2 bước sau:
CHÍNH SÁCH XÉT BEAN HẾT HẠN ĐƯỢC TÍNH NHƯ THẾ NÀO

Theo chính sách của The Coffee House Rewards, BEAN tích luỹ sẽ hết hạn từ Quý 4 liền kề. Hạn dùng BEAN sẽ được tính như ví dụ bên dưới:

Trong Quý 1 (từ ngày 1/1 đến hết ngày 31/3), khách hàng A tích luỹ được 1000 BEAN. Ngày 1/10 là ngày xét số BEAN trong Quý 1 của khách hàng A.

Nếu trong Quý 1 khách hàng chỉ đổi 890 BEAN, còn 110 BEAN chưa sử dụng, ngày 1/10 số BEAN chưa sử dụng của khách hàng sẽ hết hạn.

Sau ngày 30/03/2021, BEAN tích luỹ trong Quý 3/2020 (từ ngày 01/07/2020 đến 30/09/2020) sẽ hết hạn. BEAN bị huỷ không ảnh hưởng đến hạng của khách hàng. Khách hàng không bị giảm hạng, không bị ảnh hưởng tới quá trình tích luỹ thăng hạng.

Chờ gì nữa, check mục ĐỔI ƯU ĐÃI, lấy BEAN đổi ngay ngàn ưu đãi xịn sò thôi!',
N'tin11.jpg','2021-03-20')
insert into TinTuc values
(12, N'The Coffee House gửi bạn lịch hoạt động cửa hàng mới nhất', 
N'[CẬP NHẬT MỚI NHẤT NGÀY 25/02]
Nhà gửi bạn lịch hoạt động cửa hàng mới nhất,

Vì sức khoẻ của bạn và cộng đồng là ưu tiên hàng đầu của The Coffee House, và vì cuộc hẹn cà phê thật rôm rả vào 1 ngày không xa của chúng ta, The Coffee House sẽ nghiêm túc thực hiện theo chỉ thị của cơ quan chức năng về công tác phòng chống dịch bệnh Covid-19, cụ thể Nhà sẽ điều chỉnh lịch hoạt động cửa hàng như sau:

𝐇𝐚 𝐍𝐨𝐢
Danh sách cửa hàng phục vụ Take away (mua mang về) và Pickup (Đặt trước và tự đến lấy) gồm:
1. Nhà Discovery Complex
2. Nhà Florence
3. Nhà Gardenia Hàm Nghi
4. Nhà Hồ Tùng Mậu
5. Nhà Mỹ Đình Plaza
6. Nhà Trung Hoà
7. Nhà Xuân La
8. Nhà Bùi Thị Xuân
9. Nhà Hoàng Cầu
10. Nhà Lê Văn Lương
11. Nhà Vương Thừa Vũ
12. Nhà Hai Bà Trưng
13. Nhà Hoàng Đạo Thuý 2
14. Nhà Nguyễn Khánh Toàn
15. Nhà Aeon Mall Hà Đông
16. Nhà The Zen Gamuda
17. Nhà Nguyễn Khuyến
18. Nhà Rice City Linh Đàm
19. Nhà Times City
20. Nhà Văn Khê
21. Nhà Victoria Văn Phú
22. Nhà Vincom Mega Mall Ocean Park
23. Nhà Hà Nội Tower 49 Hai Bà Trưng
24. Nhà Kosmo Tây Hồ
25. Nhà Vũ Phạm Hàm
26. Nhà Kim Mã
27. Nhà Hoàng Đạo Thuý - Tầng 1 Tòa nhà N04 UDIC Complex Hoàng Đạo Thúy.

Các cửa hàng còn lại tại Hà Nội sẽ tạm ngưng phục vụ đến khi có thông báo mới nhất.

𝐓𝐏. 𝐇𝐨 𝐂𝐡𝐢 𝐌𝐢𝐧𝐡
Các cửa hàng vẫn hoạt động bình thường và thực hiện các biện pháp đảm bảo an toàn:
1. Bố trí bàn ghế giãn cách an toàn.
2. Phục vụ tối đa từ 20 - 30 khách. (tuỳ từng cửa hàng).
3. Thực hiện các công tác vệ sinh phòng dịch: nước rửa tay sát khuẩn, 100% nhân viên đeo khẩu trang và rửa tay 30 phút 1 lần trong quá trình phục vụ.

𝐇𝐚𝐢 𝐏𝐡𝐨𝐧𝐠
Danh sách cửa hàng phục vụ Take away (mua mang về) gồm:
1. Nhà 119 Cầu Đất (giờ mở cửa: 7h00 - 21h00)
2. Nhà Điện Biên Phủ
Danh sách cửa hàng tạm ngưng hoạt động đến khi có thông báo mới nhất:
1. Nhà Cát Bi Plaza
2. Nhà 02 - 04 Cầu Đất.
3. Nhà Trần Phú.

𝐁𝐢𝐧𝐡 𝐃𝐮𝐨𝐧𝐠
Nhà HIRAKI Lý Thái Tổ tạm ngưng hoạt động và chỉ phục vụ giao tận nơi qua app.

𝗕𝗮𝗰 𝗡𝗶𝗻𝗵
Danh sách các cửa hàng hoạt động lại bình thường (bắt đầu từ ngày 25/02):
1. Nhà Nguyễn Gia Thiều.
2. Nhà Huyền Quang',
N'tin12.jpg','2021-08-20')
insert into TinTuc values
(13, N'Cửa hàng The Coffee House thứ 2 ra mắt tại Núi Bà Đen - Tây Ninh', 
N'Bên cạnh Nhà ga cáp treo lớn nhất thế giới, cửa hàng The Coffee House mới với tông gỗ sang chảnh, cùng không gian rộng rãi, xịn sò đã sẵn sàng đón bạn vào ngày 30/01.
Mừng khai trương cửa hàng mới, The Coffee House tưng bừng gửi đến bạn chương trình ưu đãi linh đình:
🔸Từ ngày 30/01 - 31/01, “check - in" cửa hàng mới để nhận ngay túi vải The Coffee House phiên bản giới hạn.
🔸Từ ngày 30/01 - 31/01 và 01/02 - 02/02 - ghé cửa hàng The Coffee House cùng hội bạn để nhâm nhi món uống yêu thích với ưu đãi “MUA 3 TẶNG 1”.
Cửa hàng mới, thêm 1 trải nghiệm mới đặc biệt dành riêng cho team Tây Ninh. Tết này về quê, thì có ngay địa điểm quen thuộc để ghé nhâm nhi cho đỡ ghiền. Đi du lịch tham quan, hay chuẩn bị chinh phục đỉnh núi Bà Đen - thì không gian này chính là nơi dừng chân nghỉ ngơi, tiếp năng lượng để bạn sẵn sàng chinh phục, khơi cảm hứng cầu cho hên về liền đấy.
Mau mau lên lịch ghé xôm tụ thôi, cửa hàng The Coffee House đã sẵn sàng phục vụ bạn suốt mùa Tết này rồi nè!

*Địa chỉ cửa hàng The Coffee House núi Bà Đen - Tầng 1 Nhà ga 1 & 3 Núi Bà Đen, Phường Ninh Sơn, Thành phố Tây Ninh.',
N'tin13.jpg','2021-1-2')








select * from LoaiSanPham

select * from SanPham 



select * from ThongTinKhachHang 


select * from HoaDon

delete from HoaDon where maHoaDon = '23'

select * from ChiTietHoaDon


delete from ChiTietHoaDon where maHoaDon = '23'

select * from TinTuc

select * from TaiKhoan



delete from LoaiSanPham

delete from SanPham 



delete from TaiKhoan

delete from ThongTinKhachHang 

delete from HoaDon
delete from ChiTietHoaDon

delete from GioHang

delete from ChiTietGioHang





drop table TaiKhoan
drop table ThongTinAdmin
drop table ThongTinKhachHang
drop table TinTuc
drop table HoaDon
drop table ChiTietHoaDon


drop table PhanHoi
drop table SanPham
drop table LoaiSanPham
drop table KhoHang
drop table GioHang
drop table ChiTietGioHang

