USE [master]
GO
/****** Object:  Database [NhaSach]    Script Date: 04/04/2023 09:09:17 ******/
CREATE DATABASE [NhaSach]
GO
ALTER DATABASE [NhaSach] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NhaSach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NhaSach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NhaSach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NhaSach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NhaSach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NhaSach] SET ARITHABORT OFF 
GO
ALTER DATABASE [NhaSach] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NhaSach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NhaSach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NhaSach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NhaSach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NhaSach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NhaSach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NhaSach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NhaSach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NhaSach] SET  ENABLE_BROKER 
GO
ALTER DATABASE [NhaSach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NhaSach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NhaSach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NhaSach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NhaSach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NhaSach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NhaSach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NhaSach] SET RECOVERY FULL 
GO
ALTER DATABASE [NhaSach] SET  MULTI_USER 
GO
ALTER DATABASE [NhaSach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NhaSach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NhaSach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NhaSach] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NhaSach] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NhaSach] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'NhaSach', N'ON'
GO
ALTER DATABASE [NhaSach] SET QUERY_STORE = OFF
GO
USE [NhaSach]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 04/04/2023 09:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[CTHD_ID] [int] NOT NULL,
	[IDHoaDon] [int] NULL,
	[IDSach] [int] NULL,
	[SoLuong] [int] NULL,
	[GiaBan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CTHD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 04/04/2023 09:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[CTPNS_ID] [int] NOT NULL,
	[IDPhieuNhapSach] [int] NULL,
	[IDSach] [int] NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[CTPNS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 04/04/2023 09:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[HD_ID] [int] NOT NULL,
	[Ngay] [date] NULL,
	[NhanVien] [nvarchar](255) NULL,
	[TenKhachHang] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[HD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSach]    Script Date: 04/04/2023 09:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSach](
	[LS_ID] [int] NOT NULL,
	[Ten] [nvarchar](100) NULL,
	[MoTa] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[LS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 04/04/2023 09:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[ND_ID] [int] NOT NULL,
	[TenDangNhap] [nvarchar](20) NULL,
	[MatKhau] [nvarchar](45) NULL,
	[HoTen] [nvarchar](255) NULL,
	[Email] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](20) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ND_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 04/04/2023 09:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[PNS_ID] [int] NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
	[Ngay] [date] NULL,
	[NhanVien] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[PNS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 04/04/2023 09:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[S_ID] [int] NOT NULL,
	[TieuDe] [nvarchar](255) NULL,
	[TacGia] [nvarchar](255) NULL,
	[NamXuatBan] [int] NULL,
	[TheLoai] [int] NULL,
	[MoTa] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[S_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LoaiSach] ([LS_ID], [Ten], [MoTa]) VALUES (1, N'Truyện cười', N'hài')
INSERT [dbo].[LoaiSach] ([LS_ID], [Ten], [MoTa]) VALUES (2, N'Tiểu thuyết', N'tình cảm')
GO
INSERT [dbo].[NguoiDung] ([ND_ID], [TenDangNhap], [MatKhau], [HoTen], [Email], [DiaChi], [NgaySinh], [GioiTinh]) VALUES (1, N'nd1', N'123', N'Nguyễn Văn An', N'nva@gmail.com', N'Q.12, TP.HCM', CAST(N'1999-01-01' AS Date), N'Nam')
INSERT [dbo].[NguoiDung] ([ND_ID], [TenDangNhap], [MatKhau], [HoTen], [Email], [DiaChi], [NgaySinh], [GioiTinh]) VALUES (2, N'nd2', N'123', N'Trần Thị Mắm', N'ttm@gamil.com', N'Bình Tân, TP.HCM', CAST(N'2000-10-20' AS Date), N'Nữ')
GO
INSERT [dbo].[Sach] ([S_ID], [TieuDe], [TacGia], [NamXuatBan], [TheLoai], [MoTa]) VALUES (1, N'Việc học', N'T', 2000, 1, N'học')
INSERT [dbo].[Sach] ([S_ID], [TieuDe], [TacGia], [NamXuatBan], [TheLoai], [MoTa]) VALUES (2, N'Tình cảm', N'H', 1999, 2, N'tình cảm')
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HD] FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([HD_ID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_CTHD_HD]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_S] FOREIGN KEY([IDSach])
REFERENCES [dbo].[Sach] ([S_ID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_CTHD_S]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTPN_PN] FOREIGN KEY([IDPhieuNhapSach])
REFERENCES [dbo].[PhieuNhap] ([PNS_ID])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_CTPN_PN]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTPN_S] FOREIGN KEY([IDSach])
REFERENCES [dbo].[Sach] ([S_ID])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_CTPN_S]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_S_LS] FOREIGN KEY([TheLoai])
REFERENCES [dbo].[LoaiSach] ([LS_ID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_S_LS]
GO
USE [master]
GO
ALTER DATABASE [NhaSach] SET  READ_WRITE 
GO

create proc sp_deteteLoaiSach @id varchar(max)
as
begin
	if exists (select * from Sach where TheLoai = @id)
	begin
		update Sach set TheLoai = null where TheLoai = @id
	end
	delete LoaiSach where LS_ID = @id
end

create proc sp_deleteSach @id varchar(max)
as
begin
	if exists (select * from ChiTietHoaDon where IDSach = @id)
	begin
		update ChiTietHoaDon set IDSach = null where IDSach = @id
	end
	if exists (select * from ChiTietPhieuNhap where IDSach = @id)
	begin
		update ChiTietPhieuNhap set IDSach = null where IDSach = @id
	end
	delete Sach where S_ID = @id
end

create proc sp_selectSach
as
	select S_ID, TieuDe, TacGia, TheLoai, MoTa from Sach

--exec dbo.sp_deteteLoaiSach @id=3
--exec dbo.sp_deleteSach @id=3
--exec dbo.sp_selectSach

--select Max(LS_ID) from LoaiSach
--select Max(HD_ID) from HoaDon
--select * from LoaiSach

--select count(*) from LoaiSach where Ten = N'truyện cười'
--insert into LoaiSach(LS_ID, Ten, MoTa) values(1, '', '')