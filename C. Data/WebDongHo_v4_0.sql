USE [WebDongHo]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 2016-06-07 04:32:27 ******/
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
	[Role] [int] NULL,
	[Trangthai] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_Account] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Chitietdathang]    Script Date: 2016-06-07 04:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietdathang](
	[DathangID] [int] NOT NULL,
	[SanphamID] [int] NOT NULL,
	[Soluong] [int] NULL,
 CONSTRAINT [PK_Chitietdathang] PRIMARY KEY CLUSTERED 
(
	[DathangID] ASC,
	[SanphamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dathang]    Script Date: 2016-06-07 04:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dathang](
	[DathangID] [int] IDENTITY(1,1) NOT NULL,
	[Ngaydat] [datetime] NULL,
	[Hoten] [nvarchar](50) NULL,
	[Diachi] [nvarchar](150) NULL,
	[SDT] [nvarchar](11) NULL,
	[Trangthai] [bit] NULL,
 CONSTRAINT [PK_Dathang] PRIMARY KEY CLUSTERED 
(
	[DathangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hinhanh]    Script Date: 2016-06-07 04:32:27 ******/
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
/****** Object:  Table [dbo].[Loaiday]    Script Date: 2016-06-07 04:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loaiday](
	[LoaidayID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Thutu] [int] NULL,
	[Hienthi] [bit] NOT NULL CONSTRAINT [DF_Loaiday_Hienthi]  DEFAULT ((0)),
 CONSTRAINT [PK_Loaiday] PRIMARY KEY CLUSTERED 
(
	[LoaidayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 2016-06-07 04:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[LoaiSPID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Thutu] [int] NULL,
	[Hienthi] [bit] NOT NULL CONSTRAINT [DF_LoaiSP_Hienthi]  DEFAULT ((0)),
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[LoaiSPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loaitintuc]    Script Date: 2016-06-07 04:32:27 ******/
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
/****** Object:  Table [dbo].[Loaivo]    Script Date: 2016-06-07 04:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loaivo](
	[LoaivoID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Thutu] [int] NULL,
	[Hienthi] [bit] NOT NULL CONSTRAINT [DF_Loaivo_Hienthi]  DEFAULT ((0)),
 CONSTRAINT [PK_Loaivo] PRIMARY KEY CLUSTERED 
(
	[LoaivoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nangluong]    Script Date: 2016-06-07 04:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nangluong](
	[NangluongID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Thutu] [int] NULL,
	[Hienthi] [bit] NOT NULL CONSTRAINT [DF_Nangluong_Hienthi]  DEFAULT ((0)),
 CONSTRAINT [PK_Nangluong] PRIMARY KEY CLUSTERED 
(
	[NangluongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nhanhieu]    Script Date: 2016-06-07 04:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhanhieu](
	[NhanhieuID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Thutu] [int] NULL,
	[Hienthi] [bit] NOT NULL CONSTRAINT [DF_Nhanhieu_Hienthi]  DEFAULT ((0)),
 CONSTRAINT [PK_Nhanhieu] PRIMARY KEY CLUSTERED 
(
	[NhanhieuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 2016-06-07 04:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[SanphamID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Mota] [nvarchar](max) NOT NULL CONSTRAINT [DF_Sanpham_Mota]  DEFAULT (N'Chưa cập nhật mô tả.'),
	[Giagoc] [int] NOT NULL,
	[Giaban] [int] NOT NULL,
	[LoaiSPID] [int] NOT NULL CONSTRAINT [DF_Sanpham_LoaiSPID]  DEFAULT ((1)),
	[NhanhieuID] [int] NOT NULL CONSTRAINT [DF_Sanpham_NhanhieuID]  DEFAULT ((1)),
	[NangluongID] [int] NOT NULL CONSTRAINT [DF_Sanpham_NangluongID]  DEFAULT ((1)),
	[LoaidayID] [int] NOT NULL CONSTRAINT [DF_Sanpham_LoaidayID]  DEFAULT ((1)),
	[LoaivoID] [int] NOT NULL CONSTRAINT [DF_Sanpham_LoaivoID]  DEFAULT ((1)),
	[Soluong] [int] NOT NULL CONSTRAINT [DF_Sanpham_Soluong]  DEFAULT ((0)),
	[Khuyenmai] [real] NOT NULL CONSTRAINT [DF_Sanpham_Khuyenmai]  DEFAULT ((0)),
	[IsNoibat] [bit] NOT NULL CONSTRAINT [DF_Sanpham_IsNoibat]  DEFAULT ((0)),
	[Hienthi] [bit] NOT NULL CONSTRAINT [DF_Sanpham_Hienthi]  DEFAULT ((0)),
	[HienthiTrangChu] [bit] NOT NULL CONSTRAINT [DF_Sanpham_HienthiTrangChu]  DEFAULT ((0)),
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[SanphamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tintuc]    Script Date: 2016-06-07 04:32:27 ******/
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
ALTER TABLE [dbo].[Loaitintuc] ADD  CONSTRAINT [DF_Loaitintuc_Hienthi]  DEFAULT ((0)) FOR [Hienthi]
GO
ALTER TABLE [dbo].[Tintuc] ADD  CONSTRAINT [DF_Tintuc_LoaitintucID]  DEFAULT ((1)) FOR [LoaitintucID]
GO
ALTER TABLE [dbo].[Tintuc] ADD  CONSTRAINT [DF_Tintuc_Hienthi]  DEFAULT ((0)) FOR [Hienthi]
GO
ALTER TABLE [dbo].[Chitietdathang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdathang_Dathang] FOREIGN KEY([DathangID])
REFERENCES [dbo].[Dathang] ([DathangID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chitietdathang] CHECK CONSTRAINT [FK_Chitietdathang_Dathang]
GO
ALTER TABLE [dbo].[Chitietdathang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdathang_Sanpham] FOREIGN KEY([SanphamID])
REFERENCES [dbo].[Sanpham] ([SanphamID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chitietdathang] CHECK CONSTRAINT [FK_Chitietdathang_Sanpham]
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
/****** Object:  StoredProcedure [dbo].[Loaiday_GetForMenu]    Script Date: 2016-06-07 04:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Loaiday_GetForMenu]
as
begin
	select * from Loaiday [tb]
	where tb.Hienthi = 1
	order by tb.Thutu
end




GO
/****** Object:  StoredProcedure [dbo].[LoaiSP_GetForMenu]    Script Date: 2016-06-07 04:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[LoaiSP_GetForMenu]
as
begin
	select * from LoaiSP [tb]
	where tb.Hienthi = 1
	order by tb.Thutu
end

GO
/****** Object:  StoredProcedure [dbo].[Loaivo_GetForMenu]    Script Date: 2016-06-07 04:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Loaivo_GetForMenu]
as
begin
	select * from Loaivo [tb]
	where tb.Hienthi = 1
	order by tb.Thutu
end




GO
/****** Object:  StoredProcedure [dbo].[Nangluong_GetForMenu]    Script Date: 2016-06-07 04:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Nangluong_GetForMenu]
as
begin
	select * from Nangluong [tb]
	where tb.Hienthi = 1
	order by tb.Thutu
end




GO
/****** Object:  StoredProcedure [dbo].[Nhanhieu_GetForMenu]    Script Date: 2016-06-07 04:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Nhanhieu_GetForMenu]
as
begin
	select * from [Nhanhieu] [nh]
	where nh.Hienthi = 1
	order by nh.Thutu
end




GO
