USE [master]
GO
/****** Object:  Database [QuanLyNhanVien]    Script Date: 3/15/2020 4:18:11 PM ******/
CREATE DATABASE [QuanLyNhanVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyNhanVien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QuanLyNhanVien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyNhanVien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QuanLyNhanVien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QuanLyNhanVien] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyNhanVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyNhanVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyNhanVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyNhanVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyNhanVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyNhanVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyNhanVien] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyNhanVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyNhanVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyNhanVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyNhanVien] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyNhanVien] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyNhanVien', N'ON'
GO
ALTER DATABASE [QuanLyNhanVien] SET QUERY_STORE = OFF
GO
USE [QLNV]
GO
/****** Object:  Table [dbo].[ChamCong]    Script Date: 3/15/2020 4:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChamCong](
	[ChamCongID] [int] NOT NULL,
	[NhanVienID] [int] NULL,
	[NgayChamCong] [date] NULL,
	[LoaiChamCongID] [int] NULL,
	[GhiChu] [date] NULL,
 CONSTRAINT [PK_ChamCong] PRIMARY KEY CLUSTERED 
(
	[ChamCongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 3/15/2020 4:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[ChuVuID] [int] NOT NULL,
	[TenChucVu] [nvarchar](150) NULL,
	[TroCap] [float] NULL,
	[PhuCap] [float] NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[ChuVuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HopDongLaoDong]    Script Date: 3/15/2020 4:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDongLaoDong](
	[HopDongLaoDongID] [int] NOT NULL,
	[NhanVienID] [int] NULL,
	[NguoiKyID] [int] NULL,
	[SoHopDongLaoDong] [int] NULL,
	[ThoiGianKetThuc] [date] NULL,
	[ThoiGianBatDau] [date] NULL,
	[LuongCoBan] [float] NULL,
	[TrangThai] [int] NULL,
	[LoaiHopDongID] [int] NULL,
	[NgayKy] [date] NULL,
 CONSTRAINT [PK_HopDongLaoDong] PRIMARY KEY CLUSTERED 
(
	[HopDongLaoDongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LamThemGio]    Script Date: 3/15/2020 4:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LamThemGio](
	[LamThemGioID] [int] NOT NULL,
	[NguoiDangKy] [int] NULL,
	[NgayLamThem] [date] NULL,
	[SoGioLamThem] [int] NULL,
	[SoTien] [float] NULL,
	[LyDo] [nvarchar](150) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_LamThemGio] PRIMARY KEY CLUSTERED 
(
	[LamThemGioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LamThemGioNhanVien]    Script Date: 3/15/2020 4:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LamThemGioNhanVien](
	[LamThemGioNhanVienID] [int] NOT NULL,
	[LamThemGioID] [int] NULL,
	[NhanVienID] [int] NULL,
 CONSTRAINT [PK_LamThemGioNhanVien] PRIMARY KEY CLUSTERED 
(
	[LamThemGioNhanVienID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiChamCong]    Script Date: 3/15/2020 4:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiChamCong](
	[LoaiChamCongID] [int] NOT NULL,
	[TenLoaiChamCong] [nvarchar](150) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[LaLoaiNghi] [bit] NULL,
 CONSTRAINT [PK_LoaiChamCong] PRIMARY KEY CLUSTERED 
(
	[LoaiChamCongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHopDong]    Script Date: 3/15/2020 4:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHopDong](
	[LoaiHopDongID] [int] NOT NULL,
	[TenLoaiHopDong] [nvarchar](150) NULL,
 CONSTRAINT [PK_LoaiHopDong] PRIMARY KEY CLUSTERED 
(
	[LoaiHopDongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiNghi]    Script Date: 3/15/2020 4:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNghi](
	[LoaiNghiId] [int] NOT NULL,
	[TenLoaiNghi] [nvarchar](max) NULL,
	[LaNghiAll] [bit] NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiNghi] PRIMARY KEY CLUSTERED 
(
	[LoaiNghiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Luong]    Script Date: 3/15/2020 4:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luong](
	[LuongID] [int] NOT NULL,
	[NhanVienID] [int] NULL,
	[NhanVienLapID] [int] NULL,
	[LuongCoBan] [float] NULL,
	[HeSo] [float] NULL,
	[PhuCap] [float] NULL,
	[TroCap] [float] NULL,
	[TienLamThem] [float] NULL,
	[Thuong] [float] NULL,
	[SoNgayLamViec] [int] NULL,
	[BHYT] [float] NULL,
	[BHTN] [float] NULL,
	[BHXH] [float] NULL,
	[TongTien] [float] NULL,
	[NgayNhan] [date] NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_Luong] PRIMARY KEY CLUSTERED 
(
	[LuongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NghiPhep]    Script Date: 3/15/2020 4:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NghiPhep](
	[NghiPhepID] [int] NOT NULL,
	[LoaiNghiID] [int] NULL,
	[NguoiDangKyID] [int] NULL,
	[TuNgay] [date] NULL,
	[DenNgay] [date] NULL,
	[GhiChu] [nvarchar](150) NULL,
 CONSTRAINT [PK_NghiPhep] PRIMARY KEY CLUSTERED 
(
	[NghiPhepID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 3/15/2020 4:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[NhanVienID] [int] IDENTITY(1,1) NOT NULL,
	[ChucVuID] [int] NULL,
	[HoTen] [nvarchar](150) NULL,
	[HinhAnh] [nvarchar](150) NULL,
	[NgaySinh] [datetime] NULL,
	[NoiSinh] [nvarchar](250) NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](150) NULL,
	[SoDienThoai] [nvarchar](12) NULL,
	[NguyenQuan] [nvarchar](150) NULL,
	[Email] [nvarchar](150) NULL,
	[QuocTich] [nvarchar](150) NULL,
	[DanToc] [nvarchar](50) NULL,
	[TonGiao] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[TrangThai] [int] NULL,
	[SoCMT] [nvarchar](50) NULL,
	[NgayCapCMT] [nvarchar](50) NULL,
	[NoiCapCMT] [nvarchar](50) NULL,
	[TrinhDo] [nvarchar](150) NULL,
	[ChuyenNganh] [nvarchar](150) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[NhanVienID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVienNghiPhep]    Script Date: 3/15/2020 4:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVienNghiPhep](
	[NhanVienNghiPhepID] [int] NOT NULL,
	[NhanVienID] [int] NULL,
	[NghiPhepID] [int] NULL,
 CONSTRAINT [PK_NhanVienNghiPhep] PRIMARY KEY CLUSTERED 
(
	[NhanVienNghiPhepID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVienPhongBan]    Script Date: 3/15/2020 4:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVienPhongBan](
	[NhanVienPhongBanID] [int] IDENTITY(1,1) NOT NULL,
	[NhanVienID] [int] NULL,
	[PhongBanID] [int] NULL,
	[TrangThai] [int] NULL,
	[NgayVaoPhong] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[LaTruongPhong] [bit] NULL,
	[GhiChu] [nchar](10) NULL,
 CONSTRAINT [PK_NhanVienPhongBan] PRIMARY KEY CLUSTERED 
(
	[NhanVienPhongBanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 3/15/2020 4:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[PhongBanID] [int] NOT NULL,
	[TenPhongBan] [nvarchar](150) NULL,
	[ViTri] [nvarchar](150) NULL,
	[TenTruongPhong] [nvarchar](150) NULL,
	[SDT] [nchar](12) NULL,
 CONSTRAINT [PK_PhongBan] PRIMARY KEY CLUSTERED 
(
	[PhongBanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thuong]    Script Date: 3/15/2020 4:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuong](
	[ThuongID] [int] NOT NULL,
	[NhanVienID] [int] NULL,
	[SoTien] [int] NULL,
	[GhiChu] [nvarchar](max) NULL,
	[Thang] [int] NULL,
	[Nam] [int] NULL,
	[LyDo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Thuong] PRIMARY KEY CLUSTERED 
(
	[ThuongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChamCong]  WITH CHECK ADD  CONSTRAINT [FK_ChamCong_LoaiChamCong] FOREIGN KEY([LoaiChamCongID])
REFERENCES [dbo].[LoaiChamCong] ([LoaiChamCongID])
GO
ALTER TABLE [dbo].[ChamCong] CHECK CONSTRAINT [FK_ChamCong_LoaiChamCong]
GO
ALTER TABLE [dbo].[ChamCong]  WITH CHECK ADD  CONSTRAINT [FK_ChamCong_NhanVien] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[ChamCong] CHECK CONSTRAINT [FK_ChamCong_NhanVien]
GO
ALTER TABLE [dbo].[HopDongLaoDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDongLaoDong_LoaiHopDong] FOREIGN KEY([LoaiHopDongID])
REFERENCES [dbo].[LoaiHopDong] ([LoaiHopDongID])
GO
ALTER TABLE [dbo].[HopDongLaoDong] CHECK CONSTRAINT [FK_HopDongLaoDong_LoaiHopDong]
GO
ALTER TABLE [dbo].[HopDongLaoDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDongLaoDong_NhanVien] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[HopDongLaoDong] CHECK CONSTRAINT [FK_HopDongLaoDong_NhanVien]
GO
ALTER TABLE [dbo].[HopDongLaoDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDongLaoDong_NhanVien1] FOREIGN KEY([NguoiKyID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[HopDongLaoDong] CHECK CONSTRAINT [FK_HopDongLaoDong_NhanVien1]
GO
ALTER TABLE [dbo].[LamThemGio]  WITH CHECK ADD  CONSTRAINT [FK_LamThemGio_NhanVien] FOREIGN KEY([NguoiDangKy])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[LamThemGio] CHECK CONSTRAINT [FK_LamThemGio_NhanVien]
GO
ALTER TABLE [dbo].[LamThemGioNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_LamThemGioNhanVien_LamThemGio] FOREIGN KEY([LamThemGioID])
REFERENCES [dbo].[LamThemGio] ([LamThemGioID])
GO
ALTER TABLE [dbo].[LamThemGioNhanVien] CHECK CONSTRAINT [FK_LamThemGioNhanVien_LamThemGio]
GO
ALTER TABLE [dbo].[LamThemGioNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_LamThemGioNhanVien_NhanVien] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[LamThemGioNhanVien] CHECK CONSTRAINT [FK_LamThemGioNhanVien_NhanVien]
GO
ALTER TABLE [dbo].[LamThemGioNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_LamThemGioNhanVien_NhanVien1] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[LamThemGioNhanVien] CHECK CONSTRAINT [FK_LamThemGioNhanVien_NhanVien1]
GO
ALTER TABLE [dbo].[Luong]  WITH CHECK ADD  CONSTRAINT [FK_Luong_NhanVien] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[Luong] CHECK CONSTRAINT [FK_Luong_NhanVien]
GO
ALTER TABLE [dbo].[Luong]  WITH CHECK ADD  CONSTRAINT [FK_Luong_NhanVien1] FOREIGN KEY([NhanVienLapID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[Luong] CHECK CONSTRAINT [FK_Luong_NhanVien1]
GO
ALTER TABLE [dbo].[NghiPhep]  WITH CHECK ADD  CONSTRAINT [FK_NghiPhep_LoaiNghi] FOREIGN KEY([LoaiNghiID])
REFERENCES [dbo].[LoaiNghi] ([LoaiNghiId])
GO
ALTER TABLE [dbo].[NghiPhep] CHECK CONSTRAINT [FK_NghiPhep_LoaiNghi]
GO
ALTER TABLE [dbo].[NghiPhep]  WITH CHECK ADD  CONSTRAINT [FK_NghiPhep_NhanVien] FOREIGN KEY([NguoiDangKyID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[NghiPhep] CHECK CONSTRAINT [FK_NghiPhep_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([ChucVuID])
REFERENCES [dbo].[ChucVu] ([ChuVuID])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[NhanVienNghiPhep]  WITH CHECK ADD  CONSTRAINT [FK_NhanVienNghiPhep_NghiPhep] FOREIGN KEY([NghiPhepID])
REFERENCES [dbo].[NghiPhep] ([NghiPhepID])
GO
ALTER TABLE [dbo].[NhanVienNghiPhep] CHECK CONSTRAINT [FK_NhanVienNghiPhep_NghiPhep]
GO
ALTER TABLE [dbo].[NhanVienNghiPhep]  WITH CHECK ADD  CONSTRAINT [FK_NhanVienNghiPhep_NhanVien] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[NhanVienNghiPhep] CHECK CONSTRAINT [FK_NhanVienNghiPhep_NhanVien]
GO
ALTER TABLE [dbo].[NhanVienPhongBan]  WITH CHECK ADD  CONSTRAINT [FK_NhanVienPhongBan_NhanVien] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[NhanVienPhongBan] CHECK CONSTRAINT [FK_NhanVienPhongBan_NhanVien]
GO
ALTER TABLE [dbo].[NhanVienPhongBan]  WITH CHECK ADD  CONSTRAINT [FK_NhanVienPhongBan_PhongBan] FOREIGN KEY([PhongBanID])
REFERENCES [dbo].[PhongBan] ([PhongBanID])
GO
ALTER TABLE [dbo].[NhanVienPhongBan] CHECK CONSTRAINT [FK_NhanVienPhongBan_PhongBan]
GO
ALTER TABLE [dbo].[Thuong]  WITH CHECK ADD  CONSTRAINT [FK_Thuong_NhanVien] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[Thuong] CHECK CONSTRAINT [FK_Thuong_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [QuanLyNhanVien] SET  READ_WRITE 
GO
