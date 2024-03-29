USE [master]
GO
/****** Object:  Database [banvemaybay]    Script Date: 12/12/2019 1:36:08 PM ******/
CREATE DATABASE [banvemaybay]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'banvemaybay', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\banvemaybay.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'banvemaybay_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\banvemaybay_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [banvemaybay] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [banvemaybay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [banvemaybay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [banvemaybay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [banvemaybay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [banvemaybay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [banvemaybay] SET ARITHABORT OFF 
GO
ALTER DATABASE [banvemaybay] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [banvemaybay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [banvemaybay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [banvemaybay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [banvemaybay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [banvemaybay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [banvemaybay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [banvemaybay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [banvemaybay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [banvemaybay] SET  DISABLE_BROKER 
GO
ALTER DATABASE [banvemaybay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [banvemaybay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [banvemaybay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [banvemaybay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [banvemaybay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [banvemaybay] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [banvemaybay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [banvemaybay] SET RECOVERY FULL 
GO
ALTER DATABASE [banvemaybay] SET  MULTI_USER 
GO
ALTER DATABASE [banvemaybay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [banvemaybay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [banvemaybay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [banvemaybay] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [banvemaybay] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'banvemaybay', N'ON'
GO
ALTER DATABASE [banvemaybay] SET QUERY_STORE = OFF
GO
USE [banvemaybay]
GO
/****** Object:  Table [dbo].[ChuyenBay]    Script Date: 12/12/2019 1:36:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenBay](
	[ChuyenBayID] [char](10) NOT NULL,
	[LoaiMayBay] [nvarchar](50) NOT NULL,
	[NgayCatCanh] [date] NOT NULL,
	[GioCatCanh] [time](7) NOT NULL,
 CONSTRAINT [PK_ChuyenBay] PRIMARY KEY CLUSTERED 
(
	[ChuyenBayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/12/2019 1:36:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[KhachHangId] [char](10) NOT NULL,
	[TenKhachHang] [nvarchar](50) NOT NULL,
	[Cmnd] [text] NOT NULL,
	[Sdt] [text] NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[KhachHangId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoTrinh]    Script Date: 12/12/2019 1:36:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoTrinh](
	[LoTrinhId] [char](10) NOT NULL,
	[SanBayDi] [nvarchar](50) NOT NULL,
	[SanBayDen] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChangBay] PRIMARY KEY CLUSTERED 
(
	[LoTrinhId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatVe]    Script Date: 12/12/2019 1:36:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatVe](
	[PhieuDatVeId] [char](10) NOT NULL,
	[NgayDat] [date] NOT NULL,
	[KhachHangID] [char](10) NOT NULL,
	[ChuyenBayId] [char](10) NOT NULL,
	[LoTrinhID] [char](10) NOT NULL,
 CONSTRAINT [PK_PhieuDatVe] PRIMARY KEY CLUSTERED 
(
	[PhieuDatVeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VeMayBay]    Script Date: 12/12/2019 1:36:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeMayBay](
	[VeMayBayId] [char](10) NOT NULL,
	[SoGhe] [text] NOT NULL,
	[KhoangGhe] [text] NOT NULL,
	[GiaVe] [int] NOT NULL,
	[PhieuDatVeId] [char](10) NOT NULL,
	[ChuyenBayId] [char](10) NOT NULL,
 CONSTRAINT [PK_VeMayBay] PRIMARY KEY CLUSTERED 
(
	[VeMayBayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ChuyenBay] ([ChuyenBayID], [LoaiMayBay], [NgayCatCanh], [GioCatCanh]) VALUES (N'CB001     ', N'Vjetjet', CAST(N'2019-06-12' AS Date), CAST(N'05:30:00' AS Time))
INSERT [dbo].[ChuyenBay] ([ChuyenBayID], [LoaiMayBay], [NgayCatCanh], [GioCatCanh]) VALUES (N'CB002     ', N'VNAirlines', CAST(N'2019-06-12' AS Date), CAST(N'07:15:00' AS Time))
INSERT [dbo].[ChuyenBay] ([ChuyenBayID], [LoaiMayBay], [NgayCatCanh], [GioCatCanh]) VALUES (N'CB003     ', N'Jetstar', CAST(N'2019-07-12' AS Date), CAST(N'14:10:00' AS Time))
INSERT [dbo].[ChuyenBay] ([ChuyenBayID], [LoaiMayBay], [NgayCatCanh], [GioCatCanh]) VALUES (N'CB005     ', N'VNAirlines', CAST(N'2019-07-12' AS Date), CAST(N'04:15:00' AS Time))
INSERT [dbo].[ChuyenBay] ([ChuyenBayID], [LoaiMayBay], [NgayCatCanh], [GioCatCanh]) VALUES (N'CB006     ', N'VNAirlines', CAST(N'2020-10-08' AS Date), CAST(N'04:15:00' AS Time))
INSERT [dbo].[ChuyenBay] ([ChuyenBayID], [LoaiMayBay], [NgayCatCanh], [GioCatCanh]) VALUES (N'CB007     ', N'VNAirlines', CAST(N'2020-10-08' AS Date), CAST(N'04:15:00' AS Time))
INSERT [dbo].[KhachHang] ([KhachHangId], [TenKhachHang], [Cmnd], [Sdt]) VALUES (N'KH001     ', N'Nguyễn Văn A', N'987654321', N'0123456789')
INSERT [dbo].[KhachHang] ([KhachHangId], [TenKhachHang], [Cmnd], [Sdt]) VALUES (N'KH002     ', N'Nguyễn Văn B', N'876541357', N'0164563641')
INSERT [dbo].[KhachHang] ([KhachHangId], [TenKhachHang], [Cmnd], [Sdt]) VALUES (N'KH003     ', N'Nguyễn Văn C', N'648554148', N'0136464646')
INSERT [dbo].[KhachHang] ([KhachHangId], [TenKhachHang], [Cmnd], [Sdt]) VALUES (N'KH004     ', N'Nguyễn Văn D', N'147852369', N'0123658945')
INSERT [dbo].[KhachHang] ([KhachHangId], [TenKhachHang], [Cmnd], [Sdt]) VALUES (N'KH005     ', N'Nguyễn Thị Y', N'153483152522', N'0957632975')
INSERT [dbo].[KhachHang] ([KhachHangId], [TenKhachHang], [Cmnd], [Sdt]) VALUES (N'KH006     ', N'Nguyễn Thị Q', N'1544646464661', N'0646468445')
INSERT [dbo].[LoTrinh] ([LoTrinhId], [SanBayDi], [SanBayDen]) VALUES (N'LT001     ', N'TPHCM', N'Đà Nẵng')
INSERT [dbo].[LoTrinh] ([LoTrinhId], [SanBayDi], [SanBayDen]) VALUES (N'LT002     ', N'TPHCM', N'Huế')
INSERT [dbo].[LoTrinh] ([LoTrinhId], [SanBayDi], [SanBayDen]) VALUES (N'LT003     ', N'TPHCM', N'Hà Nội')
INSERT [dbo].[LoTrinh] ([LoTrinhId], [SanBayDi], [SanBayDen]) VALUES (N'LT004     ', N'Hà Nội', N'TPHCM')
INSERT [dbo].[LoTrinh] ([LoTrinhId], [SanBayDi], [SanBayDen]) VALUES (N'LT005     ', N'Huế', N'Hà Nội')
INSERT [dbo].[LoTrinh] ([LoTrinhId], [SanBayDi], [SanBayDen]) VALUES (N'LT006     ', N'Hà Nội', N'Đà Nẵng')
INSERT [dbo].[PhieuDatVe] ([PhieuDatVeId], [NgayDat], [KhachHangID], [ChuyenBayId], [LoTrinhID]) VALUES (N'PDV001    ', CAST(N'2019-03-12' AS Date), N'KH003     ', N'CB002     ', N'LT001     ')
INSERT [dbo].[PhieuDatVe] ([PhieuDatVeId], [NgayDat], [KhachHangID], [ChuyenBayId], [LoTrinhID]) VALUES (N'PDV002    ', CAST(N'2019-02-12' AS Date), N'KH001     ', N'CB001     ', N'LT003     ')
INSERT [dbo].[PhieuDatVe] ([PhieuDatVeId], [NgayDat], [KhachHangID], [ChuyenBayId], [LoTrinhID]) VALUES (N'PDV003    ', CAST(N'2019-05-11' AS Date), N'KH002     ', N'CB003     ', N'LT002     ')
INSERT [dbo].[PhieuDatVe] ([PhieuDatVeId], [NgayDat], [KhachHangID], [ChuyenBayId], [LoTrinhID]) VALUES (N'PDV004    ', CAST(N'2019-12-10' AS Date), N'KH004     ', N'CB006     ', N'LT003     ')
INSERT [dbo].[PhieuDatVe] ([PhieuDatVeId], [NgayDat], [KhachHangID], [ChuyenBayId], [LoTrinhID]) VALUES (N'PDV005    ', CAST(N'2019-12-10' AS Date), N'KH001     ', N'CB001     ', N'LT001     ')
INSERT [dbo].[VeMayBay] ([VeMayBayId], [SoGhe], [KhoangGhe], [GiaVe], [PhieuDatVeId], [ChuyenBayId]) VALUES (N'MV001     ', N'5', N'Thuong Nhan', 50000, N'PDV002    ', N'CB001     ')
INSERT [dbo].[VeMayBay] ([VeMayBayId], [SoGhe], [KhoangGhe], [GiaVe], [PhieuDatVeId], [ChuyenBayId]) VALUES (N'MV002     ', N'6', N'Khach Thuong', 40000, N'PDV003    ', N'CB003     ')
INSERT [dbo].[VeMayBay] ([VeMayBayId], [SoGhe], [KhoangGhe], [GiaVe], [PhieuDatVeId], [ChuyenBayId]) VALUES (N'MV003     ', N'7', N'Khach Thuong', 40000, N'PDV001    ', N'CB002     ')
INSERT [dbo].[VeMayBay] ([VeMayBayId], [SoGhe], [KhoangGhe], [GiaVe], [PhieuDatVeId], [ChuyenBayId]) VALUES (N'MV004     ', N'21', N'Khach Thuong', 40000, N'PDV003    ', N'CB003     ')
INSERT [dbo].[VeMayBay] ([VeMayBayId], [SoGhe], [KhoangGhe], [GiaVe], [PhieuDatVeId], [ChuyenBayId]) VALUES (N'MV010     ', N'32', N'Thuong Nhan', 50000, N'PDV001    ', N'CB003     ')
ALTER TABLE [dbo].[PhieuDatVe]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatVe_ChuyenBay] FOREIGN KEY([ChuyenBayId])
REFERENCES [dbo].[ChuyenBay] ([ChuyenBayID])
GO
ALTER TABLE [dbo].[PhieuDatVe] CHECK CONSTRAINT [FK_PhieuDatVe_ChuyenBay]
GO
ALTER TABLE [dbo].[PhieuDatVe]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatVe_KhachHang1] FOREIGN KEY([KhachHangID])
REFERENCES [dbo].[KhachHang] ([KhachHangId])
GO
ALTER TABLE [dbo].[PhieuDatVe] CHECK CONSTRAINT [FK_PhieuDatVe_KhachHang1]
GO
ALTER TABLE [dbo].[PhieuDatVe]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatVe_LoTrinh] FOREIGN KEY([LoTrinhID])
REFERENCES [dbo].[LoTrinh] ([LoTrinhId])
GO
ALTER TABLE [dbo].[PhieuDatVe] CHECK CONSTRAINT [FK_PhieuDatVe_LoTrinh]
GO
ALTER TABLE [dbo].[VeMayBay]  WITH CHECK ADD  CONSTRAINT [FK_VeMayBay_ChuyenBay] FOREIGN KEY([ChuyenBayId])
REFERENCES [dbo].[ChuyenBay] ([ChuyenBayID])
GO
ALTER TABLE [dbo].[VeMayBay] CHECK CONSTRAINT [FK_VeMayBay_ChuyenBay]
GO
ALTER TABLE [dbo].[VeMayBay]  WITH CHECK ADD  CONSTRAINT [FK_VeMayBay_PhieuDatVe1] FOREIGN KEY([PhieuDatVeId])
REFERENCES [dbo].[PhieuDatVe] ([PhieuDatVeId])
GO
ALTER TABLE [dbo].[VeMayBay] CHECK CONSTRAINT [FK_VeMayBay_PhieuDatVe1]
GO
USE [master]
GO
ALTER DATABASE [banvemaybay] SET  READ_WRITE 
GO
