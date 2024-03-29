USE [master]
GO
/****** Object:  Database [WEBSITE_DIENTHOAIDIDONG]    Script Date: 6/1/2019 9:24:00 PM ******/
CREATE DATABASE [WEBSITE_DIENTHOAIDIDONG]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WEBSITE_DIENTHOAIDIDONG', FILENAME = N'D:\LTWeb\DoAn\Web_DienThoai\Data\WEBSITE_DIENTHOAIDIDONG.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WEBSITE_DIENTHOAIDIDONG_log', FILENAME = N'D:\LTWeb\DoAn\Web_DienThoai\Data\WEBSITE_DIENTHOAIDIDONG_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WEBSITE_DIENTHOAIDIDONG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET ARITHABORT OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET  MULTI_USER 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [WEBSITE_DIENTHOAIDIDONG]
GO
/****** Object:  Table [dbo].[CHITIET_DH]    Script Date: 6/1/2019 9:24:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIET_DH](
	[MADH] [int] NOT NULL,
	[MASP] [int] NOT NULL,
	[SOLUONGDAT] [int] NULL,
	[GHICHU] [nvarchar](50) NULL,
 CONSTRAINT [PK_CHITIET_DH] PRIMARY KEY CLUSTERED 
(
	[MADH] ASC,
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 6/1/2019 9:24:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MADH] [int] IDENTITY(1,1) NOT NULL,
	[MAKH] [int] NULL,
	[NGAYDH] [date] NULL,
	[PTTHANHTOAN] [nvarchar](50) NULL,
	[NGAYNHAN] [date] NULL,
	[TONGTIEN] [float] NULL,
 CONSTRAINT [PK_DONDATHANG] PRIMARY KEY CLUSTERED 
(
	[MADH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 6/1/2019 9:24:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[TENKH] [nvarchar](40) NULL,
	[MATKHAU] [nchar](20) NULL,
	[SDTKH] [char](10) NULL,
	[DIACHIKH] [nvarchar](40) NULL,
	[EMAIL] [varchar](30) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAISP]    Script Date: 6/1/2019 9:24:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISP](
	[MALOAI] [int] IDENTITY(1,1) NOT NULL,
	[TENLOAI] [nvarchar](30) NULL,
 CONSTRAINT [PK_LOAISP_1] PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 6/1/2019 9:24:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MANCC] [int] IDENTITY(1,1) NOT NULL,
	[TENNCC] [nvarchar](50) NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[MANCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 6/1/2019 9:24:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [int] IDENTITY(1,1) NOT NULL,
	[TENNV] [nvarchar](50) NULL,
	[SDTNV] [char](10) NULL,
	[DIACHINV] [nvarchar](50) NULL,
	[EMAILNV] [varchar](30) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUGIAOHANG]    Script Date: 6/1/2019 9:24:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUGIAOHANG](
	[MADH] [int] NOT NULL,
	[MANV] [int] NOT NULL,
	[NGAYGIAO] [date] NULL,
 CONSTRAINT [PK_PHIEUGIAOHANG] PRIMARY KEY CLUSTERED 
(
	[MADH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 6/1/2019 9:24:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [int] IDENTITY(1,1) NOT NULL,
	[MANCC] [int] NULL,
	[MALOAI] [int] NULL,
	[TENSP] [nvarchar](50) NULL,
	[ANH] [nvarchar](50) NULL,
	[GIABAN] [float] NULL,
	[SOLUONG] [int] NULL,
	[MAU] [nvarchar](50) NULL,
	[MANHINH] [nvarchar](50) NULL,
	[HEDIEUHANH] [varchar](50) NULL,
	[CAMERATRUOC] [nvarchar](50) NULL,
	[CAMERASAU] [nchar](40) NULL,
	[CPU] [nvarchar](50) NULL,
	[RAM] [nchar](30) NULL,
	[BONHOTRONG] [nchar](30) NULL,
	[THENHO] [nvarchar](50) NULL,
	[THESIM] [nvarchar](50) NULL,
	[DUNGLUONGPIN] [nvarchar](50) NULL,
	[BAOHANH] [nvarchar](50) NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TAIKHOAN_NV]    Script Date: 6/1/2019 9:24:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOAN_NV](
	[MANV] [int] NOT NULL,
	[USERNAME] [varchar](20) NOT NULL,
	[PASSWORD] [varchar](20) NOT NULL,
 CONSTRAINT [PK_TAKHOAN_NV] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [MATKHAU], [SDTKH], [DIACHIKH], [EMAIL]) VALUES (3, N'Lê Thị Nhi', N'123456              ', N'0293746153', N'Tân Phú, TP.HCM', N'nhiltn@gmail.com')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [MATKHAU], [SDTKH], [DIACHIKH], [EMAIL]) VALUES (4, N'Nguyễn Thị Thúy', N'56789               ', N'0976431345', N'Bình Chánh, tp. HCM', N'thuyntt@gmail.com')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [MATKHAU], [SDTKH], [DIACHIKH], [EMAIL]) VALUES (5, N'Trần Văn An', N'45678               ', N'0976431345', N'Bình Chánh, tp. HCM', N'antva@gmail.com')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[LOAISP] ON 

INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (1, N'Iphone')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (2, N'SamSung')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (3, N'Oppo')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (4, N'Huawei')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (5, N'Xixaomi')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (6, N'Vivo')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (7, N'Nokia')
INSERT [dbo].[LOAISP] ([MALOAI], [TENLOAI]) VALUES (10, N'dedddw')
SET IDENTITY_INSERT [dbo].[LOAISP] OFF
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON 

INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC]) VALUES (1, N'Nhà cung cấp điện thoại iphone')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC]) VALUES (2, N'Nhà cung cấp điện thoại SamSung')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC]) VALUES (3, N'Nhà cung cấp điện thoại oppo')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC]) VALUES (4, N'Nhà cung cấp điện thoại huawei')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC]) VALUES (5, N'Nhà cung cấp điện thoại xixaomi')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC]) VALUES (6, N'Nhà cung cấp điện thoại sony')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC]) VALUES (7, N'Nhà cung cấp điện thoại nokia')
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [SDTNV], [DIACHINV], [EMAILNV]) VALUES (1, N'Lê Thị Thùy Nhung', N'0866095048', N'56/10 đường 27, Sơn Kỳ, Tân Phú, tp. HCM', N'thuynhung2120@gmail.com')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [SDTNV], [DIACHINV], [EMAILNV]) VALUES (4, N'Nguyễn Văn A', N'0384726485', N'Tân Bình, tp. HCM', N'anva@gmail.com')
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (1, 1, 1, N'iPhone Xs Max 512GB ', N'ipxsmax.png', 39990000, 15, N'Bạc - Xám', N'	OLED, 6.5", Super Retina', N'	iOS 12', N'	7 MP', N'	Chính 12 MP và Phụ 12 MP               ', N'Apple A12 Bionic 6 nhân', N'	4 GB                         ', N'	512 GB                       ', N'', N'Nano SIM & eSIM, Hỗ trợ 4G', N'	3174 mAh, có sạc nhanh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (2, 1, 1, N'Iphone 8 plus', N'ip8.jpg', 19990000, 10, N'Đen', N'OLED, 6.5", Super Retina', N'	iOS 12', N'	7 MP', N'	Chính 12 MP & Phụ 12 MP                ', N'	Apple A11 Bionic 6 nhân', N'	3 GB                         ', N'	64 GB                        ', N'', N'1 Nano SIM, Hỗ trợ 4G', N'2691 mAh, có sạc nhanh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (3, 1, 1, N'iPhone 7 32GB', N'ip7.png', 11990000, 5, N'Đen - Vàng đồng', N'LED-backlit IPS LCD, 4.7", Retina HD', N'	iOS 12', N'	7 MP', N'	12 MP                                  ', N'	Apple A10 Fusion 4 nhân 64-bit', N'	2 GB                         ', N'	32 GB                        ', NULL, N'
1 Nano SIM, Hỗ trợ 4G', N'1960 mAh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (4, 2, 2, N'Samsung Galaxy A7 (2018)', N'ssGalaxyA7.jpg', 6990000, 10, N'Đen - Xanh - Vàng đồng', N'	Super AMOLED, 6.0", Full HD+', N'Android 8.0 (Oreo)', N'24 MP', N'Chính 24 MP & Phụ 8 MP, 5 MP            ', N'Exynos 7885 8 nhân 64-bit', N'	6 GB                         ', N'	128 GB                       ', N'	MicroSD, hỗ trợ tối đa 512 GB', N'
2 Nano SIM, Hỗ trợ 4G', N'	3300 mAh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (5, 2, 2, N'Samsung Galaxy J7+', N'ssgalaxyJ7plus.jpg', 7290000, 10, N'Đen - Vàng đồng', N'Super AMOLED, 5.5", Full HD', N'Android 7.0 (Nougat)', N'	16 MP', N'Chính 13 MP & Phụ 5 MP                  ', N'Mediatek Helio P25 Lite 8 nhân', N'	4 GB                         ', N'	32 GB                        ', N'MicroSD, hỗ trợ tối đa 256 GB', N'2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'	3000 mAh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (6, 2, 2, N'Samsung Galaxy S9+ 64GB', N'ssgalaxyS9.png', 19990000, 10, N'Đen - Đỏ', N'Super AMOLED, 6.2", Quad HD+ (2K+)', N'Android 8.0 (Oreo)', N'8 MP', N'Chính 12 MP & Phụ 12 MP                 ', N'	Exynos 9810 8 nhân 64-bit', N'	6 GB                         ', N'	64 GB                        ', N'MicroSD, hỗ trợ tối đa 400 GB', N'2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'	3500 mAh, có sạc nhanh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (7, 3, 3, N'OPPO A5', N'OppoA5.png', 3990000, 15, N'Đen - Đỏ', N'IPS LCD, 6.2", HD+', N'Android 8.1 (Oreo)', N'	8 MP', N'	Chính 13 MP & Phụ 2 MP                 ', N'Qualcomm Snapdragon 450 8 nhân 64-bit', N'	4 GB                         ', N'	64 GB                        ', N'	MicroSD, hỗ trợ tối đa 256 GB', N'
2 Nano SIM, Hỗ trợ 4G', N'	4230 mAh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (8, 3, 3, N'OPPO R17 Pro', N'oppor17.jpg', 16990000, 10, N'Tím - Xanh', N'AMOLED, 6.4", Full HD+', N'ColorOS 5.2 (Android 8.1)', N'25 MP', N'	Chính 12 MP & Phụ 20 MP, TOF 3D        ', N'	Snapdragon 710 8 nhân 64-bit', N'	8 GB                         ', N'	128 GB                       ', NULL, N'2 Nano SIM, Hỗ trợ 4G', N'3700 mAh, có sạc nhanh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (9, 3, 3, N'OPPO F9', N'OppoF9.jpg', 6490000, 15, N'Đỏ - Xanh dương - Tím', N'LTPS LCD, 6.3", Full HD+', N'ColorOS 5.2 (Android 8.1)', N'	25 MP', N'	Chính 16 MP & Phụ 2 MP                 ', N'MediaTek Helio P60 8 nhân 64-bit', N'	6 GB                         ', N'	64 GB                        ', N'MicroSD, hỗ trợ tối đa 256 GB', N'
2 Nano SIM, Hỗ trợ 4G', N'	3500 mAh, có sạc nhanh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (10, 4, 4, N'Huawei P30 ', N'HuaweiP30.jpg', 16990000, 10, N'Đen -Xanh tím', N'	OLED, 6.47", Full HD+', N'	Android 9.0 (Pie)', N'32 MP', N'	Chính 40 MP & Phụ 16 MP, 8 MP          ', N'Hisilicon Kirin 980 8 nhân 64-bit', N'8 GB                          ', N'	128 GB                       ', NULL, N'
2 Nano SIM, Hỗ trợ 4G', N'3650 mAh, có sạc nhanh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (11, 4, 4, N'Huawei Nova 3i', N'huaweinova3i.jpg', 5990000, 15, N'Đen - TÍm - Trắng', N'	LTPS LCD, 6.3", Full HD+', N'	Android 8.1 (Oreo)', N'Chính 24 MP & Phụ 2 MP', N'	Chính 16 MP & Phụ 2 MP                 ', N'HiSilicon Kirin 710', N'	4 GB                         ', N'	128 GB                       ', N'MicroSD, hỗ trợ tối đa 256 GB', N'
2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'	3340 mAh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (12, 4, 4, N'Huawei Y6 Prime (2018)', N'huaweiy6.png', 2790000, 5, N'Đen - Xanh dương - Vàng', N'IPS LCD, 5.7", HD+', N'	Android 8.0 (Oreo)', N'	8 MP', N'13 MP                                   ', N'Qualcomm Snapdragon 425 4 nhân 64-bit', N'	2 GB                         ', N'16 GB                         ', N'MicroSD, hỗ trợ tối đa 256 GB', N'2 Nano SIM, Hỗ trợ 4G', N'3000 mAh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (13, 5, 5, N'Xiaomi Redmi 6A 32GB', N'XiaomiRedmi6A.jpg', 2190000, 10, N'Đen - Xanh dương - Xám', N'	
IPS LCD , 5,45" HD', N'Android 8.1 (Oreo)', N'	5 MP', N'	Chính 12 MP & Phụ 5 MP                 ', N'	MediaTek MT6762 8 nhân 64-bit (Helio P22)', N'	3 GB                         ', N'	32 GB                        ', N'	MicroSD, hỗ trợ tối đa 256 GB', N'
2 Nano SIM, Hỗ trợ 4G', N'	3000 mAh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (14, 5, 5, N'Xiaomi Redmi 7 16GB', N'xiaomiredmi7.jpg', 2990000, 10, N'Đen - Đỏ  - Xanh dương', N'	IPS LCD, 6.26", HD+', N'	Android 9.0 (Pie)', N'	8 MP', N'Chính 12 MP & Phụ 2 MP                  ', N'	Qualcomm Snapdragon 632 8 nhân 64-bit', N'	2 GB                         ', N'16 GB                         ', N'MicroSD, hỗ trợ tối đa 512 GB', N'
2 Nano SIM, Hỗ trợ 4G', N'	4000 mAh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (15, 5, 5, N'Xiaomi Mi 8', N'Xiaomi8.jpg', 10990000, 15, N'Đen', N'Super AMOLED, 6.21", Full HD+', N'Android 8.1 (Oreo)', N'	20 MP', N'	Chính 12 MP & Phụ 12 MP                ', N'	Snapdragon 845 8 nhân', N'	6 GB                         ', N'	64 GB                        ', NULL, N'
2 Nano SIM, Hỗ trợ 4G', N'	3400 mAh, có sạc nhanh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (16, 6, 6, N'Vivo V15 128GB', N'vivov15.png', 7990000, 10, N'Đỏ - Xanh dương', N'IPS LCD, 6.53", Full HD+', N'	Android 9.0 (Pie)', N'	32 MP', N'	Chính 12 MP & Phụ 8 MP, 5 MP           ', N'	MediaTek Helio P70 8 nhân', N'	6 GB                         ', N'	128 GB                       ', N'MicroSD, hỗ trợ tối đa 256 GB', N'2 Nano SIM, Hỗ trợ 4G', N'	4000 mAh, có sạc nhanh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (17, 6, 6, N'Vivo Y71', N'vivoy71.jpg', 2790000, 10, N'Đen - Vàng', N'	IPS LCD, 6.0", HD+', N'Android 8.1 (Oreo)', N'	5 MP', N'	13 MP                                  ', N'Qualcomm Snapdragon 425 4 nhân 64-bit', N'	3 GB                         ', N'16 GB                         ', N'	MicroSD, hỗ trợ tối đa 256 GB', N'
2 Nano SIM, Hỗ trợ 4G', N'	3360 mAh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (18, 6, 6, N'Vivo Y91', N'VivoY91.jpg', 3990000, 10, N'Đen -Xanh dương', N'IPS LCD, 6.22", HD+', N'Android 8.1 (Oreo)', N'	8 MP', N'	Chính 13 MP & Phụ 2 MP                 ', N'	MediaTek MT6762R 8 nhân', N'	3 GB                         ', N'	64 GB                        ', N'MicroSD, hỗ trợ tối đa 256 GB', N'
2 Nano SIM, Hỗ trợ 4G', N'	4030 mAh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (19, 7, 7, N'Nokia 8.1', N'nokia8.1.jpg', 7990000, 20, N'Bạc - Nâu - Xanh duong', N'IPS LCD, 6.18”, Full HD+', N'Android 9 Pie (Android One)', N'20 MP', N'	Chính 12 MP & Phụ 13 MP                ', N'Snapdragon 710 8 nhân 64-bit', N'	4 GB                         ', N'64 GB                         ', N'MicroSD, hỗ trợ tối đa 400 GB', N'
2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'3500 mAh, có sạc nhanh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (20, 7, 7, N'Nokia X71', N'nokiax71.jpg', NULL, 10, N'Đen - Trắng', N'	IPS LCD, 6.39", Full HD+', N'	
Android 8.1 (Oreo); Android One', N'	
20 MP', N'	
Dual 12MP + 13MP                     ', N'	
Qualcomm SDM710 Snapdragon 710', N'	
4 GB                       ', N'	
64 GB                      ', N'	
microSD, Tối đa 400 GB', N'
2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'	
3500 mAh, Hỗ trợ sạc nhanh', N'Chính hãng 12 tháng')
INSERT [dbo].[SANPHAM] ([MASP], [MANCC], [MALOAI], [TENSP], [ANH], [GIABAN], [SOLUONG], [MAU], [MANHINH], [HEDIEUHANH], [CAMERATRUOC], [CAMERASAU], [CPU], [RAM], [BONHOTRONG], [THENHO], [THESIM], [DUNGLUONGPIN], [BAOHANH]) VALUES (21, 7, 7, N'Nokia 6.1 Plus', N'nokiax6.jpg', 5990000, 5, N'Đen  - Trắng', N'	IPS LCD, 5.8", Full HD+Nokia X71', N'Android 8 Oreo (Android One)', N'16 MP', N'Chính 16 MP & Phụ 5 MP                  ', N'Qualcomm Snapdragon 636 8 nhân 64-bit', N'	4 GB                         ', N'	64 GB                        ', N'MicroSD, hỗ trợ tối đa 400 GB', N'
2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'	3060 mAh, có sạc nhanh', N'Chính hãng 12 tháng')
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
INSERT [dbo].[TAIKHOAN_NV] ([MANV], [USERNAME], [PASSWORD]) VALUES (1, N'ThuyNhung', N'123456')
ALTER TABLE [dbo].[CHITIET_DH]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_DH_DONDATHANG] FOREIGN KEY([MADH])
REFERENCES [dbo].[DONDATHANG] ([MADH])
GO
ALTER TABLE [dbo].[CHITIET_DH] CHECK CONSTRAINT [FK_CHITIET_DH_DONDATHANG]
GO
ALTER TABLE [dbo].[CHITIET_DH]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_DH_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CHITIET_DH] CHECK CONSTRAINT [FK_CHITIET_DH_SANPHAM]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[PHIEUGIAOHANG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUGIAOHANG_DONDATHANG] FOREIGN KEY([MADH])
REFERENCES [dbo].[DONDATHANG] ([MADH])
GO
ALTER TABLE [dbo].[PHIEUGIAOHANG] CHECK CONSTRAINT [FK_PHIEUGIAOHANG_DONDATHANG]
GO
ALTER TABLE [dbo].[PHIEUGIAOHANG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUGIAOHANG_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHIEUGIAOHANG] CHECK CONSTRAINT [FK_PHIEUGIAOHANG_NHANVIEN]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_LOAISP] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAISP] ([MALOAI])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_LOAISP]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_NHACUNGCAP] FOREIGN KEY([MANCC])
REFERENCES [dbo].[NHACUNGCAP] ([MANCC])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_NHACUNGCAP]
GO
ALTER TABLE [dbo].[TAIKHOAN_NV]  WITH CHECK ADD  CONSTRAINT [FK_TAKHOAN_NV_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[TAIKHOAN_NV] CHECK CONSTRAINT [FK_TAKHOAN_NV_NHANVIEN]
GO
USE [master]
GO
ALTER DATABASE [WEBSITE_DIENTHOAIDIDONG] SET  READ_WRITE 
GO
