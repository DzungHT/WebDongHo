USE [WebDongHo]
GO
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

INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (1, N'Oyster Perpetual Oyster Perpetual 39', N'<p>- Thương hiệu: Skmei.<br />
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
', 100000, 120000, 1, 1, 1, 1, 1, 10, 10, 1, 1, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (2, N'Đồng hồ Casio LTP-V007L-1EUDF', N'<p>- Thương hiệu: Skmei.<br />
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
', 412, 567, 1, 2, 2, 1, 2, 20, 0, 1, 1, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (3, N'Oyster Perpetual Lady-Datejust 28', N'<p>- Thương hiệu: Skmei.<br />
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
', 45000, 60000, 2, 1, 1, 2, 3, 10, 0, 1, 1, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (4, N'Cellini Dual Time', N'<p>- Thương hiệu: Skmei.<br />
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
', 32100, 40500, 1, 1, 2, 1, 1, 18, 0, 1, 1, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (5, N'Đồng hồ Omega G2758M', N'<p>- Thương hiệu: Skmei.<br />
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
', 455, 700, 1, 7, 2, 1, 2, 45, 0, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (6, N'Đồng hồ Nam Omega Automatic OM760SG', N'Tiện lợi', 1100, 1450, 1, 7, 2, 2, 2, 34, 0, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (7, N'Đồng hồ đôi Bruno ', N'<p>- Thương hiệu: Skmei.<br />
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
', 32890, 47680, 3, 4, 1, 2, 1, 26, 0, 1, 1, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (8, N' Đồng hồ đôi Aries Gold AG-G120B', N'<p>- Thương hiệu: Skmei.<br />
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
', 6700, 7380, 3, 3, 2, 1, 2, 19, 0, 0, 1, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (9, N' Đồng hồ đôi Stuhrling Original ', N'Đơn giản', 5600, 6230, 3, 8, 2, 1, 1, 28, 0, 1, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (10, N'Black Dial Automatic 18K Rose Gold ', N'<p>- Thương hiệu: Skmei.<br />
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
', 18900, 27600, 1, 6, 1, 2, 3, 13, 0, 1, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (11, N'Aero Bang Gold 44mm', N'Sành điệu', 56890, 71900, 1, 6, 1, 1, 3, 8, 0, 0, 1, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (12, N'Aero Bang Black Magic', N'<p>- Thương hiệu: Skmei.<br />
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
', 37800, 46980, 1, 5, 2, 2, 1, 17, 0, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (15, N'Diamond D DM37735RG-R', N'nữ tính', 3509, 4567, 2, 3, 2, 2, 1, 24, 0, 1, 1, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (16, N'Stuhrling Original ST-165', N'Khỏe khắn', 1200, 1900, 1, 4, 2, 1, 2, 32, 0, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (17, N'Đồng hồ TISSOT T52.5.281.21 ', N'<p>- Thương hiệu: Skmei.<br />
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
', 12980, 14786, 2, 8, 2, 1, 1, 15, 0, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (18, N'đồng hồ Citizen ', N'<p>- Thương hiệu: Skmei.<br />
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
', 18700, 21650, 3, 4, 2, 2, 1, 26, 0, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (19, N'Orient B78 – FER2700AW0', N'Trẻ trung', 3400, 5260, 1, 3, 1, 2, 2, 30, 0, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (20, N'Seiko B72 – SSA078K1', N'<p>Lịch l&atilde;m</p>
', 31980, 36650, 1, 7, 2, 2, 3, 26, 12, 1, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (21, N'Đồng Hồ Orient Automatic', N'Tiện lợi', 4800, 6300, 3, 3, 2, 1, 2, 16, 0, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (22, N'Đồng Hồ Romanson Đôi', N'<p>- Thương hiệu: Skmei.<br />
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
', 7800, 10500, 3, 4, 2, 1, 2, 27, 0, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (23, N'Tourbillon Memorigin 15556V', N'Sang trọng', 46790, 58600, 1, 7, 1, 1, 3, 11, 0, 1, 1, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (24, N' Đồng hồ Casio LTP-1191A-4CDF', N'Quý phái', 17690, 19500, 2, 2, 1, 1, 1, 21, 0, 1, 1, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (25, N'Đồng hồ Jacques lemans N-215A', N'<p>- Thương hiệu: Skmei.<br />
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
', 6700, 8340, 1, 5, 2, 1, 2, 34, 0, 1, 1, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (26, N' Đồng hồ Diamond D DM65015IG', N'Tinh tế', 21800, 24900, 2, 3, 1, 2, 1, 28, 1, 1, 1, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (27, N'Oyster And Jubilee Bracelet', N'<p>Sang trọng</p>
', 76900, 87400, 1, 1, 1, 2, 3, 9, 5, 1, 1, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (28, N'Longines Conquest Classic Moonphase', N'<p>- Thương hiệu: Skmei.<br />
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
', 110000, 127000, 1, 7, 1, 2, 3, 10, 10, 1, 1, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (29, N'Đồng hồ Mido Caliber 60', N'Mạnh mẽ', 5746, 7906, 1, 6, 2, 1, 2, 15, 0, 0, 0, 0, 0)
INSERT [dbo].[Sanpham] ([SanphamID], [Ten], [Mota], [Giagoc], [Giaban], [LoaiSPID], [NhanhieuID], [NangluongID], [LoaidayID], [LoaivoID], [Soluong], [Khuyenmai], [IsNoibat], [Hienthi], [HienthiTrangChu], [IsDel]) VALUES (30, N'Đồng hồ Skmei SK009', N'<p>- Thương hiệu: Skmei.<br />
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
', 9805, 11200, 2, 5, 2, 1, 1, 22, 5, 0, 1, 0, 0)
SET IDENTITY_INSERT [dbo].[Sanpham] OFF
