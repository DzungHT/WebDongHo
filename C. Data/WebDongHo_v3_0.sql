USE [WebDongHo]
GO
/****** Object:  StoredProcedure [dbo].[Loaiday_GetForMenu]    Script Date: 6/6/2016 7:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Loaiday_GetForMenu]
as
begin
	select 
		tb.Hienthi,
		tb.IsDel,
		tb.Ten,
		tb.Thutu,
		tb.LoaidayID
	from Loaiday [tb]
	where tb.IsDel = 0 and tb.Hienthi = 1
	order by tb.Thutu
end


GO
/****** Object:  StoredProcedure [dbo].[Loaivo_GetForMenu]    Script Date: 6/6/2016 7:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Loaivo_GetForMenu]
as
begin
	select 
		tb.Hienthi,
		tb.IsDel,
		tb.Ten,
		tb.Thutu,
		tb.LoaivoID
	from Loaivo [tb]
	where tb.IsDel = 0 and tb.Hienthi = 1
	order by tb.Thutu
end


GO
/****** Object:  StoredProcedure [dbo].[Nangluong_GetForMenu]    Script Date: 6/6/2016 7:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Nangluong_GetForMenu]
as
begin
	select 
		tb.Hienthi,
		tb.IsDel,
		tb.Ten,
		tb.Thutu,
		tb.NangluongID
	from Nangluong [tb]
	where tb.IsDel = 0 and tb.Hienthi = 1
	order by tb.Thutu
end


GO
/****** Object:  StoredProcedure [dbo].[Nhanhieu_GetForMenu]    Script Date: 6/6/2016 7:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Nhanhieu_GetForMenu]
as
begin
	select 
		nh.Hienthi,
		nh.IsDel,
		nh.NhanhieuID,
		nh.Ten,
		nh.Thutu
	from [Nhanhieu] [nh]
	where nh.IsDel = 0 and nh.Hienthi = 1
	order by nh.Thutu
end


GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/6/2016 7:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Ngaysinh] [datetime] NULL,
	[Gioitinh] [bit] NULL,
	[Email] [nvarchar](50) NULL,
	[SDT] [nvarchar](20) NULL,
	[Diachi] [nvarchar](100) NULL,
	[UrlAvatar] [nvarchar](250) NULL,
	[Role] [int] NULL,
	[Trangthai] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hinhanh]    Script Date: 6/6/2016 7:28:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hinhanh](
	[HinhanhID] [int] IDENTITY(1,1) NOT NULL,
	[SanphamID] [int] NOT NULL,
	[Url] [nchar](250) NOT NULL,
 CONSTRAINT [PK_Hinhanh] PRIMARY KEY CLUSTERED 
(
	[HinhanhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loaiday]    Script Date: 6/6/2016 7:28:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loaiday](
	[LoaidayID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Thutu] [int] NULL,
	[IsDel] [bit] NOT NULL,
	[Hienthi] [bit] NOT NULL,
 CONSTRAINT [PK_Loaiday] PRIMARY KEY CLUSTERED 
(
	[LoaidayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 6/6/2016 7:28:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[LoaiSPID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Thutu] [int] NULL,
	[Hienthi] [bit] NOT NULL,
	[IsDel] [bit] NOT NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[LoaiSPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loaitintuc]    Script Date: 6/6/2016 7:28:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loaitintuc](
	[LoaitintucID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Thutu] [int] NULL,
	[Hienthi] [bit] NOT NULL,
 CONSTRAINT [PK_Loaitintuc] PRIMARY KEY CLUSTERED 
(
	[LoaitintucID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loaivo]    Script Date: 6/6/2016 7:28:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loaivo](
	[LoaivoID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Thutu] [int] NULL,
	[Hienthi] [bit] NOT NULL,
	[IsDel] [bit] NOT NULL,
 CONSTRAINT [PK_Loaivo] PRIMARY KEY CLUSTERED 
(
	[LoaivoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nangluong]    Script Date: 6/6/2016 7:28:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nangluong](
	[NangluongID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Thutu] [int] NULL,
	[IsDel] [bit] NOT NULL,
	[Hienthi] [bit] NOT NULL,
 CONSTRAINT [PK_Nangluong] PRIMARY KEY CLUSTERED 
(
	[NangluongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nhanhieu]    Script Date: 6/6/2016 7:28:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhanhieu](
	[NhanhieuID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Thutu] [int] NULL,
	[Hienthi] [bit] NOT NULL,
	[IsDel] [bit] NOT NULL,
 CONSTRAINT [PK_Nhanhieu] PRIMARY KEY CLUSTERED 
(
	[NhanhieuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 6/6/2016 7:28:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[SanphamID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Mota] [nvarchar](max) NOT NULL,
	[Giagoc] [int] NOT NULL,
	[Giaban] [int] NOT NULL,
	[LoaiSPID] [int] NOT NULL,
	[NhanhieuID] [int] NOT NULL,
	[NangluongID] [int] NOT NULL,
	[LoaidayID] [int] NOT NULL,
	[LoaivoID] [int] NOT NULL,
	[Soluong] [int] NOT NULL,
	[Khuyenmai] [real] NOT NULL,
	[IsNoibat] [bit] NOT NULL,
	[Hienthi] [bit] NOT NULL,
	[HienthiTrangChu] [bit] NOT NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[SanphamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tintuc]    Script Date: 6/6/2016 7:28:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tintuc](
	[TintucID] [int] IDENTITY(1,1) NOT NULL,
	[LoaitintucID] [int] NOT NULL,
	[Tieude] [nvarchar](100) NOT NULL,
	[UrlAvatar] [nvarchar](250) NOT NULL,
	[Ngaydang] [datetime] NOT NULL,
	[Noidung] [nvarchar](max) NOT NULL,
	[Noidungngan] [nvarchar](200) NULL,
	[Hienthi] [bit] NOT NULL,
 CONSTRAINT [PK_Tintuc] PRIMARY KEY CLUSTERED 
(
	[TintucID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountID], [Username], [Password], [Hoten], [Ngaysinh], [Gioitinh], [Email], [SDT], [Diachi], [UrlAvatar], [Role], [Trangthai]) VALUES (1, N'admin', N'admin', N'Trần Trung Hiếu', CAST(0x000088B100000000 AS DateTime), NULL, N'hieutran2310@gmail.com', N'01693215992', N'Hà Nội', NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[Hinhanh] ON 

INSERT [dbo].[Hinhanh] ([HinhanhID], [SanphamID], [Url]) VALUES (1, 1, N'/Images/images/Sanpham/sp_1.jpg                                                                                                                                                                                                                           ')
INSERT [dbo].[Hinhanh] ([HinhanhID], [SanphamID], [Url]) VALUES (3, 1, N'/Images/images/Sanpham/sp_2.jpg                                                                                                                                                                                                                           ')
INSERT [dbo].[Hinhanh] ([HinhanhID], [SanphamID], [Url]) VALUES (4, 1, N'/Images/images/Sanpham/images.jpg                                                                                                                                                                                                                         ')
INSERT [dbo].[Hinhanh] ([HinhanhID], [SanphamID], [Url]) VALUES (5, 2, N'/Images/images/Sanpham/c-2.jpg                                                                                                                                                                                                                            ')
INSERT [dbo].[Hinhanh] ([HinhanhID], [SanphamID], [Url]) VALUES (6, 3, N'/Images/images/Sanpham/dong-ho-deo-tay-nu-akribos-xxiv-ak564yg_897260071_640x800.jpg                                                                                                                                                                      ')
SET IDENTITY_INSERT [dbo].[Hinhanh] OFF
SET IDENTITY_INSERT [dbo].[Loaiday] ON 

INSERT [dbo].[Loaiday] ([LoaidayID], [Ten], [Thutu], [IsDel], [Hienthi]) VALUES (1, N'dây da', 1, 1, 1)
INSERT [dbo].[Loaiday] ([LoaidayID], [Ten], [Thutu], [IsDel], [Hienthi]) VALUES (2, N'dây kim loại', 2, 1, 1)
SET IDENTITY_INSERT [dbo].[Loaiday] OFF
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([LoaiSPID], [Ten], [Thutu], [Hienthi], [IsDel]) VALUES (1, N'Đồng hồ nam', 1, 1, 1)
INSERT [dbo].[LoaiSP] ([LoaiSPID], [Ten], [Thutu], [Hienthi], [IsDel]) VALUES (2, N'Đồng hồ nữ', 2, 1, 1)
INSERT [dbo].[LoaiSP] ([LoaiSPID], [Ten], [Thutu], [Hienthi], [IsDel]) VALUES (3, N'Đồng hồ đôi', 3, 1, 1)
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
SET IDENTITY_INSERT [dbo].[Loaivo] ON 

INSERT [dbo].[Loaivo] ([LoaivoID], [Ten], [Thutu], [Hienthi], [IsDel]) VALUES (1, N'Mạ vàng', 1, 1, 1)
INSERT [dbo].[Loaivo] ([LoaivoID], [Ten], [Thutu], [Hienthi], [IsDel]) VALUES (2, N'Thép không gỉ', 2, 1, 1)
INSERT [dbo].[Loaivo] ([LoaivoID], [Ten], [Thutu], [Hienthi], [IsDel]) VALUES (3, N'Vàng nguyên khối', 3, 1, 1)
SET IDENTITY_INSERT [dbo].[Loaivo] OFF
SET IDENTITY_INSERT [dbo].[Nangluong] ON 

INSERT [dbo].[Nangluong] ([NangluongID], [Ten], [Thutu], [IsDel], [Hienthi]) VALUES (1, N'Đồng hồ cơ học', 1, 1, 1)
INSERT [dbo].[Nangluong] ([NangluongID], [Ten], [Thutu], [IsDel], [Hienthi]) VALUES (2, N'Đồng hồ điện tử', 2, 1, 1)
SET IDENTITY_INSERT [dbo].[Nangluong] OFF
SET IDENTITY_INSERT [dbo].[Nhanhieu] ON 

INSERT [dbo].[Nhanhieu] ([NhanhieuID], [Ten], [Thutu], [Hienthi], [IsDel]) VALUES (1, N'Rolex', 1, 1, 1)
INSERT [dbo].[Nhanhieu] ([NhanhieuID], [Ten], [Thutu], [Hienthi], [IsDel]) VALUES (2, N'Casio', 2, 1, 1)
INSERT [dbo].[Nhanhieu] ([NhanhieuID], [Ten], [Thutu], [Hienthi], [IsDel]) VALUES (3, N'Breguet', 3, 1, 1)
INSERT [dbo].[Nhanhieu] ([NhanhieuID], [Ten], [Thutu], [Hienthi], [IsDel]) VALUES (4, N'Patek', 4, 1, 1)
INSERT [dbo].[Nhanhieu] ([NhanhieuID], [Ten], [Thutu], [Hienthi], [IsDel]) VALUES (5, N'Blancpain', 5, 1, 1)
INSERT [dbo].[Nhanhieu] ([NhanhieuID], [Ten], [Thutu], [Hienthi], [IsDel]) VALUES (6, N'Hublot', 6, 1, 1)
INSERT [dbo].[Nhanhieu] ([NhanhieuID], [Ten], [Thutu], [Hienthi], [IsDel]) VALUES (7, N'Omega', 7, 0, 0)
INSERT [dbo].[Nhanhieu] ([NhanhieuID], [Ten], [Thutu], [Hienthi], [IsDel]) VALUES (8, N'Tissot', 8, 0, 0)
SET IDENTITY_INSERT [dbo].[Nhanhieu] OFF
SET IDENTITY_INSERT [dbo].[Sanpham] ON 

INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (1, N'Oyster Perpetual Oyster Perpetual 39', N'<p>- Thương hiệu: Skmei.<br />
- Sản xuất tại: Đ&agrave;i loan<br />
- Kiểu m&aacute;y: Quartz.<br />
- D&agrave;nh cho: Nam.<br />
- M&agrave;u sắc: Xanh.<br />
- Chất liệu mặt trước: K&iacute;nh cứng pha kho&aacute;ng.<br />
- Chất liệu mặt sau: Th&eacute;p kh&ocirc;ng gỉ.<br />
- Chất liệu d&acirc;y: Hợp kim kh&ocirc;ng gỉ.<br />
- V&agrave;nh đồng hồ: Trơn.<br />
- K&iacute;ch thước mặt: 40mm.<br />
- Độ d&agrave;y mặt: 10mm.<br />
- Loại mặt: C&oacute; số, kh&ocirc;ng lịch (3 kim nhỏ kh&ocirc;ng chạy )<br />
- Độ chịu nước: 3ATM (đi mưa, rửa tay, rửa mặt .. ).<br />
- Năng lượng sử dụng: Pin.<br />
- Bảo h&agrave;nh:12 th&aacute;ng, đồng thời hỗ trợ sửa chi ph&iacute; gi&aacute; thấp sau thời gian bảo h&agrave;nh</p>
', 100000, 120000, 1, 1, 1, 1, 1, 10, 10, 1, 1, 1)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (2, N'Đồng hồ Casio LTP-V007L-1EUDF', N'<p>- Thương hiệu: Skmei.<br />
- Sản xuất tại: Đ&agrave;i loan<br />
- Kiểu m&aacute;y: Quartz.<br />
- D&agrave;nh cho: Nam.<br />
- M&agrave;u sắc: Xanh.<br />
- Chất liệu mặt trước: K&iacute;nh cứng pha kho&aacute;ng.<br />
- Chất liệu mặt sau: Th&eacute;p kh&ocirc;ng gỉ.<br />
- Chất liệu d&acirc;y: Hợp kim kh&ocirc;ng gỉ.<br />
- V&agrave;nh đồng hồ: Trơn.<br />
- K&iacute;ch thước mặt: 40mm.<br />
- Độ d&agrave;y mặt: 10mm.<br />
- Loại mặt: C&oacute; số, kh&ocirc;ng lịch (3 kim nhỏ kh&ocirc;ng chạy )<br />
- Độ chịu nước: 3ATM (đi mưa, rửa tay, rửa mặt .. ).<br />
- Năng lượng sử dụng: Pin.<br />
- Bảo h&agrave;nh:12 th&aacute;ng, đồng thời hỗ trợ sửa chi ph&iacute; gi&aacute; thấp sau thời gian bảo h&agrave;nh</p>
', 412, 567, 1, 2, 2, 1, 2, 20, 0, 1, 1, 1)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (3, N'Oyster Perpetual Lady-Datejust 28', N'<p>- Thương hiệu: Skmei.<br />
- Sản xuất tại: Đ&agrave;i loan<br />
- Kiểu m&aacute;y: Quartz.<br />
- D&agrave;nh cho: Nam.<br />
- M&agrave;u sắc: Xanh.<br />
- Chất liệu mặt trước: K&iacute;nh cứng pha kho&aacute;ng.<br />
- Chất liệu mặt sau: Th&eacute;p kh&ocirc;ng gỉ.<br />
- Chất liệu d&acirc;y: Hợp kim kh&ocirc;ng gỉ.<br />
- V&agrave;nh đồng hồ: Trơn.<br />
- K&iacute;ch thước mặt: 40mm.<br />
- Độ d&agrave;y mặt: 10mm.<br />
- Loại mặt: C&oacute; số, kh&ocirc;ng lịch (3 kim nhỏ kh&ocirc;ng chạy )<br />
- Độ chịu nước: 3ATM (đi mưa, rửa tay, rửa mặt .. ).<br />
- Năng lượng sử dụng: Pin.<br />
- Bảo h&agrave;nh:12 th&aacute;ng, đồng thời hỗ trợ sửa chi ph&iacute; gi&aacute; thấp sau thời gian bảo h&agrave;nh</p>
', 45000, 60000, 2, 1, 1, 2, 3, 10, 0, 1, 1, 1)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (4, N'Cellini Dual Time', N'<p>- Thương hiệu: Skmei.<br />
- Sản xuất tại: Đ&agrave;i loan<br />
- Kiểu m&aacute;y: Quartz.<br />
- D&agrave;nh cho: Nam.<br />
- M&agrave;u sắc: Xanh.<br />
- Chất liệu mặt trước: K&iacute;nh cứng pha kho&aacute;ng.<br />
- Chất liệu mặt sau: Th&eacute;p kh&ocirc;ng gỉ.<br />
- Chất liệu d&acirc;y: Hợp kim kh&ocirc;ng gỉ.<br />
- V&agrave;nh đồng hồ: Trơn.<br />
- K&iacute;ch thước mặt: 40mm.<br />
- Độ d&agrave;y mặt: 10mm.<br />
- Loại mặt: C&oacute; số, kh&ocirc;ng lịch (3 kim nhỏ kh&ocirc;ng chạy )<br />
- Độ chịu nước: 3ATM (đi mưa, rửa tay, rửa mặt .. ).<br />
- Năng lượng sử dụng: Pin.<br />
- Bảo h&agrave;nh:12 th&aacute;ng, đồng thời hỗ trợ sửa chi ph&iacute; gi&aacute; thấp sau thời gian bảo h&agrave;nh</p>
', 32100, 40500, 1, 1, 2, 1, 1, 18, 0, 1, 1, 1)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (5, N'Đồng hồ Omega G2758M', N'<p>- Thương hiệu: Skmei.<br />
- Sản xuất tại: Đ&agrave;i loan<br />
- Kiểu m&aacute;y: Quartz.<br />
- D&agrave;nh cho: Nam.<br />
- M&agrave;u sắc: Xanh.<br />
- Chất liệu mặt trước: K&iacute;nh cứng pha kho&aacute;ng.<br />
- Chất liệu mặt sau: Th&eacute;p kh&ocirc;ng gỉ.<br />
- Chất liệu d&acirc;y: Hợp kim kh&ocirc;ng gỉ.<br />
- V&agrave;nh đồng hồ: Trơn.<br />
- K&iacute;ch thước mặt: 40mm.<br />
- Độ d&agrave;y mặt: 10mm.<br />
- Loại mặt: C&oacute; số, kh&ocirc;ng lịch (3 kim nhỏ kh&ocirc;ng chạy )<br />
- Độ chịu nước: 3ATM (đi mưa, rửa tay, rửa mặt .. ).<br />
- Năng lượng sử dụng: Pin.<br />
- Bảo h&agrave;nh:12 th&aacute;ng, đồng thời hỗ trợ sửa chi ph&iacute; gi&aacute; thấp sau thời gian bảo h&agrave;nh</p>
', 455, 700, 1, 7, 2, 1, 2, 45, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (6, N'Đồng hồ Nam Omega Automatic OM760SG', N'Tiện lợi', 1100, 1450, 1, 7, 2, 2, 2, 34, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (7, N'Đồng hồ đôi Bruno ', N'<p>- Thương hiệu: Skmei.<br />
- Sản xuất tại: Đ&agrave;i loan<br />
- Kiểu m&aacute;y: Quartz.<br />
- D&agrave;nh cho: Nam.<br />
- M&agrave;u sắc: Xanh.<br />
- Chất liệu mặt trước: K&iacute;nh cứng pha kho&aacute;ng.<br />
- Chất liệu mặt sau: Th&eacute;p kh&ocirc;ng gỉ.<br />
- Chất liệu d&acirc;y: Hợp kim kh&ocirc;ng gỉ.<br />
- V&agrave;nh đồng hồ: Trơn.<br />
- K&iacute;ch thước mặt: 40mm.<br />
- Độ d&agrave;y mặt: 10mm.<br />
- Loại mặt: C&oacute; số, kh&ocirc;ng lịch (3 kim nhỏ kh&ocirc;ng chạy )<br />
- Độ chịu nước: 3ATM (đi mưa, rửa tay, rửa mặt .. ).<br />
- Năng lượng sử dụng: Pin.<br />
- Bảo h&agrave;nh:12 th&aacute;ng, đồng thời hỗ trợ sửa chi ph&iacute; gi&aacute; thấp sau thời gian bảo h&agrave;nh</p>
', 32890, 47680, 3, 4, 1, 2, 1, 26, 0, 1, 1, 1)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (8, N' Đồng hồ đôi Aries Gold AG-G120B', N'<p>- Thương hiệu: Skmei.<br />
- Sản xuất tại: Đ&agrave;i loan<br />
- Kiểu m&aacute;y: Quartz.<br />
- D&agrave;nh cho: Nam.<br />
- M&agrave;u sắc: Xanh.<br />
- Chất liệu mặt trước: K&iacute;nh cứng pha kho&aacute;ng.<br />
- Chất liệu mặt sau: Th&eacute;p kh&ocirc;ng gỉ.<br />
- Chất liệu d&acirc;y: Hợp kim kh&ocirc;ng gỉ.<br />
- V&agrave;nh đồng hồ: Trơn.<br />
- K&iacute;ch thước mặt: 40mm.<br />
- Độ d&agrave;y mặt: 10mm.<br />
- Loại mặt: C&oacute; số, kh&ocirc;ng lịch (3 kim nhỏ kh&ocirc;ng chạy )<br />
- Độ chịu nước: 3ATM (đi mưa, rửa tay, rửa mặt .. ).<br />
- Năng lượng sử dụng: Pin.<br />
- Bảo h&agrave;nh:12 th&aacute;ng, đồng thời hỗ trợ sửa chi ph&iacute; gi&aacute; thấp sau thời gian bảo h&agrave;nh</p>
', 6700, 7380, 3, 3, 2, 1, 2, 19, 0, 0, 1, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (9, N' Đồng hồ đôi Stuhrling Original ', N'Đơn giản', 5600, 6230, 3, 8, 2, 1, 1, 28, 0, 1, 0, 1)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (10, N'Black Dial Automatic 18K Rose Gold ', N'<p>- Thương hiệu: Skmei.<br />
- Sản xuất tại: Đ&agrave;i loan<br />
- Kiểu m&aacute;y: Quartz.<br />
- D&agrave;nh cho: Nam.<br />
- M&agrave;u sắc: Xanh.<br />
- Chất liệu mặt trước: K&iacute;nh cứng pha kho&aacute;ng.<br />
- Chất liệu mặt sau: Th&eacute;p kh&ocirc;ng gỉ.<br />
- Chất liệu d&acirc;y: Hợp kim kh&ocirc;ng gỉ.<br />
- V&agrave;nh đồng hồ: Trơn.<br />
- K&iacute;ch thước mặt: 40mm.<br />
- Độ d&agrave;y mặt: 10mm.<br />
- Loại mặt: C&oacute; số, kh&ocirc;ng lịch (3 kim nhỏ kh&ocirc;ng chạy )<br />
- Độ chịu nước: 3ATM (đi mưa, rửa tay, rửa mặt .. ).<br />
- Năng lượng sử dụng: Pin.<br />
- Bảo h&agrave;nh:12 th&aacute;ng, đồng thời hỗ trợ sửa chi ph&iacute; gi&aacute; thấp sau thời gian bảo h&agrave;nh</p>
', 18900, 27600, 1, 6, 1, 2, 3, 13, 0, 1, 0, 1)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (11, N'Aero Bang Gold 44mm', N'Sành điệu', 56890, 71900, 1, 6, 1, 1, 3, 8, 0, 0, 1, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (12, N'Aero Bang Black Magic', N'<p>- Thương hiệu: Skmei.<br />
- Sản xuất tại: Đ&agrave;i loan<br />
- Kiểu m&aacute;y: Quartz.<br />
- D&agrave;nh cho: Nam.<br />
- M&agrave;u sắc: Xanh.<br />
- Chất liệu mặt trước: K&iacute;nh cứng pha kho&aacute;ng.<br />
- Chất liệu mặt sau: Th&eacute;p kh&ocirc;ng gỉ.<br />
- Chất liệu d&acirc;y: Hợp kim kh&ocirc;ng gỉ.<br />
- V&agrave;nh đồng hồ: Trơn.<br />
- K&iacute;ch thước mặt: 40mm.<br />
- Độ d&agrave;y mặt: 10mm.<br />
- Loại mặt: C&oacute; số, kh&ocirc;ng lịch (3 kim nhỏ kh&ocirc;ng chạy )<br />
- Độ chịu nước: 3ATM (đi mưa, rửa tay, rửa mặt .. ).<br />
- Năng lượng sử dụng: Pin.<br />
- Bảo h&agrave;nh:12 th&aacute;ng, đồng thời hỗ trợ sửa chi ph&iacute; gi&aacute; thấp sau thời gian bảo h&agrave;nh</p>
', 37800, 46980, 1, 5, 2, 2, 1, 17, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (15, N'Diamond D DM37735RG-R', N'nữ tính', 3509, 4567, 2, 3, 2, 2, 1, 24, 0, 1, 1, 1)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (16, N'Stuhrling Original ST-165', N'Khỏe khắn', 1200, 1900, 1, 4, 2, 1, 2, 32, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (17, N'Đồng hồ TISSOT T52.5.281.21 ', N'<p>- Thương hiệu: Skmei.<br />
- Sản xuất tại: Đ&agrave;i loan<br />
- Kiểu m&aacute;y: Quartz.<br />
- D&agrave;nh cho: Nam.<br />
- M&agrave;u sắc: Xanh.<br />
- Chất liệu mặt trước: K&iacute;nh cứng pha kho&aacute;ng.<br />
- Chất liệu mặt sau: Th&eacute;p kh&ocirc;ng gỉ.<br />
- Chất liệu d&acirc;y: Hợp kim kh&ocirc;ng gỉ.<br />
- V&agrave;nh đồng hồ: Trơn.<br />
- K&iacute;ch thước mặt: 40mm.<br />
- Độ d&agrave;y mặt: 10mm.<br />
- Loại mặt: C&oacute; số, kh&ocirc;ng lịch (3 kim nhỏ kh&ocirc;ng chạy )<br />
- Độ chịu nước: 3ATM (đi mưa, rửa tay, rửa mặt .. ).<br />
- Năng lượng sử dụng: Pin.<br />
- Bảo h&agrave;nh:12 th&aacute;ng, đồng thời hỗ trợ sửa chi ph&iacute; gi&aacute; thấp sau thời gian bảo h&agrave;nh</p>
', 12980, 14786, 2, 8, 2, 1, 1, 15, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (18, N'đồng hồ Citizen ', N'<p>- Thương hiệu: Skmei.<br />
- Sản xuất tại: Đ&agrave;i loan<br />
- Kiểu m&aacute;y: Quartz.<br />
- D&agrave;nh cho: Nam.<br />
- M&agrave;u sắc: Xanh.<br />
- Chất liệu mặt trước: K&iacute;nh cứng pha kho&aacute;ng.<br />
- Chất liệu mặt sau: Th&eacute;p kh&ocirc;ng gỉ.<br />
- Chất liệu d&acirc;y: Hợp kim kh&ocirc;ng gỉ.<br />
- V&agrave;nh đồng hồ: Trơn.<br />
- K&iacute;ch thước mặt: 40mm.<br />
- Độ d&agrave;y mặt: 10mm.<br />
- Loại mặt: C&oacute; số, kh&ocirc;ng lịch (3 kim nhỏ kh&ocirc;ng chạy )<br />
- Độ chịu nước: 3ATM (đi mưa, rửa tay, rửa mặt .. ).<br />
- Năng lượng sử dụng: Pin.<br />
- Bảo h&agrave;nh:12 th&aacute;ng, đồng thời hỗ trợ sửa chi ph&iacute; gi&aacute; thấp sau thời gian bảo h&agrave;nh</p>
', 18700, 21650, 3, 4, 2, 2, 1, 26, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (19, N'Orient B78 – FER2700AW0', N'Trẻ trung', 3400, 5260, 1, 3, 1, 2, 2, 30, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (20, N'Seiko B72 – SSA078K1', N'<p>Lịch l&atilde;m</p>
', 31980, 36650, 1, 7, 2, 2, 3, 26, 12, 1, 0, 1)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (21, N'Đồng Hồ Orient Automatic', N'Tiện lợi', 4800, 6300, 3, 3, 2, 1, 2, 16, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (22, N'Đồng Hồ Romanson Đôi', N'<p>- Thương hiệu: Skmei.<br />
- Sản xuất tại: Đ&agrave;i loan<br />
- Kiểu m&aacute;y: Quartz.<br />
- D&agrave;nh cho: Nam.<br />
- M&agrave;u sắc: Xanh.<br />
- Chất liệu mặt trước: K&iacute;nh cứng pha kho&aacute;ng.<br />
- Chất liệu mặt sau: Th&eacute;p kh&ocirc;ng gỉ.<br />
- Chất liệu d&acirc;y: Hợp kim kh&ocirc;ng gỉ.<br />
- V&agrave;nh đồng hồ: Trơn.<br />
- K&iacute;ch thước mặt: 40mm.<br />
- Độ d&agrave;y mặt: 10mm.<br />
- Loại mặt: C&oacute; số, kh&ocirc;ng lịch (3 kim nhỏ kh&ocirc;ng chạy )<br />
- Độ chịu nước: 3ATM (đi mưa, rửa tay, rửa mặt .. ).<br />
- Năng lượng sử dụng: Pin.<br />
- Bảo h&agrave;nh:12 th&aacute;ng, đồng thời hỗ trợ sửa chi ph&iacute; gi&aacute; thấp sau thời gian bảo h&agrave;nh</p>
', 7800, 10500, 3, 4, 2, 1, 2, 27, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (23, N'Tourbillon Memorigin 15556V', N'Sang trọng', 46790, 58600, 1, 7, 1, 1, 3, 11, 0, 1, 1, 1)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (24, N' Đồng hồ Casio LTP-1191A-4CDF', N'Quý phái', 17690, 19500, 2, 2, 1, 1, 1, 21, 0, 1, 1, 1)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (25, N'Đồng hồ Jacques lemans N-215A', N'<p>- Thương hiệu: Skmei.<br />
- Sản xuất tại: Đ&agrave;i loan<br />
- Kiểu m&aacute;y: Quartz.<br />
- D&agrave;nh cho: Nam.<br />
- M&agrave;u sắc: Xanh.<br />
- Chất liệu mặt trước: K&iacute;nh cứng pha kho&aacute;ng.<br />
- Chất liệu mặt sau: Th&eacute;p kh&ocirc;ng gỉ.<br />
- Chất liệu d&acirc;y: Hợp kim kh&ocirc;ng gỉ.<br />
- V&agrave;nh đồng hồ: Trơn.<br />
- K&iacute;ch thước mặt: 40mm.<br />
- Độ d&agrave;y mặt: 10mm.<br />
- Loại mặt: C&oacute; số, kh&ocirc;ng lịch (3 kim nhỏ kh&ocirc;ng chạy )<br />
- Độ chịu nước: 3ATM (đi mưa, rửa tay, rửa mặt .. ).<br />
- Năng lượng sử dụng: Pin.<br />
- Bảo h&agrave;nh:12 th&aacute;ng, đồng thời hỗ trợ sửa chi ph&iacute; gi&aacute; thấp sau thời gian bảo h&agrave;nh</p>
', 6700, 8340, 1, 5, 2, 1, 2, 34, 0, 1, 1, 1)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (26, N' Đồng hồ Diamond D DM65015IG', N'Tinh tế', 21800, 24900, 2, 3, 1, 2, 1, 28, 1, 1, 1, 1)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (27, N'Oyster And Jubilee Bracelet', N'<p>Sang trọng</p>
', 76900, 87400, 1, 1, 1, 2, 3, 9, 5, 1, 1, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (28, N'Longines Conquest Classic Moonphase', N'<p>- Thương hiệu: Skmei.<br />
- Sản xuất tại: Đ&agrave;i loan<br />
- Kiểu m&aacute;y: Quartz.<br />
- D&agrave;nh cho: Nam.<br />
- M&agrave;u sắc: Xanh.<br />
- Chất liệu mặt trước: K&iacute;nh cứng pha kho&aacute;ng.<br />
- Chất liệu mặt sau: Th&eacute;p kh&ocirc;ng gỉ.<br />
- Chất liệu d&acirc;y: Hợp kim kh&ocirc;ng gỉ.<br />
- V&agrave;nh đồng hồ: Trơn.<br />
- K&iacute;ch thước mặt: 40mm.<br />
- Độ d&agrave;y mặt: 10mm.<br />
- Loại mặt: C&oacute; số, kh&ocirc;ng lịch (3 kim nhỏ kh&ocirc;ng chạy )<br />
- Độ chịu nước: 3ATM (đi mưa, rửa tay, rửa mặt .. ).<br />
- Năng lượng sử dụng: Pin.<br />
- Bảo h&agrave;nh:12 th&aacute;ng, đồng thời hỗ trợ sửa chi ph&iacute; gi&aacute; thấp sau thời gian bảo h&agrave;nh</p>
', 110000, 127000, 1, 7, 1, 2, 3, 10, 10, 1, 1, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (29, N'Đồng hồ Mido Caliber 60', N'Mạnh mẽ', 5746, 7906, 1, 6, 2, 1, 2, 15, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu]) VALUES (30, N'Đồng hồ Skmei SK009', N'<p>- Thương hiệu: Skmei.<br />
- Sản xuất tại: Đ&agrave;i loan<br />
- Kiểu m&aacute;y: Quartz.<br />
- D&agrave;nh cho: Nam.<br />
- M&agrave;u sắc: Xanh.<br />
- Chất liệu mặt trước: K&iacute;nh cứng pha kho&aacute;ng.<br />
- Chất liệu mặt sau: Th&eacute;p kh&ocirc;ng gỉ.<br />
- Chất liệu d&acirc;y: Hợp kim kh&ocirc;ng gỉ.<br />
- V&agrave;nh đồng hồ: Trơn.<br />
- K&iacute;ch thước mặt: 40mm.<br />
- Độ d&agrave;y mặt: 10mm.<br />
- Loại mặt: C&oacute; số, kh&ocirc;ng lịch (3 kim nhỏ kh&ocirc;ng chạy )<br />
- Độ chịu nước: 3ATM (đi mưa, rửa tay, rửa mặt .. ).<br />
- Năng lượng sử dụng: Pin.<br />
- Bảo h&agrave;nh:12 th&aacute;ng, đồng thời hỗ trợ sửa chi ph&iacute; gi&aacute; thấp sau thời gian bảo h&agrave;nh</p>
', 9805, 11200, 2, 5, 2, 1, 1, 22, 5, 0, 1, 0)
SET IDENTITY_INSERT [dbo].[Sanpham] OFF
/****** Object:  Index [UK_Account]    Script Date: 6/6/2016 7:28:48 PM ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [UK_Account] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Loaiday] ADD  CONSTRAINT [DF_Loaiday_IsDel]  DEFAULT ((0)) FOR [IsDel]
GO
ALTER TABLE [dbo].[Loaiday] ADD  CONSTRAINT [DF_Loaiday_Hienthi]  DEFAULT ((0)) FOR [Hienthi]
GO
ALTER TABLE [dbo].[LoaiSP] ADD  CONSTRAINT [DF_LoaiSP_Hienthi]  DEFAULT ((0)) FOR [Hienthi]
GO
ALTER TABLE [dbo].[LoaiSP] ADD  CONSTRAINT [DF_LoaiSP_IsDel]  DEFAULT ((0)) FOR [IsDel]
GO
ALTER TABLE [dbo].[Loaitintuc] ADD  CONSTRAINT [DF_Loaitintuc_Hienthi]  DEFAULT ((0)) FOR [Hienthi]
GO
ALTER TABLE [dbo].[Loaivo] ADD  CONSTRAINT [DF_Loaivo_Hienthi]  DEFAULT ((0)) FOR [Hienthi]
GO
ALTER TABLE [dbo].[Loaivo] ADD  CONSTRAINT [DF_Loaivo_IsDel]  DEFAULT ((0)) FOR [IsDel]
GO
ALTER TABLE [dbo].[Nangluong] ADD  CONSTRAINT [DF_Nangluong_IsDel]  DEFAULT ((0)) FOR [IsDel]
GO
ALTER TABLE [dbo].[Nangluong] ADD  CONSTRAINT [DF_Nangluong_Hienthi]  DEFAULT ((0)) FOR [Hienthi]
GO
ALTER TABLE [dbo].[Nhanhieu] ADD  CONSTRAINT [DF_Nhanhieu_Hienthi]  DEFAULT ((0)) FOR [Hienthi]
GO
ALTER TABLE [dbo].[Nhanhieu] ADD  CONSTRAINT [DF_Nhanhieu_IsDel]  DEFAULT ((0)) FOR [IsDel]
GO
ALTER TABLE [dbo].[Sanpham] ADD  CONSTRAINT [DF_Sanpham_Mota]  DEFAULT (N'Chưa cập nhật mô tả.') FOR [Mota]
GO
ALTER TABLE [dbo].[Sanpham] ADD  CONSTRAINT [DF_Sanpham_LoaiSPID]  DEFAULT ((1)) FOR [LoaiSPID]
GO
ALTER TABLE [dbo].[Sanpham] ADD  CONSTRAINT [DF_Sanpham_NhanhieuID]  DEFAULT ((1)) FOR [NhanhieuID]
GO
ALTER TABLE [dbo].[Sanpham] ADD  CONSTRAINT [DF_Sanpham_NangluongID]  DEFAULT ((1)) FOR [NangluongID]
GO
ALTER TABLE [dbo].[Sanpham] ADD  CONSTRAINT [DF_Sanpham_LoaidayID]  DEFAULT ((1)) FOR [LoaidayID]
GO
ALTER TABLE [dbo].[Sanpham] ADD  CONSTRAINT [DF_Sanpham_LoaivoID]  DEFAULT ((1)) FOR [LoaivoID]
GO
ALTER TABLE [dbo].[Sanpham] ADD  CONSTRAINT [DF_Sanpham_Soluong]  DEFAULT ((0)) FOR [Soluong]
GO
ALTER TABLE [dbo].[Sanpham] ADD  CONSTRAINT [DF_Sanpham_Khuyenmai]  DEFAULT ((0)) FOR [Khuyenmai]
GO
ALTER TABLE [dbo].[Sanpham] ADD  CONSTRAINT [DF_Sanpham_IsNoibat]  DEFAULT ((0)) FOR [IsNoibat]
GO
ALTER TABLE [dbo].[Sanpham] ADD  CONSTRAINT [DF_Sanpham_Hienthi]  DEFAULT ((0)) FOR [Hienthi]
GO
ALTER TABLE [dbo].[Sanpham] ADD  CONSTRAINT [DF_Sanpham_HienthiTrangChu]  DEFAULT ((0)) FOR [HienthiTrangChu]
GO
ALTER TABLE [dbo].[Tintuc] ADD  CONSTRAINT [DF_Tintuc_LoaitintucID]  DEFAULT ((1)) FOR [LoaitintucID]
GO
ALTER TABLE [dbo].[Tintuc] ADD  CONSTRAINT [DF_Tintuc_Hienthi]  DEFAULT ((0)) FOR [Hienthi]
GO
ALTER TABLE [dbo].[Hinhanh]  WITH CHECK ADD  CONSTRAINT [FK_Hinhanh_Sanpham] FOREIGN KEY([SanphamID])
REFERENCES [dbo].[Sanpham] ([SanphamID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hinhanh] CHECK CONSTRAINT [FK_Hinhanh_Sanpham]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Loaiday] FOREIGN KEY([LoaidayID])
REFERENCES [dbo].[Loaiday] ([LoaidayID])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Loaiday]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_LoaiSP] FOREIGN KEY([LoaiSPID])
REFERENCES [dbo].[LoaiSP] ([LoaiSPID])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_LoaiSP]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Loaivo] FOREIGN KEY([LoaivoID])
REFERENCES [dbo].[Loaivo] ([LoaivoID])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Loaivo]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Nangluong] FOREIGN KEY([NangluongID])
REFERENCES [dbo].[Nangluong] ([NangluongID])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Nangluong]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Nhanhieu] FOREIGN KEY([NhanhieuID])
REFERENCES [dbo].[Nhanhieu] ([NhanhieuID])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Nhanhieu]
GO
ALTER TABLE [dbo].[Tintuc]  WITH CHECK ADD  CONSTRAINT [FK_Tintuc_Loaitintuc] FOREIGN KEY([LoaitintucID])
REFERENCES [dbo].[Loaitintuc] ([LoaitintucID])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[Tintuc] CHECK CONSTRAINT [FK_Tintuc_Loaitintuc]
GO
