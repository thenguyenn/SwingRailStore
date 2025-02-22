USE [Final]
GO
/****** Object:  Table [dbo].[chuc_vu]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuc_vu](
	[deleted] [bit] NULL,
	[trang_thai] [bit] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
	[ma] [nvarchar](255) NULL,
	[ten] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dot_giam_gia]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dot_giam_gia](
	[deleted] [bit] NULL,
	[phan_tram_giam] [real] NULL,
	[trang_thai] [int] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ngay_bat_dau] [datetime2](6) NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_ket_thuc] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
	[ma] [nvarchar](255) NULL,
	[ten] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gio_hang]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gio_hang](
	[deleted] [bit] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_khach_hang] [bigint] NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
	[ma] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gio_hang_chi_tiet]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gio_hang_chi_tiet](
	[deleted] [bit] NULL,
	[so_luong] [int] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_gio_hang] [bigint] NULL,
	[id_san_pham_chi_tiet] [bigint] NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hinh_anh]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hinh_anh](
	[deleted] [bit] NULL,
	[trang_thai] [bit] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_san_pham_chi_tiet] [bigint] NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
	[duong_dan] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hinh_thuc_thanh_toan]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hinh_thuc_thanh_toan](
	[deleted] [bit] NULL,
	[loai_thanh_toan] [int] NULL,
	[so_tien_thanh_toan] [numeric](38, 2) NULL,
	[trang_thai] [bit] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_hoa_don] [bigint] NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
	[ghi_chu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don](
	[deleted] [bit] NULL,
	[loai_hoa_don] [int] NULL,
	[phi_van_chuyen] [numeric](38, 2) NULL,
	[phuong_thuc_thanh_toan] [int] NULL,
	[so_phan_tram_khuyen_mai] [int] NULL,
	[so_tien_khach_dua] [numeric](38, 2) NULL,
	[tong_tien] [numeric](38, 2) NULL,
	[tong_tien_sau_giam] [numeric](38, 2) NULL,
	[trang_thai] [int] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_khach_hang] [bigint] NULL,
	[id_nhan_vien] [bigint] NULL,
	[id_voucher] [bigint] NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_hoan_thanh] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
	[ngay_van_chuyen] [datetime2](6) NULL,
	[ngay_xac_nhan] [datetime2](6) NULL,
	[dia_chi] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[ghi_chu] [nvarchar](255) NULL,
	[ma] [nvarchar](255) NULL,
	[ma_phuong] [nvarchar](255) NULL,
	[ma_tinh] [nvarchar](255) NULL,
	[ma_xa] [nvarchar](255) NULL,
	[phuong] [nvarchar](255) NULL,
	[sdt_nguoi_nhan] [nvarchar](255) NULL,
	[ten_nguoi_nhan] [nvarchar](255) NULL,
	[tinh] [nvarchar](255) NULL,
	[xa] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don_chi_tiet]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don_chi_tiet](
	[deleted] [bit] NULL,
	[don_gia] [numeric](38, 2) NULL,
	[don_gia_sau_khi_giam] [numeric](38, 2) NULL,
	[so_luong] [int] NULL,
	[tong_tien] [numeric](38, 2) NULL,
	[trang_thai] [int] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_hoa_don] [bigint] NULL,
	[id_san_pham_chi_tiet] [bigint] NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khach_hang]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khach_hang](
	[deleted] [bit] NULL,
	[gioi_tinh] [bit] NULL,
	[loai_khach] [bit] NULL,
	[trang_thai] [bit] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_sinh] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
	[avatar] [nvarchar](255) NULL,
	[cccd] [nvarchar](255) NULL,
	[dia_chi] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[ma] [nvarchar](255) NULL,
	[ma_phuong] [nvarchar](255) NULL,
	[ma_tinh] [nvarchar](255) NULL,
	[ma_xa] [nvarchar](255) NULL,
	[mat_khau] [nvarchar](255) NULL,
	[phuong] [nvarchar](255) NULL,
	[so_dien_thoai] [nvarchar](255) NULL,
	[ten] [nvarchar](255) NULL,
	[tinh] [nvarchar](255) NULL,
	[xa] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kich_co]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kich_co](
	[deleted] [bit] NULL,
	[kich_co] [int] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lich_su]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lich_su](
	[deleted] [bit] NULL,
	[trang_thai] [int] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_hoa_don] [bigint] NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
	[ghi_chu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mau_sac]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mau_sac](
	[deleted] [bit] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
	[ten] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhan_vien]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhan_vien](
	[deleted] [bit] NULL,
	[gioi_tinh] [bit] NULL,
	[trang_thai] [bit] NULL,
	[chuc_vu] [bigint] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_sinh] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
	[avatar] [nvarchar](255) NULL,
	[cccd] [nvarchar](255) NULL,
	[dia_chi] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[ma] [nvarchar](255) NULL,
	[ma_phuong] [nvarchar](255) NULL,
	[ma_tinh] [nvarchar](255) NULL,
	[ma_xa] [nvarchar](255) NULL,
	[mat_khau] [nvarchar](255) NULL,
	[phuong] [nvarchar](255) NULL,
	[so_dien_thoai] [nvarchar](255) NULL,
	[ten] [nvarchar](255) NULL,
	[tinh] [nvarchar](255) NULL,
	[xa] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieu_giam_gia_chi_tiet]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieu_giam_gia_chi_tiet](
	[deleted] [bit] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_khach_hang] [bigint] NULL,
	[id_phieu_giam_gia] [bigint] NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[deleted] [bit] NULL,
	[trang_thai] [bit] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_the_loai] [bigint] NULL,
	[id_thuong_hieu] [bigint] NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
	[ma] [nvarchar](255) NULL,
	[mo_ta] [nvarchar](255) NULL,
	[ten] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham_chi_tiet]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham_chi_tiet](
	[deleted] [bit] NULL,
	[don_gia] [numeric](38, 2) NULL,
	[gia_tri_giam] [numeric](38, 2) NULL,
	[so_luong_ton] [int] NULL,
	[trang_thai] [bit] NULL,
	[trong_luong] [real] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_dot_giam_gia] [bigint] NULL,
	[id_kich_co] [bigint] NULL,
	[id_mau_sac] [bigint] NULL,
	[id_san_pham] [bigint] NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
	[QRcode] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[the_loai]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[the_loai](
	[deleted] [bit] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
	[ten] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thuong_hieu]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thuong_hieu](
	[deleted] [bit] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
	[ten] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher]    Script Date: 10/10/2024 9:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher](
	[deleted] [bit] NULL,
	[gia_tri_toi_da] [numeric](38, 2) NULL,
	[gia_tri_toi_thieu] [numeric](38, 2) NULL,
	[loai_voucher] [int] NULL,
	[phan_tram_giam] [real] NULL,
	[so_lan_dung] [int] NULL,
	[trang_thai] [int] NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ngay_bat_dau] [datetime2](6) NULL,
	[ngay_cap_nhat] [datetime2](6) NULL,
	[ngay_ket_thuc] [datetime2](6) NULL,
	[ngay_tao] [datetime2](6) NULL,
	[ma] [nvarchar](255) NULL,
	[ten] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[gio_hang]  WITH CHECK ADD  CONSTRAINT [FK8jkndfem3vywi4qde8awcu45u] FOREIGN KEY([id_khach_hang])
REFERENCES [dbo].[khach_hang] ([id])
GO
ALTER TABLE [dbo].[gio_hang] CHECK CONSTRAINT [FK8jkndfem3vywi4qde8awcu45u]
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FKjrkuss0lgfn76maw426puheeu] FOREIGN KEY([id_san_pham_chi_tiet])
REFERENCES [dbo].[san_pham_chi_tiet] ([id])
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet] CHECK CONSTRAINT [FKjrkuss0lgfn76maw426puheeu]
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FKkt2s807w7uf9vgc64x6r3cl2n] FOREIGN KEY([id_gio_hang])
REFERENCES [dbo].[gio_hang] ([id])
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet] CHECK CONSTRAINT [FKkt2s807w7uf9vgc64x6r3cl2n]
GO
ALTER TABLE [dbo].[hinh_anh]  WITH CHECK ADD  CONSTRAINT [FKcnbw5h2hcrkt88rv3fu4alpfx] FOREIGN KEY([id_san_pham_chi_tiet])
REFERENCES [dbo].[san_pham_chi_tiet] ([id])
GO
ALTER TABLE [dbo].[hinh_anh] CHECK CONSTRAINT [FKcnbw5h2hcrkt88rv3fu4alpfx]
GO
ALTER TABLE [dbo].[hinh_thuc_thanh_toan]  WITH CHECK ADD  CONSTRAINT [FKj0sqe7n07tu1v9j31woyq2lbl] FOREIGN KEY([id_hoa_don])
REFERENCES [dbo].[hoa_don] ([id])
GO
ALTER TABLE [dbo].[hinh_thuc_thanh_toan] CHECK CONSTRAINT [FKj0sqe7n07tu1v9j31woyq2lbl]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FKig2lvj5duqa87snnm4fe9y1yb] FOREIGN KEY([id_voucher])
REFERENCES [dbo].[voucher] ([id])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FKig2lvj5duqa87snnm4fe9y1yb]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FKs7i04fufo69w848qe03rgxkkw] FOREIGN KEY([id_khach_hang])
REFERENCES [dbo].[khach_hang] ([id])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FKs7i04fufo69w848qe03rgxkkw]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FKtqy95tp93g42xc3p28x6uufp] FOREIGN KEY([id_nhan_vien])
REFERENCES [dbo].[nhan_vien] ([id])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FKtqy95tp93g42xc3p28x6uufp]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK3igy4tfvmm2b6mypd176k4948] FOREIGN KEY([id_hoa_don])
REFERENCES [dbo].[hoa_don] ([id])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] CHECK CONSTRAINT [FK3igy4tfvmm2b6mypd176k4948]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FKmm0mt4gwrghnll65uq9b5b4ox] FOREIGN KEY([id_san_pham_chi_tiet])
REFERENCES [dbo].[san_pham_chi_tiet] ([id])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] CHECK CONSTRAINT [FKmm0mt4gwrghnll65uq9b5b4ox]
GO
ALTER TABLE [dbo].[lich_su]  WITH CHECK ADD  CONSTRAINT [FKt6lwyniw41y853h3vw5gy70bt] FOREIGN KEY([id_hoa_don])
REFERENCES [dbo].[hoa_don] ([id])
GO
ALTER TABLE [dbo].[lich_su] CHECK CONSTRAINT [FKt6lwyniw41y853h3vw5gy70bt]
GO
ALTER TABLE [dbo].[nhan_vien]  WITH CHECK ADD  CONSTRAINT [FKmoxi16k1khcwofhvknf19qwtl] FOREIGN KEY([chuc_vu])
REFERENCES [dbo].[chuc_vu] ([id])
GO
ALTER TABLE [dbo].[nhan_vien] CHECK CONSTRAINT [FKmoxi16k1khcwofhvknf19qwtl]
GO
ALTER TABLE [dbo].[phieu_giam_gia_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK2keghs7r52uya81yme3tvcbp4] FOREIGN KEY([id_khach_hang])
REFERENCES [dbo].[khach_hang] ([id])
GO
ALTER TABLE [dbo].[phieu_giam_gia_chi_tiet] CHECK CONSTRAINT [FK2keghs7r52uya81yme3tvcbp4]
GO
ALTER TABLE [dbo].[phieu_giam_gia_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK75nrfqfcys4x7ejnnp7qoctcl] FOREIGN KEY([id_phieu_giam_gia])
REFERENCES [dbo].[voucher] ([id])
GO
ALTER TABLE [dbo].[phieu_giam_gia_chi_tiet] CHECK CONSTRAINT [FK75nrfqfcys4x7ejnnp7qoctcl]
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD  CONSTRAINT [FKho26adkjy3ucqw6x4ntul96dw] FOREIGN KEY([id_the_loai])
REFERENCES [dbo].[the_loai] ([id])
GO
ALTER TABLE [dbo].[san_pham] CHECK CONSTRAINT [FKho26adkjy3ucqw6x4ntul96dw]
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD  CONSTRAINT [FKng0be3yah8qweo3tnmxm9pnrw] FOREIGN KEY([id_thuong_hieu])
REFERENCES [dbo].[thuong_hieu] ([id])
GO
ALTER TABLE [dbo].[san_pham] CHECK CONSTRAINT [FKng0be3yah8qweo3tnmxm9pnrw]
GO
ALTER TABLE [dbo].[san_pham_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK6epx185o43l9jskre3on1vvo6] FOREIGN KEY([id_dot_giam_gia])
REFERENCES [dbo].[dot_giam_gia] ([id])
GO
ALTER TABLE [dbo].[san_pham_chi_tiet] CHECK CONSTRAINT [FK6epx185o43l9jskre3on1vvo6]
GO
ALTER TABLE [dbo].[san_pham_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK6mhfql2wvwa0sfk1lx9bdimvu] FOREIGN KEY([id_kich_co])
REFERENCES [dbo].[kich_co] ([id])
GO
ALTER TABLE [dbo].[san_pham_chi_tiet] CHECK CONSTRAINT [FK6mhfql2wvwa0sfk1lx9bdimvu]
GO
ALTER TABLE [dbo].[san_pham_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FKdt9xxy835agedr1aa67p8vw0o] FOREIGN KEY([id_mau_sac])
REFERENCES [dbo].[mau_sac] ([id])
GO
ALTER TABLE [dbo].[san_pham_chi_tiet] CHECK CONSTRAINT [FKdt9xxy835agedr1aa67p8vw0o]
GO
ALTER TABLE [dbo].[san_pham_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FKmby561odp360b0sfqx4mmarja] FOREIGN KEY([id_san_pham])
REFERENCES [dbo].[san_pham] ([id])
GO
ALTER TABLE [dbo].[san_pham_chi_tiet] CHECK CONSTRAINT [FKmby561odp360b0sfqx4mmarja]
GO
