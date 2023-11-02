use ASM_SOF203
CREATE TABLE KhachHang (
    id INT IDENTITY(1,1) PRIMARY KEY,
    ma VARCHAR(10) NOT NULL UNIQUE,
    ho_ten VARCHAR(100) NOT NULL,
    dia_chi VARCHAR(255),
    nam_sinh INT,
    gioi_tinh VARCHAR(10)
);


CREATE TABLE NhanVien (
    id INT  IDENTITY(1,1) PRIMARY KEY,
    ma_nhan_vien VARCHAR(10) NOT NULL UNIQUE,
    ho_ten VARCHAR(100) NOT NULL,
    gioi_tinh VARCHAR(10),
    nam_sinh DATE,
    dia_chi VARCHAR(255)
);

CREATE TABLE DanhMuc (
    id INT  IDENTITY(1,1) PRIMARY KEY,
    ma VARCHAR(10) NOT NULL UNIQUE,
    ten_danh_muc VARCHAR(255) NOT NULL
);

CREATE TABLE SanPham (
    id INT  IDENTITY(1,1) PRIMARY KEY,
    ma_san_pham VARCHAR(10) NOT NULL UNIQUE,
    ten_san_pham VARCHAR(255) NOT NULL,
    so_luong_ton INT,
    gia_ban BigInt,
    ma_danh_muc INT,
    trang_thai VARCHAR(20),
    mau_sac VARCHAR(50),
    ngay_tao DATE,
    FOREIGN KEY (ma_danh_muc) REFERENCES DanhMuc(id)
);



CREATE TABLE HoaDon (
    id INT IDENTITY(1,1) PRIMARY KEY,
    ma VARCHAR(10) NOT NULL UNIQUE,
    ngay_tao DATE,
    ten_nguoi_tao Varchar(255),
    id_khach_hang INT,
    tong_tien DECIMAL(10, 2),
    trang_thai VARCHAR(20),
    id_nhan_vien INT,
    FOREIGN KEY (id_khach_hang) REFERENCES KhachHang(id),
    FOREIGN KEY (id_nhan_vien) REFERENCES NhanVien(id)
);



CREATE TABLE HoaDonChiTiet (
    id INT IDENTITY(1,1) PRIMARY KEY,
    id_hoa_don INT,
    id_san_pham INT,
    so_luong INT,
    don_gia BIGINT,
    ngay_tao DATE,
    ten_san_pham VARCHAR(255),
    FOREIGN KEY (id_hoa_don) REFERENCES HoaDon(id),
    FOREIGN KEY (id_san_pham) REFERENCES SanPham(id)
);



INSERT INTO NhanVien (ma_nhan_vien, ho_ten, gioi_tinh, nam_sinh, dia_chi)
VALUES
    ('NV001', 'Nguyen Van A', 'Nam', '1990-01-15', '123 Đường ABC, Quận 1, TP. HCM'),
    ('NV002', 'Tran Thi B', 'Nữ', '1992-05-20', '456 Đường XYZ, Quận 2, TP. HCM'),
    ('NV003', 'Le Van C', 'Nam', '1988-11-10', '789 Đường DEF, Quận 3, TP. HCM'),
    -- Thêm 7 bản ghi khác ở đây...
    ('NV010', 'Pham Van K', 'Nam', '1995-03-25', '101 Đường GHI, Quận 4, TP. HCM');

   
   INSERT INTO DanhMuc (ma, ten_danh_muc)
VALUES
    ('DM001', 'Danh mục 1'),
    ('DM002', 'Danh mục 2'),
    ('DM003', 'Danh mục 3'),
    ('DM004', 'Danh mục 4'),
    ('DM005', 'Danh mục 5'),
    ('DM006', 'Danh mục 6'),
    ('DM007', 'Danh mục 7'),
    ('DM008', 'Danh mục 8'),
    ('DM009', 'Danh mục 9'),
    ('DM010', 'Danh mục 10');
   
   INSERT INTO SanPham (ma_san_pham, ten_san_pham, so_luong_ton, gia_ban, ma_danh_muc, trang_thai, mau_sac, ngay_tao)
VALUES
    ('SP001', 'Sản phẩm 1', 100, 50.00, 1, 'Còn hàng', 'Đỏ', '2023-11-02'),
    ('SP002', 'Sản phẩm 2', 200, 35.00, 2, 'Còn hàng', 'Xanh', '2023-11-02'),
    ('SP003', 'Sản phẩm 3', 150, 45.00, 1, 'Hết hàng', 'Vàng', '2023-11-02'),
    ('SP004', 'Sản phẩm 4', 120, 55.00, 3, 'Còn hàng', 'Trắng', '2023-11-02'),
    ('SP005', 'Sản phẩm 5', 180, 40.00, 2, 'Còn hàng', 'Xanh', '2023-11-02'),
    ('SP006', 'Sản phẩm 6', 90, 60.00, 1, 'Hết hàng', 'Đỏ', '2023-11-02'),
    ('SP007', 'Sản phẩm 7', 250, 30.00, 4, 'Còn hàng', 'Vàng', '2023-11-02'),
    ('SP008', 'Sản phẩm 8', 110, 50.00, 5, 'Còn hàng', 'Trắng', '2023-11-02'),
    ('SP009', 'Sản phẩm 9', 140, 45.00, 1, 'Hết hàng', 'Xanh', '2023-11-02'),
    ('SP010', 'Sản phẩm 10', 95, 55.00, 2, 'Còn hàng', 'Đỏ', '2023-11-02'),
    -- Thêm 40 bản ghi khác ở đây...
    ('SP050', 'Sản phẩm 50', 120, 40.00, 5, 'Còn hàng', 'Vàng', '2023-11-02');
   
   
   SELECT  * FROM NhanVien nv 
   
 INSERT INTO KhachHang (ma, ho_ten, dia_chi, nam_sinh, gioi_tinh)
VALUES
    ('KH001', 'Nguyen Van A', '123 Duong ABC, Quan 1, TP. HCM', 1990, 'Nam'),
    ('KH002', 'Tran Thi B', '456 Duong XYZ, Quan 2, TP. HCM', 1992, 'Nu'),
    ('KH003', 'Le Van C', '789 Duong DEF, Quan 3, TP. HCM', 1988, 'Nam'),
    ('KH004', 'Pham Thi D', '101 Duong GHI, Quan 4, TP. HCM', 1995, 'Nu'),
    ('KH005', 'Truong Van E', '555 Duong KLM, Quan 5, TP. HCM', 1991, 'Nam'),
    ('KH006', 'Nguyen Van F', '999 Duong XYZ, Quan 6, TP. HCM', 1987, 'Nam'),
    ('KH007', 'Le Thi G', '777 Duong ABC, Quan 7, TP. HCM', 1993, 'Nu'),
    ('KH008', 'Tran Van H', '333 Duong KLM, Quan 8, TP. HCM', 1994, 'Nam'),
    ('KH009', 'Pham Van I', '222 Duong DEF, Quan 9, TP. HCM', 1986, 'Nam'),
    ('KH010', 'Nguyen Thi K', '444 Duong GHI, Quan 10, TP. HCM', 1996, 'Nu');

   select* from KhachHang kh 
INSERT INTO HoaDon (ma, ngay_tao, ten_nguoi_tao, id_khach_hang, tong_tien, trang_thai, id_nhan_vien)
VALUES
    ('HD001', '2023-11-02', 'Nguyen Van A', 10, 500.00, 'Đã thanh toán', 1),
    ('HD002', '2023-11-03', 'Tran Thi B', 12, 350.00, 'Đã thanh toán', 2),
    ('HD003', '2023-11-04', 'Le Van C', 11, 450.00, 'Chưa thanh toán', 3),
    ('HD004', '2023-11-05', 'Pham Thi D', 4, 600.00, 'Đã thanh toán', 4),
    ('HD005', '2023-11-06', 'Truong Van E', 5, 400.00, 'Chưa thanh toán', 1),
    ('HD006', '2023-11-07', 'Nguyen Van A', 10, 550.00, 'Đã thanh toán', 1),
    ('HD007', '2023-11-08', 'Tran Thi B', 12, 320.00, 'Chưa thanh toán', 2),
    ('HD008', '2023-11-09', 'Le Van C', 11, 480.00, 'Đã thanh toán', 3),
    ('HD009', '2023-11-10', 'Pham Thi D', 4, 720.00, 'Đã thanh toán', 4),
    ('HD010', '2023-11-11', 'Truong Van E', 5, 380.00, 'Chưa thanh toán', 1);
