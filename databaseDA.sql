USE [QuanLiTiemChung]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 28-07-2020 5:56:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BacSis]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BacSis](
	[Id_BacSi] [int] IDENTITY(1,1) NOT NULL,
	[Ma_BacSi] [nvarchar](max) NULL,
	[TaiKhoanNVID_TaiKhoanNV] [int] NULL,
	[ID_TaiKhoanNV] [int] NOT NULL,
	[TenBacSi] [nvarchar](max) NULL,
	[SDT_BacSi] [nvarchar](max) NULL,
	[Dchi_BacSi] [nvarchar](max) NULL,
 CONSTRAINT [PK_BacSis] PRIMARY KEY CLUSTERED 
(
	[Id_BacSi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietGoiVaccines]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGoiVaccines](
	[Id_ChiTietGoiVC] [int] IDENTITY(1,1) NOT NULL,
	[goiVaccineId_GoiVC] [int] NULL,
	[Id_GoiVC] [int] NOT NULL,
	[vaccineId_Vaccine] [int] NULL,
	[Id_Vaccine] [int] NOT NULL,
	[SoLieu] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietGoiVaccines] PRIMARY KEY CLUSTERED 
(
	[Id_ChiTietGoiVC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietLichSuTiemPhongs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietLichSuTiemPhongs](
	[Id_CTLichSuTiemPhong] [int] IDENTITY(1,1) NOT NULL,
	[MaCTLichTiemPhong] [nvarchar](max) NULL,
	[LichSuTiemPhongId_LichSuTiemPhong] [int] NULL,
	[Id_LichSuTiemPhong] [int] NOT NULL,
	[NguoiTiemThuocId_BacSi] [int] NULL,
	[Id_BacSi] [int] NOT NULL,
	[IdVaccineId_Vaccine] [int] NULL,
	[Id_Vaccine] [int] NOT NULL,
	[NgayDaTP] [datetime2](7) NOT NULL,
	[PhanUngPhu] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChiTietLichSuTiemPhongs] PRIMARY KEY CLUSTERED 
(
	[Id_CTLichSuTiemPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietLichTiemPhongs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietLichTiemPhongs](
	[Id_CTLichTiemPhong] [int] IDENTITY(1,1) NOT NULL,
	[MaLichTiemPhong] [nvarchar](max) NULL,
	[LichTiemPhongId_LichTiemPhong] [int] NULL,
	[Id_LichTiemPhong] [int] NOT NULL,
	[VaccineId_Vaccine] [int] NULL,
	[Id_Vaccine] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietLichTiemPhongs] PRIMARY KEY CLUSTERED 
(
	[Id_CTLichTiemPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuDatMuaOnlines]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuDatMuaOnlines](
	[Id_ChiTietPhieuDM] [int] IDENTITY(1,1) NOT NULL,
	[PhieuDmOnlineID_PhieuDmOnline] [int] NULL,
	[ID_PhieuDmOnline] [int] NOT NULL,
	[SoLuongDM] [int] NOT NULL,
	[vaccineId_Vaccine] [int] NULL,
	[Id_Vaccine] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietPhieuDatMuaOnlines] PRIMARY KEY CLUSTERED 
(
	[Id_ChiTietPhieuDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuDatMuaTTs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuDatMuaTTs](
	[Id_ChiTietPhieuDMTT] [int] IDENTITY(1,1) NOT NULL,
	[phieuDatMuaTrucTiepID_PhieuDMTT] [int] NULL,
	[ID_PhieuDMTT] [int] NOT NULL,
	[SoLuongDMTT] [int] NOT NULL,
	[vaccineId_Vaccine] [int] NULL,
	[Id_Vaccine] [int] NOT NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_ChiTietPhieuDatMuaTTs] PRIMARY KEY CLUSTERED 
(
	[Id_ChiTietPhieuDMTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhapVaccines]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhapVaccines](
	[Id_ChiTietPhieuNhap] [int] IDENTITY(1,1) NOT NULL,
	[PhieuNhapVCId_PhieuNhap] [int] NULL,
	[Id_PhieuNhap] [int] NOT NULL,
	[SoLuongNhap] [int] NOT NULL,
	[VaccineId_Vaccine] [int] NULL,
	[Id_Vaccine] [int] NOT NULL,
	[ThanhTien] [money] NULL,
 CONSTRAINT [PK_ChiTietPhieuNhapVaccines] PRIMARY KEY CLUSTERED 
(
	[Id_ChiTietPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CtGioHangs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CtGioHangs](
	[Id_CtGioHang] [int] IDENTITY(1,1) NOT NULL,
	[IdctGh_GioHangId_GioHang] [int] NULL,
	[Id_GioHang] [int] NOT NULL,
	[IdctGh_IdGoiVCId_GoiVC] [int] NULL,
	[Id_GoiVC] [int] NOT NULL,
	[IdctGh_IdGVCId_Vaccine] [int] NULL,
	[Id_Vaccine] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_CtGioHangs] PRIMARY KEY CLUSTERED 
(
	[Id_CtGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CtgVaccines]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CtgVaccines](
	[TenVaccine] [nvarchar](max) NULL,
	[PhongBenh] [nvarchar](max) NULL,
	[NuocSX] [nvarchar](max) NULL,
	[SoLieu] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucGoiVCs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucGoiVCs](
	[IdDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[MaDMuc] [nvarchar](max) NULL,
	[TenDmuc] [nvarchar](max) NULL,
 CONSTRAINT [PK_DanhMucGoiVCs] PRIMARY KEY CLUSTERED 
(
	[IdDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoanhThuTheoThangs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanhThuTheoThangs](
	[THANG] [int] NOT NULL,
	[soluonghd] [int] NOT NULL,
	[DOANHTHU] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doanhthutheotuans]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doanhthutheotuans](
	[tuan] [int] NOT NULL,
	[soluonghd] [int] NOT NULL,
	[DOANHTHU] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dsgoivaccine_Dms]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dsgoivaccine_Dms](
	[Ma_GoiVC] [nvarchar](max) NULL,
	[TenGoi] [nvarchar](max) NULL,
	[TenDmuc] [nvarchar](max) NULL,
	[Id_GoiVC] [int] NOT NULL,
	[AnhGoiVc] [nvarchar](max) NULL,
	[Mota] [nvarchar](max) NULL,
	[TinhTrang] [nvarchar](max) NULL,
	[LoaiGoi] [nvarchar](max) NULL,
	[DoTuoiTiem] [nvarchar](max) NULL,
	[GiaGoiTiem] [real] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang_KhachHangs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang_KhachHangs](
	[Id_GoiVC] [int] NOT NULL,
	[AnhGoiVc] [nvarchar](max) NULL,
	[TenGoi] [nvarchar](max) NULL,
	[GiaGoiTiem] [real] NOT NULL,
	[Id_GioHang] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[TongTien] [real] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giohang_Vaccines]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giohang_Vaccines](
	[Id_Vaccine] [int] NOT NULL,
	[AnhVaccine] [nvarchar](max) NULL,
	[TenVaccine] [nvarchar](max) NULL,
	[GiaBan] [real] NOT NULL,
	[Id_GioHang] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[tongtien] [real] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHangs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHangs](
	[Id_GioHang] [int] IDENTITY(1,1) NOT NULL,
	[IdKh_GioHangID_TaiKhoanKH] [int] NULL,
	[ID_TaiKhoanKH] [int] NOT NULL,
	[NgayTao] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_GioHangs] PRIMARY KEY CLUSTERED 
(
	[Id_GioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoiVaccineCuaGHs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoiVaccineCuaGHs](
	[TenGoi] [nvarchar](max) NULL,
	[SoLuong] [int] NOT NULL,
	[GiaGoiTiem] [real] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoiVaccines]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoiVaccines](
	[Id_GoiVC] [int] IDENTITY(1,1) NOT NULL,
	[Ma_GoiVC] [nvarchar](max) NULL,
	[IdDanhMucGoivcIdDanhMuc] [int] NULL,
	[IdDanhMuc] [int] NOT NULL,
	[TenGoi] [nvarchar](max) NULL,
	[AnhGoiVc] [nvarchar](max) NULL,
	[Mota] [nvarchar](max) NULL,
	[TinhTrang] [nvarchar](max) NULL,
	[LoaiGoi] [nvarchar](max) NULL,
	[DoTuoiTiem] [nvarchar](max) NULL,
	[GiaGoiTiem] [real] NOT NULL,
 CONSTRAINT [PK_GoiVaccines] PRIMARY KEY CLUSTERED 
(
	[Id_GoiVC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Goivc_Dmucs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goivc_Dmucs](
	[AnhGoiVc] [nvarchar](max) NULL,
	[TenGoi] [nvarchar](max) NULL,
	[Mota] [nvarchar](max) NULL,
	[GiaGoiTiem] [real] NOT NULL,
	[Id_GoiVC] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoSoSucKhoeKHs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSoSucKhoeKHs](
	[Id_HoSoSKKH] [int] IDENTITY(1,1) NOT NULL,
	[MaHoSoSKKH] [nvarchar](max) NULL,
	[NguoiDuocKhamID_NguoiTP] [int] NULL,
	[ID_NguoiTP] [int] NOT NULL,
	[BacSiKhamId_BacSi] [int] NULL,
	[Id_BacSi] [int] NOT NULL,
	[TinhTrangSK] [nvarchar](max) NULL,
	[DuocTiem] [bit] NOT NULL,
 CONSTRAINT [PK_HoSoSucKhoeKHs] PRIMARY KEY CLUSTERED 
(
	[Id_HoSoSKKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuTiemPhongs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuTiemPhongs](
	[Id_LichSuTiemPhong] [int] IDENTITY(1,1) NOT NULL,
	[Ma_LichSuTP] [nvarchar](max) NULL,
	[IdQuanLiNguoiTPID_NguoiTP] [int] NULL,
	[ID_NguoiTP] [int] NOT NULL,
 CONSTRAINT [PK_LichSuTiemPhongs] PRIMARY KEY CLUSTERED 
(
	[Id_LichSuTiemPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichTiemPhongs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichTiemPhongs](
	[Id_LichTiemPhong] [int] IDENTITY(1,1) NOT NULL,
	[MaLichTiemPhong] [nvarchar](max) NULL,
	[BacSiId_BacSi] [int] NULL,
	[Id_BacSi] [int] NOT NULL,
	[TTNguoiTiemPhongID_NguoiTP] [int] NULL,
	[ID_NguoiTP] [int] NOT NULL,
	[PhieuDatMuaOnlineID_PhieuDmOnline] [int] NULL,
	[ID_PhieuDmOnline] [int] NOT NULL,
	[phieuDatMuaTrucTiepID_PhieuDMTT] [int] NULL,
	[ID_PhieuDMTT] [int] NOT NULL,
	[NgayDuKienTiem] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LichTiemPhongs] PRIMARY KEY CLUSTERED 
(
	[Id_LichTiemPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCCs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCCs](
	[Id_NCC] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [nvarchar](max) NULL,
	[SDT_NhaCC] [nvarchar](max) NULL,
	[DiaChiNCC] [nvarchar](max) NULL,
 CONSTRAINT [PK_NCCs] PRIMARY KEY CLUSTERED 
(
	[Id_NCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiTiemPhongs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiTiemPhongs](
	[ID_NguoiTP] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiTP] [nvarchar](max) NULL,
	[tkkhsID_TaiKhoanKH] [int] NULL,
	[ID_TaiKhoanKH] [int] NOT NULL,
	[SDT_NgTP] [nvarchar](max) NULL,
	[Dchi_ngTP] [nvarchar](max) NULL,
	[CMND_ngTP] [nvarchar](max) NULL,
	[TenNg_DKTP] [nvarchar](max) NULL,
	[Gioitinh_Ngtp] [nvarchar](max) NULL,
	[NgaySinh_ngTp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_NguoiTiemPhongs] PRIMARY KEY CLUSTERED 
(
	[ID_NguoiTP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanViens]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanViens](
	[IdNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [nvarchar](max) NULL,
	[HoTenNV] [nvarchar](max) NULL,
	[NgaySinhNV] [datetime2](7) NOT NULL,
	[DiaChiNV] [nvarchar](max) NULL,
	[GioiTinhNV] [nvarchar](max) NULL,
	[SDT_NV] [nvarchar](max) NULL,
	[ChucVu] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhanViens] PRIMARY KEY CLUSTERED 
(
	[IdNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatMuaOnlines]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatMuaOnlines](
	[ID_PhieuDmOnline] [int] IDENTITY(1,1) NOT NULL,
	[Ma_PhieuDmOnline] [nvarchar](max) NULL,
	[HoTenNguoiDM] [nvarchar](max) NULL,
	[Email_NguoiDM] [nvarchar](max) NULL,
	[SDT_NgDM] [nvarchar](max) NULL,
	[TKKHID_TaiKhoanKH] [int] NULL,
	[ID_TaiKhoanKH] [int] NOT NULL,
	[NgayDatMuaOL] [datetime2](7) NOT NULL,
	[HoTen_NgLH1] [nvarchar](max) NULL,
	[SDT_NgLH1] [nvarchar](max) NULL,
	[HoTen_NgLH2] [nvarchar](max) NULL,
	[SDT_NgLH2] [nvarchar](max) NULL,
	[NgaySinhNguoiTiem] [datetime2](7) NOT NULL,
	[HotenNguoiTiem] [nvarchar](max) NULL,
	[GioiTinh_NguoiTIem] [nvarchar](max) NULL,
	[DT_NguoiTiem] [nvarchar](max) NULL,
	[GioHang_DatHangId_GioHang] [int] NULL,
	[Id_GioHang] [int] NOT NULL,
	[TongTien] [real] NOT NULL,
 CONSTRAINT [PK_PhieuDatMuaOnlines] PRIMARY KEY CLUSTERED 
(
	[ID_PhieuDmOnline] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatMuaTrucTieps]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatMuaTrucTieps](
	[ID_PhieuDMTT] [int] IDENTITY(1,1) NOT NULL,
	[MAPhieu_DMTT] [nvarchar](max) NULL,
	[HoTenngDM] [nvarchar](max) NULL,
	[SDT_NguoiDM] [nvarchar](max) NULL,
	[Email_ngDM] [nvarchar](max) NULL,
	[NgayDatMuaTT] [datetime2](7) NOT NULL,
	[HoTen_NgTiem] [nvarchar](max) NULL,
	[GioiTinh_ngTiem] [nvarchar](max) NULL,
	[TongTienDM] [real] NOT NULL,
	[NhanViensIdNhanVien] [int] NULL,
	[IdNhanVien] [int] NOT NULL,
	[Id_NguoiTiem] [int] NULL,
 CONSTRAINT [PK_PhieuDatMuaTrucTieps] PRIMARY KEY CLUSTERED 
(
	[ID_PhieuDMTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhapVaccines]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapVaccines](
	[Id_PhieuNhap] [int] IDENTITY(1,1) NOT NULL,
	[Ma_PhieuNhap] [nvarchar](max) NULL,
	[nhanvienIdNhanVien] [int] NULL,
	[IdNhanVien] [int] NOT NULL,
	[NgayNhapVaccine] [datetime2](7) NOT NULL,
	[TongTienTT] [real] NOT NULL,
 CONSTRAINT [PK_PhieuNhapVaccines] PRIMARY KEY CLUSTERED 
(
	[Id_PhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLiTK_KHs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLiTK_KHs](
	[ID_TaiKhoanKH] [int] IDENTITY(1,1) NOT NULL,
	[Ma_TaiKhoanKH] [nvarchar](max) NULL,
	[HoTen] [nvarchar](max) NULL,
	[SDT] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[MatKhau] [nvarchar](max) NULL,
	[LoaiTK] [nvarchar](max) NULL,
 CONSTRAINT [PK_QuanLiTK_KHs] PRIMARY KEY CLUSTERED 
(
	[ID_TaiKhoanKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanNVs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanNVs](
	[ID_TaiKhoanNV] [int] IDENTITY(1,1) NOT NULL,
	[MaTK] [nvarchar](max) NULL,
	[MaNhanVien] [nvarchar](max) NULL,
	[TenDN_NV] [nvarchar](max) NULL,
	[MK_NV] [nvarchar](max) NULL,
	[Loai_TKNV] [nvarchar](max) NULL,
 CONSTRAINT [PK_TaiKhoanNVs] PRIMARY KEY CLUSTERED 
(
	[ID_TaiKhoanNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongkeDoanhthus]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongkeDoanhthus](
	[ngayDatMuaOL] [datetime2](7) NOT NULL,
	[soluonghd] [int] NOT NULL,
	[DOANHTHU] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thongkevacines]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thongkevacines](
	[Ma_Vaccine] [nvarchar](max) NULL,
	[TenVaccine] [nvarchar](max) NULL,
	[GiaBan] [real] NOT NULL,
	[sluongcon] [int] NOT NULL,
	[Slmua] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinNguoiTiemPhongs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinNguoiTiemPhongs](
	[ID_NguoiTP] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiTP] [nvarchar](max) NULL,
	[SDT_NgTP] [nvarchar](max) NULL,
	[Dchi_ngTP] [nvarchar](max) NULL,
	[TenNg_DKTP] [nvarchar](max) NULL,
	[CMND_NgDKTP] [nvarchar](max) NULL,
	[NgaySinh_NgDKTP] [datetime2](7) NOT NULL,
	[SDT_NgDKTP] [nvarchar](max) NULL,
	[Dchi_NguoiDKTP] [nvarchar](max) NULL,
	[Gioitinh] [nvarchar](max) NULL,
 CONSTRAINT [PK_ThongTinNguoiTiemPhongs] PRIMARY KEY CLUSTERED 
(
	[ID_NguoiTP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinTaiKhoans]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinTaiKhoans](
	[ID_TKKH] [int] IDENTITY(1,1) NOT NULL,
	[MaTTKH] [nvarchar](max) NULL,
	[tkkhsID_TaiKhoanKH] [int] NULL,
	[ID_TaiKhoanKH] [int] NOT NULL,
	[SDT_TK] [nvarchar](max) NULL,
	[Dchi_TK] [nvarchar](max) NULL,
	[HoTen_TK] [nvarchar](max) NULL,
	[Gioitinh_TK] [nvarchar](max) NULL,
	[NgaySinh_ngTk] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ThongTinTaiKhoans] PRIMARY KEY CLUSTERED 
(
	[ID_TKKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VaccineCuaGhs]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaccineCuaGhs](
	[TenVaccine] [nvarchar](max) NULL,
	[SoLuong] [int] NOT NULL,
	[GiaBan] [real] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vaccines]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vaccines](
	[Id_Vaccine] [int] IDENTITY(1,1) NOT NULL,
	[Ma_Vaccine] [nvarchar](max) NULL,
	[TenVaccine] [nvarchar](max) NULL,
	[NgaySX] [datetime2](7) NOT NULL,
	[HSD] [datetime2](7) NOT NULL,
	[GiaBan] [real] NOT NULL,
	[GiaNhap] [real] NOT NULL,
	[NuocSX] [nvarchar](max) NULL,
	[TinhTrang] [nvarchar](max) NULL,
	[AnhVaccine] [nvarchar](max) NULL,
	[NccsId_NCC] [int] NULL,
	[Id_NCC] [int] NOT NULL,
	[PhongBenh] [nvarchar](max) NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_Vaccines] PRIMARY KEY CLUSTERED 
(
	[Id_Vaccine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200727105945_AAA_DA_TC', N'5.0.0-preview.4.20220.10')
SET IDENTITY_INSERT [dbo].[ChiTietGoiVaccines] ON 

INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (1, NULL, 2, NULL, 2, 2)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (2, NULL, 2, NULL, 3, 3)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (3, NULL, 2, NULL, 7, 4)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (4, NULL, 2, NULL, 23, 2)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (5, NULL, 2, NULL, 18, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (6, NULL, 2, NULL, 19, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (7, NULL, 2, NULL, 15, 2)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (8, NULL, 2, NULL, 21, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (9, NULL, 2, NULL, 27, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (10, NULL, 2, NULL, 16, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (11, NULL, 2, NULL, 31, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (12, NULL, 1, NULL, 4, 3)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (13, NULL, 1, NULL, 3, 3)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (14, NULL, 1, NULL, 7, 4)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (15, NULL, 1, NULL, 23, 2)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (16, NULL, 1, NULL, 17, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (17, NULL, 1, NULL, 19, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (18, NULL, 1, NULL, 15, 2)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (19, NULL, 1, NULL, 21, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (20, NULL, 3, NULL, 5, 2)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (21, NULL, 3, NULL, 2, 3)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (22, NULL, 3, NULL, 7, 4)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (23, NULL, 3, NULL, 23, 2)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (24, NULL, 3, NULL, 18, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (25, NULL, 3, NULL, 19, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (26, NULL, 3, NULL, 15, 2)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (27, NULL, 3, NULL, 21, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (28, NULL, 3, NULL, 27, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (29, NULL, 4, NULL, 4, 3)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (30, NULL, 4, NULL, 2, 3)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (31, NULL, 4, NULL, 7, 4)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (32, NULL, 4, NULL, 23, 2)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (33, NULL, 4, NULL, 18, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (34, NULL, 4, NULL, 19, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (35, NULL, 4, NULL, 15, 2)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (36, NULL, 4, NULL, 21, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (37, NULL, 4, NULL, 27, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (38, NULL, 5, NULL, 5, 2)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (39, NULL, 5, NULL, 1, 3)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (40, NULL, 5, NULL, 7, 4)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (41, NULL, 5, NULL, 23, 2)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (42, NULL, 5, NULL, 18, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (43, NULL, 5, NULL, 19, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (44, NULL, 5, NULL, 15, 2)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (45, NULL, 5, NULL, 21, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (46, NULL, 5, NULL, 14, 3)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (47, NULL, 5, NULL, 27, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (48, NULL, 6, NULL, 4, 3)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (49, NULL, 6, NULL, 1, 3)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (50, NULL, 6, NULL, 7, 4)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (51, NULL, 6, NULL, 23, 2)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (52, NULL, 6, NULL, 18, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (53, NULL, 6, NULL, 19, 1)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (54, NULL, 6, NULL, 15, 2)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (55, NULL, 6, NULL, 10, 3)
INSERT [dbo].[ChiTietGoiVaccines] ([Id_ChiTietGoiVC], [goiVaccineId_GoiVC], [Id_GoiVC], [vaccineId_Vaccine], [Id_Vaccine], [SoLieu]) VALUES (56, NULL, 6, NULL, 27, 1)
SET IDENTITY_INSERT [dbo].[ChiTietGoiVaccines] OFF
SET IDENTITY_INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ON 

INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (34, NULL, 38, 3, NULL, 4)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (35, NULL, 38, 3, NULL, 3)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (36, NULL, 38, 3, NULL, 7)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (37, NULL, 38, 3, NULL, 23)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (38, NULL, 38, 3, NULL, 17)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (39, NULL, 38, 3, NULL, 19)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (40, NULL, 38, 3, NULL, 15)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (41, NULL, 38, 3, NULL, 21)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (42, NULL, 39, 1, NULL, 1)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (43, NULL, 40, 1, NULL, 1)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (44, NULL, 41, 3, NULL, 4)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (45, NULL, 41, 3, NULL, 3)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (46, NULL, 41, 3, NULL, 7)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (47, NULL, 41, 3, NULL, 23)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (48, NULL, 41, 3, NULL, 17)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (49, NULL, 41, 3, NULL, 19)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (50, NULL, 41, 3, NULL, 15)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (51, NULL, 41, 3, NULL, 21)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (52, NULL, 42, 3, NULL, 4)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (53, NULL, 42, 3, NULL, 3)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (54, NULL, 42, 3, NULL, 7)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (55, NULL, 42, 3, NULL, 23)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (56, NULL, 42, 3, NULL, 17)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (57, NULL, 42, 3, NULL, 19)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (58, NULL, 42, 3, NULL, 15)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (59, NULL, 42, 3, NULL, 21)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (60, NULL, 42, 3, NULL, 4)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (61, NULL, 42, 3, NULL, 3)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (62, NULL, 42, 3, NULL, 7)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (63, NULL, 42, 3, NULL, 23)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (64, NULL, 42, 3, NULL, 17)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (65, NULL, 42, 3, NULL, 19)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (66, NULL, 42, 3, NULL, 15)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (67, NULL, 42, 3, NULL, 21)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (68, NULL, 42, 1, NULL, 3)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (69, NULL, 44, 2, NULL, 2)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (70, NULL, 44, 2, NULL, 3)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (71, NULL, 44, 2, NULL, 7)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (72, NULL, 44, 2, NULL, 23)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (73, NULL, 44, 2, NULL, 18)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (74, NULL, 44, 2, NULL, 19)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (75, NULL, 44, 2, NULL, 15)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (76, NULL, 44, 2, NULL, 21)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (77, NULL, 44, 2, NULL, 27)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (78, NULL, 44, 2, NULL, 16)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (79, NULL, 44, 2, NULL, 31)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (80, NULL, 44, 2, NULL, 2)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (81, NULL, 44, 2, NULL, 3)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (82, NULL, 44, 2, NULL, 7)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (83, NULL, 44, 2, NULL, 23)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (84, NULL, 44, 2, NULL, 18)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (85, NULL, 44, 2, NULL, 19)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (86, NULL, 44, 2, NULL, 15)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (87, NULL, 44, 2, NULL, 21)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (88, NULL, 44, 2, NULL, 27)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (89, NULL, 44, 2, NULL, 16)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (90, NULL, 44, 2, NULL, 31)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (91, NULL, 44, 2, NULL, 2)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (92, NULL, 44, 2, NULL, 3)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (93, NULL, 44, 2, NULL, 7)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (94, NULL, 44, 2, NULL, 23)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (95, NULL, 44, 2, NULL, 18)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (96, NULL, 44, 2, NULL, 19)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (97, NULL, 44, 2, NULL, 15)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (98, NULL, 44, 2, NULL, 21)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (99, NULL, 44, 2, NULL, 27)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (100, NULL, 44, 2, NULL, 16)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (101, NULL, 44, 2, NULL, 31)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (102, NULL, 44, 2, NULL, 2)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (103, NULL, 44, 2, NULL, 3)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (104, NULL, 44, 2, NULL, 7)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (105, NULL, 44, 2, NULL, 23)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (106, NULL, 44, 2, NULL, 18)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (107, NULL, 44, 2, NULL, 19)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (108, NULL, 44, 2, NULL, 15)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (109, NULL, 44, 2, NULL, 21)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (110, NULL, 44, 2, NULL, 27)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (111, NULL, 44, 2, NULL, 16)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (112, NULL, 44, 2, NULL, 31)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (113, NULL, 44, 2, NULL, 2)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (114, NULL, 44, 2, NULL, 3)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (115, NULL, 44, 2, NULL, 7)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (116, NULL, 44, 2, NULL, 23)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (117, NULL, 44, 2, NULL, 18)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (118, NULL, 44, 2, NULL, 19)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (119, NULL, 44, 2, NULL, 15)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (120, NULL, 44, 2, NULL, 21)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (121, NULL, 44, 2, NULL, 27)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (122, NULL, 44, 2, NULL, 16)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (123, NULL, 44, 2, NULL, 31)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (124, NULL, 44, 1, NULL, 26)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (125, NULL, 44, 2, NULL, 2)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (126, NULL, 44, 2, NULL, 3)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (127, NULL, 44, 2, NULL, 7)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (128, NULL, 44, 2, NULL, 23)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (129, NULL, 44, 2, NULL, 18)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (130, NULL, 44, 2, NULL, 19)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (131, NULL, 44, 2, NULL, 15)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (132, NULL, 44, 2, NULL, 21)
GO
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (133, NULL, 44, 2, NULL, 27)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (134, NULL, 44, 2, NULL, 16)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (135, NULL, 44, 2, NULL, 31)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (136, NULL, 44, 1, NULL, 26)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (137, NULL, 44, 2, NULL, 2)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (138, NULL, 44, 2, NULL, 3)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (139, NULL, 44, 2, NULL, 7)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (140, NULL, 44, 2, NULL, 23)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (141, NULL, 44, 2, NULL, 18)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (142, NULL, 44, 2, NULL, 19)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (143, NULL, 44, 2, NULL, 15)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (144, NULL, 44, 2, NULL, 21)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (145, NULL, 44, 2, NULL, 27)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (146, NULL, 44, 2, NULL, 16)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (147, NULL, 44, 2, NULL, 31)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (148, NULL, 44, 1, NULL, 26)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (149, NULL, 51, 2, NULL, 2)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (150, NULL, 51, 2, NULL, 3)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (151, NULL, 51, 2, NULL, 7)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (152, NULL, 51, 2, NULL, 23)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (153, NULL, 51, 2, NULL, 18)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (154, NULL, 51, 2, NULL, 19)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (155, NULL, 51, 2, NULL, 15)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (156, NULL, 51, 2, NULL, 21)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (157, NULL, 51, 2, NULL, 27)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (158, NULL, 51, 2, NULL, 16)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (159, NULL, 51, 2, NULL, 31)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (160, NULL, 51, 1, NULL, 2)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (161, NULL, 52, 1, NULL, 1)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (162, NULL, 53, 3, NULL, 4)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (163, NULL, 53, 3, NULL, 3)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (164, NULL, 53, 3, NULL, 7)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (165, NULL, 53, 3, NULL, 23)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (166, NULL, 53, 3, NULL, 17)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (167, NULL, 53, 3, NULL, 19)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (168, NULL, 53, 3, NULL, 15)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (169, NULL, 53, 3, NULL, 21)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (170, NULL, 53, 3, NULL, 4)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (171, NULL, 53, 3, NULL, 3)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (172, NULL, 53, 3, NULL, 7)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (173, NULL, 53, 3, NULL, 23)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (174, NULL, 53, 3, NULL, 17)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (175, NULL, 53, 3, NULL, 19)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (176, NULL, 53, 3, NULL, 15)
INSERT [dbo].[ChiTietPhieuDatMuaOnlines] ([Id_ChiTietPhieuDM], [PhieuDmOnlineID_PhieuDmOnline], [ID_PhieuDmOnline], [SoLuongDM], [vaccineId_Vaccine], [Id_Vaccine]) VALUES (177, NULL, 53, 3, NULL, 21)
SET IDENTITY_INSERT [dbo].[ChiTietPhieuDatMuaOnlines] OFF
SET IDENTITY_INSERT [dbo].[ChiTietPhieuDatMuaTTs] ON 

INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (40, NULL, 40, 1, NULL, 1, 785000)
INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (41, NULL, 43, 1, NULL, 2, 1015000)
INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (42, NULL, 44, 1, NULL, 1, 785000)
INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (43, NULL, 45, 1, NULL, 1, 785000)
INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (44, NULL, 46, 1, NULL, 5, 990000)
INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (45, NULL, 47, 1, NULL, 2, 1015000)
INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (46, NULL, 47, 1, NULL, 4, 798000)
INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (47, NULL, 47, 1, NULL, 5, 990000)
INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (48, NULL, 48, 1, NULL, 2, 1015000)
INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (49, NULL, 48, 1, NULL, 4, 798000)
INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (50, NULL, 49, 1, NULL, 2, 1015000)
INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (51, NULL, 49, 1, NULL, 3, 1015000)
INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (52, NULL, 50, 1, NULL, 1, 785000)
INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (53, NULL, 50, 1, NULL, 2, 1015000)
INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (54, NULL, 51, 1, NULL, 1, 785000)
INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (55, NULL, 51, 1, NULL, 2, 1015000)
INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (56, NULL, 53, 1, NULL, 1, 785000)
INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (57, NULL, 53, 1, NULL, 2, 1015000)
INSERT [dbo].[ChiTietPhieuDatMuaTTs] ([Id_ChiTietPhieuDMTT], [phieuDatMuaTrucTiepID_PhieuDMTT], [ID_PhieuDMTT], [SoLuongDMTT], [vaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (58, NULL, 64, 1, NULL, 2, 1015000)
SET IDENTITY_INSERT [dbo].[ChiTietPhieuDatMuaTTs] OFF
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhapVaccines] ON 

INSERT [dbo].[ChiTietPhieuNhapVaccines] ([Id_ChiTietPhieuNhap], [PhieuNhapVCId_PhieuNhap], [Id_PhieuNhap], [SoLuongNhap], [VaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (58, 47, 47, 2, 2, 2, 1400000.0000)
INSERT [dbo].[ChiTietPhieuNhapVaccines] ([Id_ChiTietPhieuNhap], [PhieuNhapVCId_PhieuNhap], [Id_PhieuNhap], [SoLuongNhap], [VaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (59, 48, 48, 20, 1, 1, 10000000.0000)
INSERT [dbo].[ChiTietPhieuNhapVaccines] ([Id_ChiTietPhieuNhap], [PhieuNhapVCId_PhieuNhap], [Id_PhieuNhap], [SoLuongNhap], [VaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (60, 49, 49, 1, 1, 1, 500000.0000)
INSERT [dbo].[ChiTietPhieuNhapVaccines] ([Id_ChiTietPhieuNhap], [PhieuNhapVCId_PhieuNhap], [Id_PhieuNhap], [SoLuongNhap], [VaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (61, 50, 50, 10, 3, 3, 6000000.0000)
INSERT [dbo].[ChiTietPhieuNhapVaccines] ([Id_ChiTietPhieuNhap], [PhieuNhapVCId_PhieuNhap], [Id_PhieuNhap], [SoLuongNhap], [VaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (62, 51, 51, 10, 29, 29, 5000000.0000)
INSERT [dbo].[ChiTietPhieuNhapVaccines] ([Id_ChiTietPhieuNhap], [PhieuNhapVCId_PhieuNhap], [Id_PhieuNhap], [SoLuongNhap], [VaccineId_Vaccine], [Id_Vaccine], [ThanhTien]) VALUES (64, 52, 52, 10, 29, 29, 5000000.0000)
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhapVaccines] OFF
SET IDENTITY_INSERT [dbo].[CtGioHangs] ON 

INSERT [dbo].[CtGioHangs] ([Id_CtGioHang], [IdctGh_GioHangId_GioHang], [Id_GioHang], [IdctGh_IdGoiVCId_GoiVC], [Id_GoiVC], [IdctGh_IdGVCId_Vaccine], [Id_Vaccine], [SoLuong]) VALUES (43, NULL, 50, NULL, 1, NULL, 0, 1)
INSERT [dbo].[CtGioHangs] ([Id_CtGioHang], [IdctGh_GioHangId_GioHang], [Id_GioHang], [IdctGh_IdGoiVCId_GoiVC], [Id_GoiVC], [IdctGh_IdGVCId_Vaccine], [Id_Vaccine], [SoLuong]) VALUES (44, NULL, 50, NULL, 0, NULL, 1, 1)
INSERT [dbo].[CtGioHangs] ([Id_CtGioHang], [IdctGh_GioHangId_GioHang], [Id_GioHang], [IdctGh_IdGoiVCId_GoiVC], [Id_GoiVC], [IdctGh_IdGVCId_Vaccine], [Id_Vaccine], [SoLuong]) VALUES (45, NULL, 51, NULL, 0, NULL, 1, 1)
INSERT [dbo].[CtGioHangs] ([Id_CtGioHang], [IdctGh_GioHangId_GioHang], [Id_GioHang], [IdctGh_IdGoiVCId_GoiVC], [Id_GoiVC], [IdctGh_IdGVCId_Vaccine], [Id_Vaccine], [SoLuong]) VALUES (46, NULL, 52, NULL, 0, NULL, 1, 1)
INSERT [dbo].[CtGioHangs] ([Id_CtGioHang], [IdctGh_GioHangId_GioHang], [Id_GioHang], [IdctGh_IdGoiVCId_GoiVC], [Id_GoiVC], [IdctGh_IdGVCId_Vaccine], [Id_Vaccine], [SoLuong]) VALUES (47, NULL, 53, NULL, 0, NULL, 8, 1)
INSERT [dbo].[CtGioHangs] ([Id_CtGioHang], [IdctGh_GioHangId_GioHang], [Id_GioHang], [IdctGh_IdGoiVCId_GoiVC], [Id_GoiVC], [IdctGh_IdGVCId_Vaccine], [Id_Vaccine], [SoLuong]) VALUES (48, NULL, 54, NULL, 1, NULL, 0, 1)
INSERT [dbo].[CtGioHangs] ([Id_CtGioHang], [IdctGh_GioHangId_GioHang], [Id_GioHang], [IdctGh_IdGoiVCId_GoiVC], [Id_GoiVC], [IdctGh_IdGVCId_Vaccine], [Id_Vaccine], [SoLuong]) VALUES (49, NULL, 55, NULL, 1, NULL, 0, 1)
INSERT [dbo].[CtGioHangs] ([Id_CtGioHang], [IdctGh_GioHangId_GioHang], [Id_GioHang], [IdctGh_IdGoiVCId_GoiVC], [Id_GoiVC], [IdctGh_IdGVCId_Vaccine], [Id_Vaccine], [SoLuong]) VALUES (50, NULL, 55, NULL, 0, NULL, 3, 1)
INSERT [dbo].[CtGioHangs] ([Id_CtGioHang], [IdctGh_GioHangId_GioHang], [Id_GioHang], [IdctGh_IdGoiVCId_GoiVC], [Id_GoiVC], [IdctGh_IdGVCId_Vaccine], [Id_Vaccine], [SoLuong]) VALUES (51, NULL, 55, NULL, 6, NULL, 0, 1)
INSERT [dbo].[CtGioHangs] ([Id_CtGioHang], [IdctGh_GioHangId_GioHang], [Id_GioHang], [IdctGh_IdGoiVCId_GoiVC], [Id_GoiVC], [IdctGh_IdGVCId_Vaccine], [Id_Vaccine], [SoLuong]) VALUES (54, NULL, 56, NULL, 12, NULL, 0, 1)
INSERT [dbo].[CtGioHangs] ([Id_CtGioHang], [IdctGh_GioHangId_GioHang], [Id_GioHang], [IdctGh_IdGoiVCId_GoiVC], [Id_GoiVC], [IdctGh_IdGVCId_Vaccine], [Id_Vaccine], [SoLuong]) VALUES (55, NULL, 56, NULL, 0, NULL, 1, 1)
INSERT [dbo].[CtGioHangs] ([Id_CtGioHang], [IdctGh_GioHangId_GioHang], [Id_GioHang], [IdctGh_IdGoiVCId_GoiVC], [Id_GoiVC], [IdctGh_IdGVCId_Vaccine], [Id_Vaccine], [SoLuong]) VALUES (58, NULL, 57, NULL, 2, NULL, 0, 1)
INSERT [dbo].[CtGioHangs] ([Id_CtGioHang], [IdctGh_GioHangId_GioHang], [Id_GioHang], [IdctGh_IdGoiVCId_GoiVC], [Id_GoiVC], [IdctGh_IdGVCId_Vaccine], [Id_Vaccine], [SoLuong]) VALUES (59, NULL, 57, NULL, 0, NULL, 2, 1)
INSERT [dbo].[CtGioHangs] ([Id_CtGioHang], [IdctGh_GioHangId_GioHang], [Id_GioHang], [IdctGh_IdGoiVCId_GoiVC], [Id_GoiVC], [IdctGh_IdGVCId_Vaccine], [Id_Vaccine], [SoLuong]) VALUES (60, NULL, 58, NULL, 0, NULL, 1, 1)
INSERT [dbo].[CtGioHangs] ([Id_CtGioHang], [IdctGh_GioHangId_GioHang], [Id_GioHang], [IdctGh_IdGoiVCId_GoiVC], [Id_GoiVC], [IdctGh_IdGVCId_Vaccine], [Id_Vaccine], [SoLuong]) VALUES (61, NULL, 59, NULL, 1, NULL, 0, 1)
SET IDENTITY_INSERT [dbo].[CtGioHangs] OFF
SET IDENTITY_INSERT [dbo].[DanhMucGoiVCs] ON 

INSERT [dbo].[DanhMucGoiVCs] ([IdDanhMuc], [MaDMuc], [TenDmuc]) VALUES (1, N'GVCTE', N'GÓI VẮC XIN CHO TRẺ EM')
INSERT [dbo].[DanhMucGoiVCs] ([IdDanhMuc], [MaDMuc], [TenDmuc]) VALUES (2, N'GVCTTHD', N'GÓI VẮC XIN CHO TRẺ TIỀN HỌC ĐƯỜNG')
INSERT [dbo].[DanhMucGoiVCs] ([IdDanhMuc], [MaDMuc], [TenDmuc]) VALUES (3, N'GVCTVTNTN', N'GÓI VẮC XIN CHO TUỔI VỊ THÀNH NIÊN VÀ THANH NIÊN')
INSERT [dbo].[DanhMucGoiVCs] ([IdDanhMuc], [MaDMuc], [TenDmuc]) VALUES (4, N'GVCNTT', N'GÓI VẮC XIN CHO NGƯỜI TRƯỞNG THÀNH')
INSERT [dbo].[DanhMucGoiVCs] ([IdDanhMuc], [MaDMuc], [TenDmuc]) VALUES (5, N'GVCPNTMT', N'GÓI VẮC XIN CHO PHỤ NỮ CHUẨN BỊ TRƯỚC MANG THAI')
INSERT [dbo].[DanhMucGoiVCs] ([IdDanhMuc], [MaDMuc], [TenDmuc]) VALUES (6, N'DVCTYC', N'ĐẶT VẮC XIN THEO YÊU CẦU')
SET IDENTITY_INSERT [dbo].[DanhMucGoiVCs] OFF
SET IDENTITY_INSERT [dbo].[GioHangs] ON 

INSERT [dbo].[GioHangs] ([Id_GioHang], [IdKh_GioHangID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayTao]) VALUES (21, NULL, 17440, CAST(N'2020-06-29T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[GioHangs] ([Id_GioHang], [IdKh_GioHangID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayTao]) VALUES (50, NULL, 3, CAST(N'2020-07-17T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[GioHangs] ([Id_GioHang], [IdKh_GioHangID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayTao]) VALUES (51, NULL, 1, CAST(N'2020-07-17T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[GioHangs] ([Id_GioHang], [IdKh_GioHangID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayTao]) VALUES (52, NULL, 47559, CAST(N'2020-07-17T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[GioHangs] ([Id_GioHang], [IdKh_GioHangID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayTao]) VALUES (53, NULL, 1, CAST(N'2020-07-18T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[GioHangs] ([Id_GioHang], [IdKh_GioHangID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayTao]) VALUES (54, NULL, 1, CAST(N'2020-07-19T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[GioHangs] ([Id_GioHang], [IdKh_GioHangID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayTao]) VALUES (55, NULL, 3, CAST(N'2020-07-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[GioHangs] ([Id_GioHang], [IdKh_GioHangID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayTao]) VALUES (56, NULL, 3, CAST(N'2020-07-21T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[GioHangs] ([Id_GioHang], [IdKh_GioHangID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayTao]) VALUES (57, NULL, 46022, CAST(N'2020-07-21T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[GioHangs] ([Id_GioHang], [IdKh_GioHangID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayTao]) VALUES (58, NULL, 3, CAST(N'2020-07-27T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[GioHangs] ([Id_GioHang], [IdKh_GioHangID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayTao]) VALUES (59, NULL, 3, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[GioHangs] OFF
SET IDENTITY_INSERT [dbo].[GoiVaccines] ON 

INSERT [dbo].[GoiVaccines] ([Id_GoiVC], [Ma_GoiVC], [IdDanhMucGoivcIdDanhMuc], [IdDanhMuc], [TenGoi], [AnhGoiVc], [Mota], [TinhTrang], [LoaiGoi], [DoTuoiTiem], [GiaGoiTiem]) VALUES (1, N'GVXHXTTT', NULL, 1, N'GÓI VẮC XIN Hexaxim-Rotateq (0-12 tháng)', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', N'Là Gói tiêm chủng cho trẻ sơ sinh bao gồm tổng hợp các mũi tiêm chủng dành cho trẻ từ 2 tháng tuổi, Gói vắc xin Hexaxim-Rotateq chính là “gói bảo hiểm sức khỏe toàn diện” giúp bé được bảo vệ hiệu quả, với những vắc xin hot nhất thị trường, Mỗi loại vắc xin bao gồm nhiều mũi, nhằm đảm bảo phác đồ đầy đủ nhất cho trẻ:

Vắc xin Rotateq (MSD/Mỹ) phòng bệnh tiêu chảy do rota virus.

Vắc xin Hexaxim (Sanofi/Pháp) phòng 6 bệnh: Ho gà, Bạch hầu, Uốn ván, Bại liệt, Viêm màng não mủ, Viêm họng, Viêm phổi do HIB, Viêm gan B (6 in 1).	

Vắc xin Synflorix (GSK/Bỉ) phòng hội chứng nhiễm trùng, viêm màng não, viêm phổi, nhiễm khuẩn huyết, viêm tai giữa do phế cầu khuẩn gây ra.		

Vắc xin Vaxigrip 0,25m (Sanofi/Pháp) phòng bệnh Cúm mùa.

Vắc xin Mvvac (Polyvac/Việt Nam) phòng bệnh Sởi.

Vắc xin MMR-II (MSD/Mỹ) phòng bệnh Sởi - Quai bị - Rubella.	

Vắc xin VA-Mengoc-BC (Finlay/Cuba) phòng bệnh Viêm màng não do mô cầu tuýp B và C.

Vắc xin Varivax (MSD/Mỹ) phòng bệnh Thủy đậu.

Vắc xin Imojev (Sanofi/Thái Lan) phòng bệnh Viêm não Nhật Bản.

Vắc xin Typhim Vi (Sanofi/Pháp) phòng bệnh Thương hàn.

Lợi ích khi mua Gói vắc xin Hexaxim-Rotateq:

Không sợ hết vắc xin, kể cả các vắc xin thường xuyên khan hiếm trên thị trường như vắc xin Hexaxim, vắc xin Rotateq, vắc xin Synflorix… 

Vắc xin sau khi được mua gói hoặc mua đặt trước sẽ được lưu trữ và bảo quản lên tới 2 năm, luôn sẵn sàng cho bé tiêm đúng lịch, không để bé bị nhỡ lịch bất kỳ một mũi tiêm nào.

Không sợ vắc xin đội giá ở thời điểm khan hiếm và phụ huynh không phải trả thêm bất cứ chi phí nào khác.

An tâm tối đa, vì VNVC có dây chuyền bảo quản lạnh đạt tiêu chuẩn GSP với kho lạnh lưu trữ, hệ thống tủ bảo quản và thiết bị vận chuyển vắc xin được kiểm định đạt tiêu chuẩn cao nhất, đảm bảo vắc xin luôn được bảo quản một cách tốt nhất trong một quy trình khép kín trước khi được tiêm cho khách hàng.

Nhiều ưu đãi: Bên cạnh dịch vụ 5 sao cùng các tiện ích khác, VNVC luôn dành cho khách hàng quà tặng hấp dẫn khi mua gói vắc xin:

Được đặt giữ đầy đủ các loại vắc xin trong gói, đảm bảo khách hàng được tiêm đủ vắc xin theo đúng lịch.

Được hệ thống nhắc lịch tiêm tự động miễn phí.

Dễ dàng tra cứu lịch sử tiêm chủng online với mã code định danh.

Được tư vấn, khám sàng lọc trước tiêm hoàn toàn miễn phí.

Đặc biệt, giá vắc xin và các ưu đãi khác đều được giữ nguyên trong suốt thời gian sử dụng.

Được mua gói vắc xin trả góp không lãi suất trong 6 tháng.', N'Còn hàng', N'Gói cơ bản', N'0-12 tháng', 1420000)
INSERT [dbo].[GoiVaccines] ([Id_GoiVC], [Ma_GoiVC], [IdDanhMucGoivcIdDanhMuc], [IdDanhMuc], [TenGoi], [AnhGoiVc], [Mota], [TinhTrang], [LoaiGoi], [DoTuoiTiem], [GiaGoiTiem]) VALUES (2, N'GVXHXRTX', NULL, 1, N'GÓI VẮC XIN Hexaxim-Rotarix (0-12 tháng)', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', N'Hexaxim - Rotarix là loại vắc xin kết hợp, phòng được nhiều bệnh nhất trong cùng 1 mũi tiêm, giúp bé giảm số mũi tiêm, đồng nghĩa với việc hạn chế đau đớn cho bé khi phải tiêm quá nhiều mũi… nên vắc xin 6 trong 1 Hexaxim (Sanofi/Pháp) thường xuyên rơi vào tình trạng khan hiếm vì được nhiều khách hàng “săn tìm” cho con. Bên cạnh đó, vắc xin Rotarix (GSK/Bỉ) cũng là “cực phẩm” để phòng bệnh tiêu chảy cấp cho trẻ.Thông tin Gói vắc xin Hexaxim - RotarixLà loại vắc xin kết hợp, phòng được nhiều bệnh nhất trong cùng 1 mũi tiêm, giúp bé giảm số mũi tiêm, đồng nghĩa với việc hạn chế đau đớn cho bé khi phải tiêm quá nhiều mũi… nên vắc xin 6 trong 1 Hexaxim (Sanofi/Pháp) thường xuyên rơi vào tình trạng khan hiếm vì được nhiều khách hàng “săn tìm” cho con. Bên cạnh đó, vắc xin Rotarix (GSK/Bỉ) cũng là “cực phẩm” để phòng bệnh tiêu chảy cấp cho trẻ.Hiểu được mong muốn của các cha mẹ hiện đại vô cùng bận rộn, luôn muốn chăm sóc sức khỏe của “cục cưng” một cách tốt nhất, VNVC thiết kế Gói vắc xin Hexaxim-Rotarix dành cho trẻ với rất nhiều ưu việt: Kết cấu từ 10-12 loại vắc xin cho trẻ, phòng rất nhiều bệnh nguy hiểm như: Vắc xin Rotarix (GSK/Bỉ) phòng bệnh tiêu chảy do rota virus.Vắc xin Hexaxim (Sanofi/Pháp) phòng 6 bệnh: Ho gà, Bạch hầu, Uốn ván, Bại liệt, Viêm màng não mủ, Viêm họng, Viêm phổi do Hib, Viêm gan B (6 in 1) Vắc xin Synflorix (GSK/Bỉ) phòng hội chứng nhiễm trùng, viêm màng não, viêm phổi, nhiễm khuẩn huyết, viêm tai giữa do phế cầu khuẩn gây ra.Vắc xin Vaxigrip 0,25m (Sanofi/Pháp) phòng bệnh Cúm mùa Vắc xin Mvvac (Polyvac/Việt Nam) phòng bệnh Sởi vắc xin MMR-II (MSD/Mỹ) phòng bệnh Sởi - Quai bị - Rubella Vắc xin VA-Mengoc-BC (Finlay/Cuba) phòng bệnh Viêm màng não do mô cầu tuýp B và C Vắc xin Varivax (MSD/Mỹ) phòng bệnh Thủy đậuVắc xin Imojev (Sanofi/Thái Lan) phòng bệnh Viêm não Nhật Bản Vắc xin Typhim Vi (Sanofi/Pháp) phòng bệnh Thương hàn Mỗi loại vắc xin bao gồm nhiều mũi, nhằm đảm bảo phác đồ đầy đủ nhất cho trẻ.Không sợ hết vắc xin, kể cả các vắc xin thường xuyên khan hiếm trên thị trường như vắc xin Hexaxim, vắc xin Rotarix, vắc xin Synflorix… Vắc xin sau khi được mua gói hoặc mua đặt trước sẽ được lưu trữ và bảo quản lên tới 2 năm, luôn sẵn sàng cho bé tiêm đúng lịch, không để bé bị nhỡ lịch bất kỳ một mũi tiêm nào.Không sợ vắc xin đội giá ở thời điểm khan hiếm và phụ huynh không phải trả thêm bất cứ chi phí nào khác An tâm tối đa, vì VNVC có dây chuyền bảo quản lạnh đạt tiêu chuẩn GSP với kho lạnh lưu trữ, hệ thống tủ bảo quản và thiết bị vận chuyển vắc xin được kiểm định đạt tiêu chuẩn cao nhất, đảm bảo vắc xin luôn được bảo quản một cách tốt nhất trong một quy trình khép kín trước khi được tiêm cho khách hàng.Nhiều ưu đãi: Bên cạnh dịch vụ 5 sao cùng các tiện ích khác, VNVC luôn dành cho khách hàng quà tặng hấp dẫn khi mua gói vắc xin: Được đặt giữ đầy đủ các loại vắc xin trong gói, đảm bảo khách hàng được tiêm đủ vắc xin theo đúng lịch.Được hệ thống nhắc lịch tiêm tự động miễn phí.Dễ dàng tra cứu lịch sử tiêm chủng online với mã code định danh.Được tư vấn, khám sàng lọc trước tiêm hoàn toàn miễn phí.Đặc biệt, giá vắc xin và các ưu đãi khác đều được giữ nguyên trong suốt thời gian sử dụng.Được mua gói vắc xin trả góp không lãi suất trong 6 tháng..', N'Còn Hàng', N'Gói cơ bản', N'0-12 tháng', 142000016)
INSERT [dbo].[GoiVaccines] ([Id_GoiVC], [Ma_GoiVC], [IdDanhMucGoivcIdDanhMuc], [IdDanhMuc], [TenGoi], [AnhGoiVc], [Mota], [TinhTrang], [LoaiGoi], [DoTuoiTiem], [GiaGoiTiem]) VALUES (3, N'GVXIFRTX', NULL, 1, N'GÓI VẮC XIN Infanrix – Rotarix (0-12 tháng)', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', N'Infanrix Hexa hay còn gọi là vắc xin 6 trong 1, được sử dụng tiêm chủng cho trẻ sơ sinh nhằm phòng chống 6 căn bệnh phổ biến (Bạch hầu - Ho gà (vô bào) - Uốn Ván - Viêm gan B - Bại liệt và Hib). Đây cũng là loại vắc xin thường xuyên rơi vào tình trạng “siêu khan hiếm”.


Với Gói vắc xin Infanrix - Rotarix, phụ huynh có thể hoàn toàn an tâm khi con yêu đủ vắc xin tiêm ngay khi đến lịch, với danh mục 11 loại vắc xin cần thiết cho trẻ giai đoạn 0-12 tháng tuổi.

Thông tin Gói vắc xin Infanrix - Rotatix 

Infanrix Hexa hay còn gọi là vắc xin 6 trong 1, được sử dụng tiêm chủng cho trẻ sơ sinh nhằm phòng chống 6 căn bệnh phổ biến (Bạch hầu - Ho gà (vô bào) - Uốn Ván - Viêm gan B - Bại liệt và Hib). Đây cũng là loại vắc xin thường xuyên rơi vào tình trạng “siêu khan hiếm”.


Với Gói vắc xin Infanrix - Rotarix, phụ huynh có thể hoàn toàn an tâm khi con yêu đủ vắc xin tiêm ngay khi đến lịch, với danh mục 11 loại vắc xin cần thiết cho trẻ giai đoạn 0-12 tháng tuổi:


Vắc xin Rotarix (GSK/Bỉ) phòng bệnh Tiêu chảy do rota virus

Vắc xin Infanrix (GSK/Bỉ) phòng bệnh Ho gà, Bạch hầu, Uốn ván, Bại liệt, Viêm màng não mủ, Viêm họng, Viêm phổi do Hib, Viêm gan B

Vắc xin Synflorix (GSK/Bỉ) phòng Hội chứng nhiễm trùng, viêm màng não, viêm phổi, nhiễm khuẩn huyết, viêm tai giữa do phế cầu

Vaxigrip 0,25m (Sanofi/Pháp) phòng bệnh Cúm mùa

Vắc xin Mvvac (Polyvac/Việt Nam) phòng bệnh Sởi

Vắc xin MMR (MSD/Mỹ) phòng bệnh Sởi - Quai bị - Rubella

Vắc xin VA-Mengoc-BC (Finlay/Cuba) phòng bệnh viêm màng não do mô cầu tuýp B và C

Vắc xin Varivax (MSD/Mỹ) phòng bệnh Thủy đậu

Vắc xin Imojev (Sanofi/Thái Lan) phòng bệnh viêm não Nhật Bản	

Vắc xin Typhim Vi (Sanofi/Pháp) phòng bệnh Thương hàn	


Lợi ích khi mua Gói vắc xin Infanrix - Rotarix:

Không sợ hết vắc xin, kể cả các vắc xin thường xuyên khan hiếm trên thị trường như vắc xin Infanrix, vắc xin Rotarix, vắc xin Synflorix… 

Vắc xin sau khi được mua gói hoặc mua đặt trước sẽ được lưu trữ và bảo quản lên tới 2 năm, luôn sẵn sàng cho bé tiêm đúng lịch, không để bé bị nhỡ lịch bất kỳ một mũi tiêm nào.

Không sợ vắc xin đội giá ở thời điểm khan hiếm và phụ huynh không phải trả thêm bất cứ chi phí nào khác.

An tâm tối đa, vì VNVC có dây chuyền bảo quản lạnh đạt tiêu chuẩn GSP với kho lạnh lưu trữ, hệ thống tủ bảo quản và thiết bị vận chuyển vắc xin được kiểm định đạt tiêu chuẩn cao nhất, đảm bảo vắc xin luôn được bảo quản một cách tốt nhất trong một quy trình khép kín trước khi được tiêm cho khách hàng.

Nhiều ưu đãi: Bên cạnh dịch vụ 5 sao cùng các tiện ích khác, VNVC luôn dành cho khách hàng quà tặng hấp dẫn khi mua gói vắc xin:

Được đặt giữ đầy đủ các loại vắc xin trong gói, đảm bảo khách hàng được tiêm đủ vắc xin theo đúng lịch.

Được hệ thống nhắc lịch tiêm tự động miễn phí.

Dễ dàng tra cứu lịch sử tiêm chủng online với mã code định danh.

Được tư vấn, khám sàng lọc trước tiêm hoàn toàn miễn phí.

Đặc biệt, giá vắc xin và các ưu đãi khác đều được giữ nguyên trong suốt thời gian sử dụng.

Được mua gói vắc xin trả góp không lãi suất trong 6 tháng.', N'Còn Hàng', N'Gói cơ bản', N'0-12 tháng', 1.42E+07)
INSERT [dbo].[GoiVaccines] ([Id_GoiVC], [Ma_GoiVC], [IdDanhMucGoivcIdDanhMuc], [IdDanhMuc], [TenGoi], [AnhGoiVc], [Mota], [TinhTrang], [LoaiGoi], [DoTuoiTiem], [GiaGoiTiem]) VALUES (4, N'GVXIFRTT', NULL, 1, N'GÓI VẮC XIN Infanrix - Rotateq (0-12 tháng)', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', N'Vacxin 6 trong 1 Infanrix Hexa được sản xuất bởi hãng dược nổi tiếng thế giới GlaxoSmithKline - Bỉ (GSK). Với ưu điểm phòng được nhiều bệnh trong cùng 1 mũi tiêm, giúp giảm thiểu số lần tiêm ở trẻ nhỏ, trẻ ít phải chịu số lần đau hơn, tiết kiệm được thời gian và độ bảo vệ của bé cũng được nâng lên so với khi tiêm các mũi tiêm lẻ.Gói vắc xin Infanrix - Rotateq được thiết kế với 9-11 loại vắc xin, tổng số mũi tiêm là 18-25 mũi đảm bảo trẻ có vắc xin tiêm đúng lịch, đủ phác đồ, ngay cả khi vắc xin khan hiếm.Gói vắc xin Infanrix - Rotateq 

Vacxin 6 trong 1 Infanrix Hexa được sản xuất bởi hãng dược nổi tiếng thế giới GlaxoSmithKline - Bỉ (GSK). Với ưu điểm phòng được nhiều bệnh trong cùng 1 mũi tiêm, giúp giảm thiểu số lần tiêm ở trẻ nhỏ, trẻ ít phải chịu số lần đau hơn, tiết kiệm được thời gian và độ bảo vệ của bé cũng được nâng lên so với khi tiêm các mũi tiêm lẻ.


Gói vắc xin Infanrix - Rotateq được thiết kế với 9-11 loại vắc xin, tổng số mũi tiêm là 18-25 mũi đảm bảo trẻ có vắc xin tiêm đúng lịch, đủ phác đồ, ngay cả khi vắc xin khan hiếm.


Vắc xin Rotateq (MSD/Mỹ) phòng bệnh tiêu chảy do rota virus	

Vắc xin Infanrix (GSK/Bỉ) phòng bệnh Ho gà, Bạch hầu, Uốn ván, Bại liệt, Viêm màng não mủ, Viêm họng, Viêm phổi do Hib, Viêm gan B (6 in 1)	

Vắc xin Synflorix (GSK/Bỉ) phòng Hội chứng nhiễm trùng, viêm màng não, viêm phổi, nhiễm khuẩn huyết, viêm tai giữa do phế cầu	

Vắc xin Vaxigrip 0,25ml (Sanofi/Pháp) phòng bệnh Cúm mùa

Vắc xin Mvvac (Polyvac/Việt Nam) phòng bệnh Sởi	

Vắc xin MMR-II (MSD/Mỹ) phòng bệnh Sởi - Quai bị - Rubella	

Vắc xin VA-Mengoc-BC (Finlay/Cuba) phòng bệnh Viêm màng não do mô cầu tuýp B và C	

Vắc xin Varivax (MSD/Mỹ) phòng bệnh Thủy đậu	

Vắc xin Imojev (Sanofi/Thái Lan) phòng bệnh Viêm não Nhật Bản 

Vắc xin Typhoid Vi (Davac/Việt Nam) phòng bệnh Thương hàn	


Trong 30 năm qua, vắc xin đã góp phần bảo vệ 6,7 triệu trẻ em Việt Nam và ngăn ngừa 43.000 trường hợp tránh khỏi các bệnh dịch có thể đe dọa tính mạng như sởi, thủy đậu, tiêu chảy do virus Rota, cúm, viêm não Nhật Bản, quai bị, bạch hầu, uốn ván, ho gà, bại liệt...


Tiêm phòng bệnh, bảo vệ sức khỏe cho bé yêu ngay từ sớm là nguyện vọng của hàng triệu Bố Mẹ. Nhu cầu tiêm chủng phòng bệnh lớn trong khi vắc xin hot thường rơi vào tình trạng khan hiếm khiến phụ huynh thấp thỏm trông ngóng. Mua Gói vắc xin tại VNVC là giải pháp tuyệt vời với nhiều tiện ích:


Được đặt giữ đầy đủ các loại vắc xin trong gói, đảm bảo khách hàng được tiêm đủ vắc xin theo đúng lịch.

Được hệ thống nhắc lịch tiêm tự động miễn phí.

Dễ dàng tra cứu lịch sử tiêm chủng online với mã code định danh.

Được tư vấn, khám sàng lọc trước tiêm hoàn toàn miễn phí.

Đặc biệt, giá vắc xin và các ưu đãi khác đều được giữ nguyên trong suốt thời gian sử dụng.

Được mua gói vắc xin trả góp không lãi suất trong 6 tháng.', N'Còn Hàng', N'Gói cơ bản', N'0-12 tháng', 1.4828E+07)
INSERT [dbo].[GoiVaccines] ([Id_GoiVC], [Ma_GoiVC], [IdDanhMucGoivcIdDanhMuc], [IdDanhMuc], [TenGoi], [AnhGoiVc], [Mota], [TinhTrang], [LoaiGoi], [DoTuoiTiem], [GiaGoiTiem]) VALUES (5, N'GVXPTRTT', NULL, 1, N'GÓI VẮC XIN Pentaxim – Rotateq (0-12 THÁNG)', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', N'Giai đoạn từ 0 - 12 tháng tuổi là giai đoạn ảnh hưởng rất lớn đến sự phát triển sức khỏe và trí tuệ cho con. Đây cũng là giai đoạn sức đề kháng của con đang yếu ớt và dần hoàn thiện. Do đó, việc tiêm chủng ĐÚNG LỊCH - ĐỦ LIỀU trong giai đoạn này là cực kỳ quan trọng. Gói vắc xin Pentaxim - Rotateq dành cho trẻ từ 0-12 tháng tuổi với 21 liều vắc xin, được lựa chọn từ các nhà sản xuất uy tín nhất trên thế giới và số ít các vắc xin được sản xuất tại Việt Nam đã được kiểm chứng về độ hiệu quả và an toàn, sẽ là lựa chọn hoàn hảo cho các Bố Mẹ trong chăm sóc sức khỏe và phòng bệnh cho con yêu.

Thông tin Gói vắc xin Pentaxim - Rotateq

Giai đoạn từ 0 - 12 tháng tuổi là giai đoạn ảnh hưởng rất lớn đến sự phát triển sức khỏe và trí tuệ cho con. Đây cũng là giai đoạn sức đề kháng của con đang yếu ớt và dần hoàn thiện. Do đó, việc tiêm chủng ĐÚNG LỊCH - ĐỦ LIỀU trong giai đoạn này là cực kỳ quan trọng. 


Gói vắc xin Pentaxim - Rotateq dành cho trẻ từ 0-12 tháng tuổi với 21 liều vắc xin, được lựa chọn từ các nhà sản xuất uy tín nhất trên thế giới và số ít các vắc xin được sản xuất tại Việt Nam đã được kiểm chứng về độ hiệu quả và an toàn, sẽ là lựa chọn hoàn hảo cho các Bố Mẹ trong chăm sóc sức khỏe và phòng bệnh cho con yêu.



Sử dụng Gói vắc xin Pentaxim - Rotateq tại Trung tâm tiêm chủng VNVC, khách hàng hoàn toàn an tâm luôn có đủ vắc xin, cùng nhiều ưu đãi “có một không hai”:


Được đặt giữ đầy đủ các loại vắc xin trong gói, đảm bảo khách hàng được tiêm đủ vắc xin theo đúng lịch.

Được hệ thống nhắc lịch tiêm tự động miễn phí.

Dễ dàng tra cứu lịch sử tiêm chủng online với mã code định danh.

Được tư vấn, khám sàng lọc trước tiêm hoàn toàn miễn phí.

Đặc biệt, giá vắc xin và các ưu đãi khác đều được giữ nguyên trong suốt thời gian sử dụng.

Được mua gói vắc xin trả góp không lãi suất trong 6 tháng.', N'Còn Hàng', N'Gói cơ bản', N'0-12 tháng', 1.4735E+07)
INSERT [dbo].[GoiVaccines] ([Id_GoiVC], [Ma_GoiVC], [IdDanhMucGoivcIdDanhMuc], [IdDanhMuc], [TenGoi], [AnhGoiVc], [Mota], [TinhTrang], [LoaiGoi], [DoTuoiTiem], [GiaGoiTiem]) VALUES (6, N'GVXPTRTX', NULL, 1, N'GÓI VẮC XIN Pentaxim – Rotarix (0-12 THÁNG)', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', N'Khi mới sinh, hệ miễn dịch của trẻ rất tốt nhờ hệ thống kháng thể nhận được từ khi còn trong bào thai, tuy nhiên miễn dịch thụ động không tạo ra được sức đề kháng lâu dài vì sau đó các kháng thể này bắt đầu giảm mạnh trong 6 tháng tiếp theo. Lúc này, việc tiêm chủng phòng bệnh sớm cho trẻ, đúng phác đồ và tiêm phòng nhiều bệnh nhất có thể chính là cách tốt nhất để bảo vệ sức khỏe, cho con phát triển toàn diện.Thông tin Gói vắc xin Pentaxim - Rotarix .Khi mới sinh, hệ miễn dịch của trẻ rất tốt nhờ hệ thống kháng thể nhận được từ khi còn trong bào thai, tuy nhiên miễn dịch thụ động không tạo ra được sức đề kháng lâu dài vì sau đó các kháng thể này bắt đầu giảm mạnh trong 6 tháng tiếp theo. Lúc này, việc tiêm chủng phòng bệnh sớm cho trẻ, đúng phác đồ và tiêm phòng nhiều bệnh nhất có thể chính là cách tốt nhất để bảo vệ sức khỏe, cho con phát triển toàn diện.Với 20 liều của 10 loại vắc xin, Gói vắc xin Pentaxim - Rotarix dành cho những phụ huynh đang tìm kiếm gói vắc xin đầy đủ vắc xin nhất cho con yêu từ 0-12 tháng tuổi:Vắc xin Rotarix (GSK-Bỉ) phòng bệnh tiêu chảy do rota virus
Vắc xin Pentaxim (Sanofi-Pháp) phòng 5 bệnh Ho gà, Bạch hầu, Uốn ván, Bại liệt, Viêm màng não mủ, Viêm họng, Viêm phổi do Hib (5 in 1)	

Vắc xin Synflorix (GSK-Bỉ) phòng hội chứng nhiễm trùng, viêm màng não, viêm phổi, nhiễm khuẩn huyết, viêm tai giữa do phế cầu 

Vắc xin Vaxigrip 0,25ml (Sanofi-Pháp) phòng bệnh Cúm mùa

Vắc xin Mvvac (Polyvac-Việt Nam) phòng bệnh Sởi	

Vắc xin MMR-II (MSD-Mỹ) phòng bệnh Sởi - Quai bị - Rubella

Vắc xin VA-Mengoc-BC (Finlay-Cuba) phòng bệnh Viêm màng não do mô cầu tuýp B và C	

Vắc xin Varivax (MSD-Mỹ) phòng bệnh Thủy đậu	

Vắc xin Engerix B (GSK-Bỉ) phòng bệnh Viêm gan B

Vắc xin Imojev (Thái Lan) phòng bệnh Viêm não Nhật Bản


Sử dụng Gói vắc xin Pentaxim - Rotarix tại Trung tâm tiêm chủng VNVC, khách hàng hoàn toàn có thể an tâm loại bỏ những nỗi lo lắng về tình trạng khan hiếm vắc xin, luôn an tâm ổn định giá trong suốt thời gian sử dụng, không trượt giá theo thị trường, được giữ và bảo quản vắc xin lên đến 2 năm đảm bảo có đủ vắc xin cho khách hàng tiêm đúng lịch, đúng loại vắc xin, kể cả trong thời điểm khan hiếm, được nhắc lịch tiêm cùng nhiều ưu đãi có một không hai:



Được đặt giữ đầy đủ các loại vắc xin trong gói, đảm bảo khách hàng được tiêm đủ vắc xin theo đúng lịch.

Được hệ thống nhắc lịch tiêm tự động miễn phí.

Dễ dàng tra cứu lịch sử tiêm chủng online với mã code định danh.

Được tư vấn, khám sàng lọc trước tiêm hoàn toàn miễn phí.

Đặc biệt, giá vắc xin và các ưu đãi khác đều được giữ nguyên trong suốt thời gian sử dụng.

Được mua gói vắc xin trả góp không lãi suất trong 6 tháng.', N'Còn Hàng', N'Gói cơ bản', N'0-12 tháng', 1.4321E+07)
INSERT [dbo].[GoiVaccines] ([Id_GoiVC], [Ma_GoiVC], [IdDanhMucGoivcIdDanhMuc], [IdDanhMuc], [TenGoi], [AnhGoiVc], [Mota], [TinhTrang], [LoaiGoi], [DoTuoiTiem], [GiaGoiTiem]) VALUES (10, N'GVC1', NULL, 2, N'GÓI VẮC XIN CHO TRẺ TIỀN HỌC ĐƯỜNG', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', N'Tiền học đường là giai đoạn “khoảng trống miễn dịch” của trẻ, do sức đề kháng kém khiến trẻ trở nên đặc biệt nhạy cảm với các loại vi khuẩn lây bệnh, nhất là các bệnh nguy hiểm có thể phòng ngừa được bằng vắc xin: Thủy đậu, sởi, quai bị, rubella, cúm, viêm não Nhật Bản…', N'Còn hàng', N'Cơ bản', N'5-18 tuổi', 1.3E+07)
INSERT [dbo].[GoiVaccines] ([Id_GoiVC], [Ma_GoiVC], [IdDanhMucGoivcIdDanhMuc], [IdDanhMuc], [TenGoi], [AnhGoiVc], [Mota], [TinhTrang], [LoaiGoi], [DoTuoiTiem], [GiaGoiTiem]) VALUES (11, N'werwer', NULL, 1, N'GÓI VẮC XIN CHO TRẺ TIỀN HỌC ĐƯỜNG', N'assets/images/GVX Hexaxim-Rotarix 0-12-500x500.jpg', N'good', N'Hết hàng', N'Có Menactra', N'5-18 tuổi', 1.3E+07)
INSERT [dbo].[GoiVaccines] ([Id_GoiVC], [Ma_GoiVC], [IdDanhMucGoivcIdDanhMuc], [IdDanhMuc], [TenGoi], [AnhGoiVc], [Mota], [TinhTrang], [LoaiGoi], [DoTuoiTiem], [GiaGoiTiem]) VALUES (12, N'GTVC02', NULL, 3, N'GÓI VẮC XIN CHO TUỔI VỊ THÀNH NIÊN VÀ THANH NIÊN', N'assets/images/GVXPentaximRotarix012.jpg', N'Tốt', N'Còn hàng', N'Có Menactra', N'13-30 tuổi', 3000000)
INSERT [dbo].[GoiVaccines] ([Id_GoiVC], [Ma_GoiVC], [IdDanhMucGoivcIdDanhMuc], [IdDanhMuc], [TenGoi], [AnhGoiVc], [Mota], [TinhTrang], [LoaiGoi], [DoTuoiTiem], [GiaGoiTiem]) VALUES (15, N'aafsf', NULL, 2, N'GÓI VẮC XIN CHO TRẺ TIỀN HỌC ĐƯỜNG', N'assets/images/rubik.jpg', N'gfgfhg', N'Còn hàng', N'Cơ bản', N'5', 50000)
INSERT [dbo].[GoiVaccines] ([Id_GoiVC], [Ma_GoiVC], [IdDanhMucGoivcIdDanhMuc], [IdDanhMuc], [TenGoi], [AnhGoiVc], [Mota], [TinhTrang], [LoaiGoi], [DoTuoiTiem], [GiaGoiTiem]) VALUES (16, N'GVCNTTG1', NULL, 4, N'GÓI VẮC XIN CHO NGƯỜI TRƯỞNG THÀNH (GÓI 1)', N'assets/images/product_07_large.png', N'Gói vắc xin cho người trưởng thành có vắc xin Menactra dành cho trẻ từ 2 tuổi đến người lớn 55 tuổi. Vắc xin Menactra có tác dụng phòng bệnh trọn đời chỉ với 1 mũi tiêm duy nhất. Với trẻ từ 9 tháng đến dưới 2 tuổi, cần tiêm 2 mũi cách nhau ít nhất 3 tháng.', N'Còn hàng', N'Gói cơ bản', N'18-45 tuổi', 500000)
INSERT [dbo].[GoiVaccines] ([Id_GoiVC], [Ma_GoiVC], [IdDanhMucGoivcIdDanhMuc], [IdDanhMuc], [TenGoi], [AnhGoiVc], [Mota], [TinhTrang], [LoaiGoi], [DoTuoiTiem], [GiaGoiTiem]) VALUES (17, N'GVCPNTMTG1', NULL, 5, N'GÓI VẮC XIN CHO PHỤ NỮ CHUẨN BỊ TRƯỚC MANG THAI (GÓI 1)', N'assets/images/GVXPentaximRotateq012.jpg', N'Gói vắc xin cho phụ nữ chuẩn bị trước mang thai có vắc xin Menactra dành cho trẻ từ 2 tuổi đến người lớn 55 tuổi. Vắc xin Menactra có tác dụng phòng bệnh trọn đời chỉ với 1 mũi tiêm duy nhất. Với trẻ từ 9 tháng đến dưới 2 tuổi, cần tiêm 2 mũi cách nhau ít nhất 3 tháng.', N'Còn hàng', N'Gói cơ bản', N'21-40 tuổi', 20000)
SET IDENTITY_INSERT [dbo].[GoiVaccines] OFF
SET IDENTITY_INSERT [dbo].[NCCs] ON 

INSERT [dbo].[NCCs] ([Id_NCC], [MaNCC], [SDT_NhaCC], [DiaChiNCC]) VALUES (1, N'NCCABC', N'0367513988', N'Hà Nội')
INSERT [dbo].[NCCs] ([Id_NCC], [MaNCC], [SDT_NhaCC], [DiaChiNCC]) VALUES (2, N'NCCCCA', N'0378989899', N'Hồ Chí Minh')
INSERT [dbo].[NCCs] ([Id_NCC], [MaNCC], [SDT_NhaCC], [DiaChiNCC]) VALUES (3, N'DHG', N'0122546649', N'Hậu Giang')
SET IDENTITY_INSERT [dbo].[NCCs] OFF
SET IDENTITY_INSERT [dbo].[NhanViens] ON 

INSERT [dbo].[NhanViens] ([IdNhanVien], [MaNhanVien], [HoTenNV], [NgaySinhNV], [DiaChiNV], [GioiTinhNV], [SDT_NV], [ChucVu]) VALUES (2, N'NV01', N'Trần Văn A c', CAST(N'1998-11-06T00:00:00.0000000' AS DateTime2), N'tphcm', N'Nam', N'0031231231', N'admin')
INSERT [dbo].[NhanViens] ([IdNhanVien], [MaNhanVien], [HoTenNV], [NgaySinhNV], [DiaChiNV], [GioiTinhNV], [SDT_NV], [ChucVu]) VALUES (3, N'NV02', N'mạc thiện chí cường', CAST(N'2020-07-23T14:50:50.1462965' AS DateTime2), N'tiền giang', N'Nam', N'0326305946', N'Bác sĩ')
INSERT [dbo].[NhanViens] ([IdNhanVien], [MaNhanVien], [HoTenNV], [NgaySinhNV], [DiaChiNV], [GioiTinhNV], [SDT_NV], [ChucVu]) VALUES (4, N'NV03', N'Nguyễn Minh Thuận', CAST(N'2020-07-23T14:50:50.1462965' AS DateTime2), N'Tây ninh', N'Nam', N'0326305946', N'Nhân viên bán hàng')
INSERT [dbo].[NhanViens] ([IdNhanVien], [MaNhanVien], [HoTenNV], [NgaySinhNV], [DiaChiNV], [GioiTinhNV], [SDT_NV], [ChucVu]) VALUES (5, N'NV04', N'Trần Văn C', CAST(N'1998-11-06T00:00:00.0000000' AS DateTime2), N'tphcmasdad', N'Nam', N'0031231231', N'Nhân viên bán hàng')
SET IDENTITY_INSERT [dbo].[NhanViens] OFF
SET IDENTITY_INSERT [dbo].[PhieuDatMuaOnlines] ON 

INSERT [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline], [Ma_PhieuDmOnline], [HoTenNguoiDM], [Email_NguoiDM], [SDT_NgDM], [TKKHID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayDatMuaOL], [HoTen_NgLH1], [SDT_NgLH1], [HoTen_NgLH2], [SDT_NgLH2], [NgaySinhNguoiTiem], [HotenNguoiTiem], [GioiTinh_NguoiTIem], [DT_NguoiTiem], [GioHang_DatHangId_GioHang], [Id_GioHang], [TongTien]) VALUES (38, N'PDMVC3G177202068', N'Mạc Thiện Chí Cường', N'macthienchicuong@gmail.com', N'376700463', NULL, 3, CAST(N'2020-08-17T00:00:00.0000000' AS DateTime2), N'Nguyễn Minh Thuận', N'38649123', N'Nguyễn Hà Trân', N'31465789', CAST(N'2015-07-17T00:00:00.0000000' AS DateTime2), N'Nguyễn Thanh Vân', N'Nữ', N'13146465', NULL, 50, 2205000)
INSERT [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline], [Ma_PhieuDmOnline], [HoTenNguoiDM], [Email_NguoiDM], [SDT_NgDM], [TKKHID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayDatMuaOL], [HoTen_NgLH1], [SDT_NgLH1], [HoTen_NgLH2], [SDT_NgLH2], [NgaySinhNguoiTiem], [HotenNguoiTiem], [GioiTinh_NguoiTIem], [DT_NguoiTiem], [GioHang_DatHangId_GioHang], [Id_GioHang], [TongTien]) VALUES (39, N'PDMVC1C177202065', N'Nguyễn Minh Thuận', N'nguyenminhthuan@gmail.com', N'37646464', NULL, 1, CAST(N'2020-07-17T00:00:00.0000000' AS DateTime2), N'Nguyễn Viết Hoàng Anh', N'113', N'Nguyễn Hà Trân', N'114', CAST(N'2012-06-17T00:00:00.0000000' AS DateTime2), N'Chí Cường', N'Nam', N'12222222', NULL, 51, 785000)
INSERT [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline], [Ma_PhieuDmOnline], [HoTenNguoiDM], [Email_NguoiDM], [SDT_NgDM], [TKKHID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayDatMuaOL], [HoTen_NgLH1], [SDT_NgLH1], [HoTen_NgLH2], [SDT_NgLH2], [NgaySinhNguoiTiem], [HotenNguoiTiem], [GioiTinh_NguoiTIem], [DT_NguoiTiem], [GioHang_DatHangId_GioHang], [Id_GioHang], [TongTien]) VALUES (40, N'PDMVC47559X1772020369', N'cuong', N'cuong@gmail.com', N'2143', NULL, 47559, CAST(N'2020-04-17T00:00:00.0000000' AS DateTime2), N'Bùi Hoàng Gia huy', N'213123', N'Nguyễn Hà Trân', N'123123', CAST(N'2020-07-15T00:00:00.0000000' AS DateTime2), N'Nguyễn Hoa', N'Nam', N'123123123', NULL, 52, 785000)
INSERT [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline], [Ma_PhieuDmOnline], [HoTenNguoiDM], [Email_NguoiDM], [SDT_NgDM], [TKKHID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayDatMuaOL], [HoTen_NgLH1], [SDT_NgLH1], [HoTen_NgLH2], [SDT_NgLH2], [NgaySinhNguoiTiem], [HotenNguoiTiem], [GioiTinh_NguoiTIem], [DT_NguoiTiem], [GioHang_DatHangId_GioHang], [Id_GioHang], [TongTien]) VALUES (41, N'PDMVC1K1972020830', N'Mỹ Hạnh', N'myhanh@gmail.com', N'123', NULL, 1, CAST(N'2020-05-19T00:00:00.0000000' AS DateTime2), N'Chí Cường', N'123', N'Nguyễn Hà Trân', N'113', CAST(N'2020-07-16T00:00:00.0000000' AS DateTime2), N'Nguyễn Hoa', N'Nữ', N'114', NULL, 54, 1420000)
INSERT [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline], [Ma_PhieuDmOnline], [HoTenNguoiDM], [Email_NguoiDM], [SDT_NgDM], [TKKHID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayDatMuaOL], [HoTen_NgLH1], [SDT_NgLH1], [HoTen_NgLH2], [SDT_NgLH2], [NgaySinhNguoiTiem], [HotenNguoiTiem], [GioiTinh_NguoiTIem], [DT_NguoiTiem], [GioHang_DatHangId_GioHang], [Id_GioHang], [TongTien]) VALUES (42, N'PDMVC3V2072020540', N'Hùng xe đạp', N'hungxedap@gmail.com', N'112', NULL, 3, CAST(N'2020-06-20T00:00:00.0000000' AS DateTime2), N'Minh Hiếu', N'113', N'Minh Hằng', N'114', CAST(N'2011-02-01T00:00:00.0000000' AS DateTime2), N'Minh Anh', N'Nam', N'115', NULL, 55, 1420000)
INSERT [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline], [Ma_PhieuDmOnline], [HoTenNguoiDM], [Email_NguoiDM], [SDT_NgDM], [TKKHID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayDatMuaOL], [HoTen_NgLH1], [SDT_NgLH1], [HoTen_NgLH2], [SDT_NgLH2], [NgaySinhNguoiTiem], [HotenNguoiTiem], [GioiTinh_NguoiTIem], [DT_NguoiTiem], [GioHang_DatHangId_GioHang], [Id_GioHang], [TongTien]) VALUES (43, N'PDMVC3T2072020502', N'Thanh Vân', N'thanhvan@gmail.com', N'90', NULL, 3, CAST(N'2020-03-20T00:00:00.0000000' AS DateTime2), N'Thanh Hồng', N'99', N'Thanh Hương', N'98', CAST(N'2020-07-02T00:00:00.0000000' AS DateTime2), N'Thanh Trúc', N'Nữ', N'988', NULL, 55, 2435000)
INSERT [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline], [Ma_PhieuDmOnline], [HoTenNguoiDM], [Email_NguoiDM], [SDT_NgDM], [TKKHID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayDatMuaOL], [HoTen_NgLH1], [SDT_NgLH1], [HoTen_NgLH2], [SDT_NgLH2], [NgaySinhNguoiTiem], [HotenNguoiTiem], [GioiTinh_NguoiTIem], [DT_NguoiTiem], [GioHang_DatHangId_GioHang], [Id_GioHang], [TongTien]) VALUES (44, N'PDMVC3L217202081', N'qweqwe', N'hongthuan@gmail.com', N'123', NULL, 3, CAST(N'2020-02-21T00:00:00.0000000' AS DateTime2), N'Bùi Hoàng Gia huy', N'1212', N'Nguyễn Hà Trân', N'123123', CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), N'Nguyễn Hoa', N'Nam', N'12123', NULL, 56, 163300016)
INSERT [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline], [Ma_PhieuDmOnline], [HoTenNguoiDM], [Email_NguoiDM], [SDT_NgDM], [TKKHID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayDatMuaOL], [HoTen_NgLH1], [SDT_NgLH1], [HoTen_NgLH2], [SDT_NgLH2], [NgaySinhNguoiTiem], [HotenNguoiTiem], [GioiTinh_NguoiTIem], [DT_NguoiTiem], [GioHang_DatHangId_GioHang], [Id_GioHang], [TongTien]) VALUES (45, N'PDMVC3L2172020296', N'a', N'hongthuan@gmail.com', N'112', NULL, 3, CAST(N'2020-01-21T00:00:00.0000000' AS DateTime2), N'Bùi Hoàng Gia huy', N'111', N'Nguyễn Hà Trân', N'111', CAST(N'2020-07-08T00:00:00.0000000' AS DateTime2), N'Minh', N'Nam', N'111', NULL, 56, 163300016)
INSERT [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline], [Ma_PhieuDmOnline], [HoTenNguoiDM], [Email_NguoiDM], [SDT_NgDM], [TKKHID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayDatMuaOL], [HoTen_NgLH1], [SDT_NgLH1], [HoTen_NgLH2], [SDT_NgLH2], [NgaySinhNguoiTiem], [HotenNguoiTiem], [GioiTinh_NguoiTIem], [DT_NguoiTiem], [GioHang_DatHangId_GioHang], [Id_GioHang], [TongTien]) VALUES (46, N'PDMVC3D2172020850', N'a', N'hongthuan@gmail.com', N'121', NULL, 3, CAST(N'2020-09-21T00:00:00.0000000' AS DateTime2), N'Bùi Hoàng Gia Bảo', N'1122', N'Minh Hằng', N'111', CAST(N'2020-07-01T00:00:00.0000000' AS DateTime2), N'Minh Anh', N'Nữ', N'121', NULL, 56, 163300016)
INSERT [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline], [Ma_PhieuDmOnline], [HoTenNguoiDM], [Email_NguoiDM], [SDT_NgDM], [TKKHID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayDatMuaOL], [HoTen_NgLH1], [SDT_NgLH1], [HoTen_NgLH2], [SDT_NgLH2], [NgaySinhNguoiTiem], [HotenNguoiTiem], [GioiTinh_NguoiTIem], [DT_NguoiTiem], [GioHang_DatHangId_GioHang], [Id_GioHang], [TongTien]) VALUES (47, N'PDMVC3S2172020643', N'b', N'b@gmail.com', N'112', NULL, 3, CAST(N'2020-10-21T00:00:00.0000000' AS DateTime2), N'Bùi Hoàng Gia huy', NULL, N'Nguyễn Hà Trân', N'12121', CAST(N'2020-07-08T00:00:00.0000000' AS DateTime2), N'Minh', N'Nữ', N'12121', NULL, 56, 163300016)
INSERT [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline], [Ma_PhieuDmOnline], [HoTenNguoiDM], [Email_NguoiDM], [SDT_NgDM], [TKKHID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayDatMuaOL], [HoTen_NgLH1], [SDT_NgLH1], [HoTen_NgLH2], [SDT_NgLH2], [NgaySinhNguoiTiem], [HotenNguoiTiem], [GioiTinh_NguoiTIem], [DT_NguoiTiem], [GioHang_DatHangId_GioHang], [Id_GioHang], [TongTien]) VALUES (48, N'PDMVC3I2172020647', N'c ', N'c@gmail.com', N'123', NULL, 3, CAST(N'2020-11-21T00:00:00.0000000' AS DateTime2), N'a', N'2112', N'acy', N'4445', CAST(N'2020-07-11T00:00:00.0000000' AS DateTime2), N'Minh', N'Nam', N'3434345', NULL, 56, 163789920)
INSERT [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline], [Ma_PhieuDmOnline], [HoTenNguoiDM], [Email_NguoiDM], [SDT_NgDM], [TKKHID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayDatMuaOL], [HoTen_NgLH1], [SDT_NgLH1], [HoTen_NgLH2], [SDT_NgLH2], [NgaySinhNguoiTiem], [HotenNguoiTiem], [GioiTinh_NguoiTIem], [DT_NguoiTiem], [GioHang_DatHangId_GioHang], [Id_GioHang], [TongTien]) VALUES (49, N'PDMVC3S2172020396', N'd', N'd@gmail.com', N'456', NULL, 3, CAST(N'2020-12-21T00:00:00.0000000' AS DateTime2), N'Mạc Thiện Chí Cường', N'45678', N'Minh Hằng', N'234', CAST(N'2020-07-07T00:00:00.0000000' AS DateTime2), N'Nguyễn Hoa', N'Nam', N'1212', NULL, 56, 167239920)
INSERT [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline], [Ma_PhieuDmOnline], [HoTenNguoiDM], [Email_NguoiDM], [SDT_NgDM], [TKKHID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayDatMuaOL], [HoTen_NgLH1], [SDT_NgLH1], [HoTen_NgLH2], [SDT_NgLH2], [NgaySinhNguoiTiem], [HotenNguoiTiem], [GioiTinh_NguoiTIem], [DT_NguoiTiem], [GioHang_DatHangId_GioHang], [Id_GioHang], [TongTien]) VALUES (50, N'PDMVC3D2172020613', N'e', N'e@gmail.com', N'12121', NULL, 3, CAST(N'2020-07-21T00:00:00.0000000' AS DateTime2), N'Cường', N'121212', N'Minh Hằng', N'3454', CAST(N'2020-07-01T00:00:00.0000000' AS DateTime2), N'Minh Anh', N'Nữ', N'213123', NULL, 56, 167239920)
INSERT [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline], [Ma_PhieuDmOnline], [HoTenNguoiDM], [Email_NguoiDM], [SDT_NgDM], [TKKHID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayDatMuaOL], [HoTen_NgLH1], [SDT_NgLH1], [HoTen_NgLH2], [SDT_NgLH2], [NgaySinhNguoiTiem], [HotenNguoiTiem], [GioiTinh_NguoiTIem], [DT_NguoiTiem], [GioHang_DatHangId_GioHang], [Id_GioHang], [TongTien]) VALUES (51, N'PDMVC46022O2172020747', N'Phạm Hồng Thắm', N'hongthuan@gmail.com', N'112', NULL, 46022, CAST(N'2020-07-21T00:00:00.0000000' AS DateTime2), N'Bùi Hoàng Gia huy', N'1111', N'Minh Hằng', N'123', CAST(N'2020-07-08T00:00:00.0000000' AS DateTime2), N'Minh', N'Nam', N'1212', NULL, 57, 164467280)
INSERT [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline], [Ma_PhieuDmOnline], [HoTenNguoiDM], [Email_NguoiDM], [SDT_NgDM], [TKKHID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayDatMuaOL], [HoTen_NgLH1], [SDT_NgLH1], [HoTen_NgLH2], [SDT_NgLH2], [NgaySinhNguoiTiem], [HotenNguoiTiem], [GioiTinh_NguoiTIem], [DT_NguoiTiem], [GioHang_DatHangId_GioHang], [Id_GioHang], [TongTien]) VALUES (52, N'PDMVC3L2772020765', N'Minh Thuận', N'minhthuan@gmail.com', N'3767004456', NULL, 3, CAST(N'2020-07-27T00:00:00.0000000' AS DateTime2), N'Bùi Hoàng Gia huy', N'123', N'Nguyễn Hà Trân', N'114', CAST(N'2018-02-14T00:00:00.0000000' AS DateTime2), N'Minh Hoàng', N'Nam', N'113', NULL, 58, 902750)
INSERT [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline], [Ma_PhieuDmOnline], [HoTenNguoiDM], [Email_NguoiDM], [SDT_NgDM], [TKKHID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayDatMuaOL], [HoTen_NgLH1], [SDT_NgLH1], [HoTen_NgLH2], [SDT_NgLH2], [NgaySinhNguoiTiem], [HotenNguoiTiem], [GioiTinh_NguoiTIem], [DT_NguoiTiem], [GioHang_DatHangId_GioHang], [Id_GioHang], [TongTien]) VALUES (53, N'PDMVC3H2872020584', N'Phạm Hồng Thắm', N'hongthuan@gmail.com', N'376700463', NULL, 3, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), N'Nguyễn Minh Thuận', N'934705307', N'Nguyễn Hà Trân', N'932652184', CAST(N'2014-06-19T00:00:00.0000000' AS DateTime2), N'Nguyễn Hoa', N'Nữ', N'37657125', NULL, 59, 1633000)
INSERT [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline], [Ma_PhieuDmOnline], [HoTenNguoiDM], [Email_NguoiDM], [SDT_NgDM], [TKKHID_TaiKhoanKH], [ID_TaiKhoanKH], [NgayDatMuaOL], [HoTen_NgLH1], [SDT_NgLH1], [HoTen_NgLH2], [SDT_NgLH2], [NgaySinhNguoiTiem], [HotenNguoiTiem], [GioiTinh_NguoiTIem], [DT_NguoiTiem], [GioHang_DatHangId_GioHang], [Id_GioHang], [TongTien]) VALUES (54, N'PDMVC3V2872020687', N'asdasd', N'dad@gmail.com', N'21123', NULL, 3, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), N'Cường', N'123123', N'Nguyễn Hà Trân', N'123123', CAST(N'2020-07-16T00:00:00.0000000' AS DateTime2), N'Minh', N'Nam', N'21312', NULL, 59, 1633000)
SET IDENTITY_INSERT [dbo].[PhieuDatMuaOnlines] OFF
SET IDENTITY_INSERT [dbo].[PhieuDatMuaTrucTieps] ON 

INSERT [dbo].[PhieuDatMuaTrucTieps] ([ID_PhieuDMTT], [MAPhieu_DMTT], [HoTenngDM], [SDT_NguoiDM], [Email_ngDM], [NgayDatMuaTT], [HoTen_NgTiem], [GioiTinh_ngTiem], [TongTienDM], [NhanViensIdNhanVien], [IdNhanVien], [Id_NguoiTiem]) VALUES (40, N'DM040', N'Nguyễn minh thuận', N'5555555555555', N'Thuan@gmail.com', CAST(N'2020-07-08T15:32:48.0000000' AS DateTime2), N'Minh thuận', NULL, 785000, NULL, 2, 4)
INSERT [dbo].[PhieuDatMuaTrucTieps] ([ID_PhieuDMTT], [MAPhieu_DMTT], [HoTenngDM], [SDT_NguoiDM], [Email_ngDM], [NgayDatMuaTT], [HoTen_NgTiem], [GioiTinh_ngTiem], [TongTienDM], [NhanViensIdNhanVien], [IdNhanVien], [Id_NguoiTiem]) VALUES (43, N'DM043', N'Minh Thuận', N'0323121313', N'thuan@gmail.com', CAST(N'2020-07-26T17:37:52.8875836' AS DateTime2), N'Nguyễn minh Thuận', NULL, 1015000, NULL, 2, 10)
INSERT [dbo].[PhieuDatMuaTrucTieps] ([ID_PhieuDMTT], [MAPhieu_DMTT], [HoTenngDM], [SDT_NguoiDM], [Email_ngDM], [NgayDatMuaTT], [HoTen_NgTiem], [GioiTinh_ngTiem], [TongTienDM], [NhanViensIdNhanVien], [IdNhanVien], [Id_NguoiTiem]) VALUES (44, N'DM044', N'Chí cường', N'0555555555', N'Cương@gmail.com', CAST(N'2020-07-27T15:32:52.0786977' AS DateTime2), N'Văn B', NULL, 785000, NULL, 3, 11)
INSERT [dbo].[PhieuDatMuaTrucTieps] ([ID_PhieuDMTT], [MAPhieu_DMTT], [HoTenngDM], [SDT_NguoiDM], [Email_ngDM], [NgayDatMuaTT], [HoTen_NgTiem], [GioiTinh_ngTiem], [TongTienDM], [NhanViensIdNhanVien], [IdNhanVien], [Id_NguoiTiem]) VALUES (45, N'DM045', N'Chí cường', N'05555555', N'Cương@gmail.com', CAST(N'2020-07-27T15:35:40.9354080' AS DateTime2), N'Văn B', NULL, 785000, NULL, 3, 11)
INSERT [dbo].[PhieuDatMuaTrucTieps] ([ID_PhieuDMTT], [MAPhieu_DMTT], [HoTenngDM], [SDT_NguoiDM], [Email_ngDM], [NgayDatMuaTT], [HoTen_NgTiem], [GioiTinh_ngTiem], [TongTienDM], [NhanViensIdNhanVien], [IdNhanVien], [Id_NguoiTiem]) VALUES (46, N'DM046', N'Văn thanh', N'09302032', N'Thanh@gmail.com', CAST(N'2020-07-27T15:52:22.7774412' AS DateTime2), N'Văn B', NULL, 990000, NULL, 3, 11)
INSERT [dbo].[PhieuDatMuaTrucTieps] ([ID_PhieuDMTT], [MAPhieu_DMTT], [HoTenngDM], [SDT_NguoiDM], [Email_ngDM], [NgayDatMuaTT], [HoTen_NgTiem], [GioiTinh_ngTiem], [TongTienDM], [NhanViensIdNhanVien], [IdNhanVien], [Id_NguoiTiem]) VALUES (47, N'DM047', N'tui là tui', N'0546323131', N'Tui@gmail.com', CAST(N'2020-07-27T16:01:47.6601473' AS DateTime2), N'Hùng Dũng', NULL, 2803000, NULL, 3, 12)
INSERT [dbo].[PhieuDatMuaTrucTieps] ([ID_PhieuDMTT], [MAPhieu_DMTT], [HoTenngDM], [SDT_NguoiDM], [Email_ngDM], [NgayDatMuaTT], [HoTen_NgTiem], [GioiTinh_ngTiem], [TongTienDM], [NhanViensIdNhanVien], [IdNhanVien], [Id_NguoiTiem]) VALUES (48, N'DM048', N'DÂDASDADSA', N'4322424244', N'@GMAIL.COM', CAST(N'2020-07-27T16:13:04.0677728' AS DateTime2), N'Trần văn cường', NULL, 1813000, NULL, 3, 13)
INSERT [dbo].[PhieuDatMuaTrucTieps] ([ID_PhieuDMTT], [MAPhieu_DMTT], [HoTenngDM], [SDT_NguoiDM], [Email_ngDM], [NgayDatMuaTT], [HoTen_NgTiem], [GioiTinh_ngTiem], [TongTienDM], [NhanViensIdNhanVien], [IdNhanVien], [Id_NguoiTiem]) VALUES (49, N'DM049', N'dsadadsad', N'444444444', N'đâsdadadad', CAST(N'2020-07-27T16:16:48.2294057' AS DateTime2), N'Hùng Dũng', NULL, 2030000, NULL, 3, 12)
INSERT [dbo].[PhieuDatMuaTrucTieps] ([ID_PhieuDMTT], [MAPhieu_DMTT], [HoTenngDM], [SDT_NguoiDM], [Email_ngDM], [NgayDatMuaTT], [HoTen_NgTiem], [GioiTinh_ngTiem], [TongTienDM], [NhanViensIdNhanVien], [IdNhanVien], [Id_NguoiTiem]) VALUES (50, N'DM050', N'dddddd', N'3131313213', N'dddddddddđ', CAST(N'2020-07-27T16:19:38.6936170' AS DateTime2), N'Văn B', NULL, 1800000, NULL, 3, 11)
INSERT [dbo].[PhieuDatMuaTrucTieps] ([ID_PhieuDMTT], [MAPhieu_DMTT], [HoTenngDM], [SDT_NguoiDM], [Email_ngDM], [NgayDatMuaTT], [HoTen_NgTiem], [GioiTinh_ngTiem], [TongTienDM], [NhanViensIdNhanVien], [IdNhanVien], [Id_NguoiTiem]) VALUES (51, N'DM051', N'ttttttttttttt', N'555555555', N't@gmail.com', CAST(N'2020-07-27T16:29:08.1059460' AS DateTime2), N'Văn B', NULL, 1800000, NULL, 3, 11)
INSERT [dbo].[PhieuDatMuaTrucTieps] ([ID_PhieuDMTT], [MAPhieu_DMTT], [HoTenngDM], [SDT_NguoiDM], [Email_ngDM], [NgayDatMuaTT], [HoTen_NgTiem], [GioiTinh_ngTiem], [TongTienDM], [NhanViensIdNhanVien], [IdNhanVien], [Id_NguoiTiem]) VALUES (53, N'DM053', N'cường', N'5555555555', N'C@gmail.com', CAST(N'2020-07-27T17:25:13.0699108' AS DateTime2), N'Văn B', NULL, 1800000, NULL, 3, 11)
INSERT [dbo].[PhieuDatMuaTrucTieps] ([ID_PhieuDMTT], [MAPhieu_DMTT], [HoTenngDM], [SDT_NguoiDM], [Email_ngDM], [NgayDatMuaTT], [HoTen_NgTiem], [GioiTinh_ngTiem], [TongTienDM], [NhanViensIdNhanVien], [IdNhanVien], [Id_NguoiTiem]) VALUES (61, NULL, NULL, NULL, NULL, CAST(N'1998-11-06T00:00:00.0000000' AS DateTime2), NULL, NULL, 0, NULL, 3, 11)
INSERT [dbo].[PhieuDatMuaTrucTieps] ([ID_PhieuDMTT], [MAPhieu_DMTT], [HoTenngDM], [SDT_NguoiDM], [Email_ngDM], [NgayDatMuaTT], [HoTen_NgTiem], [GioiTinh_ngTiem], [TongTienDM], [NhanViensIdNhanVien], [IdNhanVien], [Id_NguoiTiem]) VALUES (62, NULL, NULL, NULL, NULL, CAST(N'2020-11-06T00:00:00.0000000' AS DateTime2), NULL, NULL, 0, NULL, 3, NULL)
INSERT [dbo].[PhieuDatMuaTrucTieps] ([ID_PhieuDMTT], [MAPhieu_DMTT], [HoTenngDM], [SDT_NguoiDM], [Email_ngDM], [NgayDatMuaTT], [HoTen_NgTiem], [GioiTinh_ngTiem], [TongTienDM], [NhanViensIdNhanVien], [IdNhanVien], [Id_NguoiTiem]) VALUES (63, NULL, NULL, NULL, NULL, CAST(N'2020-11-06T00:00:00.0000000' AS DateTime2), NULL, NULL, 0, NULL, 3, NULL)
INSERT [dbo].[PhieuDatMuaTrucTieps] ([ID_PhieuDMTT], [MAPhieu_DMTT], [HoTenngDM], [SDT_NguoiDM], [Email_ngDM], [NgayDatMuaTT], [HoTen_NgTiem], [GioiTinh_ngTiem], [TongTienDM], [NhanViensIdNhanVien], [IdNhanVien], [Id_NguoiTiem]) VALUES (64, N'DM064', N'cường khùng', N'0376700463', N'macthienchicuong@gmail.com', CAST(N'2020-07-27T18:55:23.2507148' AS DateTime2), N'Văn B', NULL, 1015000, NULL, 3, 11)
SET IDENTITY_INSERT [dbo].[PhieuDatMuaTrucTieps] OFF
SET IDENTITY_INSERT [dbo].[PhieuNhapVaccines] ON 

INSERT [dbo].[PhieuNhapVaccines] ([Id_PhieuNhap], [Ma_PhieuNhap], [nhanvienIdNhanVien], [IdNhanVien], [NgayNhapVaccine], [TongTienTT]) VALUES (46, N'PN046', NULL, 2, CAST(N'2020-07-23T15:31:51.9730064' AS DateTime2), 5E+07)
INSERT [dbo].[PhieuNhapVaccines] ([Id_PhieuNhap], [Ma_PhieuNhap], [nhanvienIdNhanVien], [IdNhanVien], [NgayNhapVaccine], [TongTienTT]) VALUES (47, N'PN047', NULL, 2, CAST(N'2020-07-23T15:31:51.9730064' AS DateTime2), 1400000)
INSERT [dbo].[PhieuNhapVaccines] ([Id_PhieuNhap], [Ma_PhieuNhap], [nhanvienIdNhanVien], [IdNhanVien], [NgayNhapVaccine], [TongTienTT]) VALUES (48, N'PN048', NULL, 2, CAST(N'2020-07-23T15:31:51.9730064' AS DateTime2), 1E+07)
INSERT [dbo].[PhieuNhapVaccines] ([Id_PhieuNhap], [Ma_PhieuNhap], [nhanvienIdNhanVien], [IdNhanVien], [NgayNhapVaccine], [TongTienTT]) VALUES (49, N'PN049', NULL, 4, CAST(N'2020-07-23T16:13:45.8199232' AS DateTime2), 500000)
INSERT [dbo].[PhieuNhapVaccines] ([Id_PhieuNhap], [Ma_PhieuNhap], [nhanvienIdNhanVien], [IdNhanVien], [NgayNhapVaccine], [TongTienTT]) VALUES (50, N'PN050', NULL, 4, CAST(N'2020-07-23T16:20:06.0409351' AS DateTime2), 6000000)
INSERT [dbo].[PhieuNhapVaccines] ([Id_PhieuNhap], [Ma_PhieuNhap], [nhanvienIdNhanVien], [IdNhanVien], [NgayNhapVaccine], [TongTienTT]) VALUES (51, N'PN051', NULL, 3, CAST(N'2020-07-27T18:18:06.2798282' AS DateTime2), 5000000)
INSERT [dbo].[PhieuNhapVaccines] ([Id_PhieuNhap], [Ma_PhieuNhap], [nhanvienIdNhanVien], [IdNhanVien], [NgayNhapVaccine], [TongTienTT]) VALUES (52, N'PN052', NULL, 3, CAST(N'2020-07-27T18:27:52.2943668' AS DateTime2), 5000000)
SET IDENTITY_INSERT [dbo].[PhieuNhapVaccines] OFF
SET IDENTITY_INSERT [dbo].[QuanLiTK_KHs] ON 

INSERT [dbo].[QuanLiTK_KHs] ([ID_TaiKhoanKH], [Ma_TaiKhoanKH], [HoTen], [SDT], [Email], [MatKhau], [LoaiTK]) VALUES (1, N'TK01', N'Chí Cường', N'0376700463', N'macthienchicuong@gmail.com', N'123456', N'khachhang')
INSERT [dbo].[QuanLiTK_KHs] ([ID_TaiKhoanKH], [Ma_TaiKhoanKH], [HoTen], [SDT], [Email], [MatKhau], [LoaiTK]) VALUES (2, N'TK02', N'Thanh Hồng', N'0632165686', N'thanhhong@gmail.com', N'123456', N'khachhang')
INSERT [dbo].[QuanLiTK_KHs] ([ID_TaiKhoanKH], [Ma_TaiKhoanKH], [HoTen], [SDT], [Email], [MatKhau], [LoaiTK]) VALUES (3, N'TK03', N'Hà Trân ', N'0346864497', N'hatran@gmail.com', N'123456', N'Admin')
SET IDENTITY_INSERT [dbo].[QuanLiTK_KHs] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoanNVs] ON 

INSERT [dbo].[TaiKhoanNVs] ([ID_TaiKhoanNV], [MaTK], [MaNhanVien], [TenDN_NV], [MK_NV], [Loai_TKNV]) VALUES (6, N'NV02', N'NV02', N'thuan', N'1', N'TK_NV Bán hàng')
INSERT [dbo].[TaiKhoanNVs] ([ID_TaiKhoanNV], [MaTK], [MaNhanVien], [TenDN_NV], [MK_NV], [Loai_TKNV]) VALUES (8, N'NV01', N'NV01', N'abc', N'2', N'Tk_Admin')
INSERT [dbo].[TaiKhoanNVs] ([ID_TaiKhoanNV], [MaTK], [MaNhanVien], [TenDN_NV], [MK_NV], [Loai_TKNV]) VALUES (9, N'NV03', N'NV03', N'cuong', N'1', N'TK_NV Bán hàng')
SET IDENTITY_INSERT [dbo].[TaiKhoanNVs] OFF
SET IDENTITY_INSERT [dbo].[ThongTinNguoiTiemPhongs] ON 

INSERT [dbo].[ThongTinNguoiTiemPhongs] ([ID_NguoiTP], [MaNguoiTP], [SDT_NgTP], [Dchi_ngTP], [TenNg_DKTP], [CMND_NgDKTP], [NgaySinh_NgDKTP], [SDT_NgDKTP], [Dchi_NguoiDKTP], [Gioitinh]) VALUES (4, N'KH04', NULL, N'tphcm', N'Minh thuận', NULL, CAST(N'2020-07-07T12:51:31.0000000' AS DateTime2), NULL, NULL, N'Nam')
INSERT [dbo].[ThongTinNguoiTiemPhongs] ([ID_NguoiTP], [MaNguoiTP], [SDT_NgTP], [Dchi_ngTP], [TenNg_DKTP], [CMND_NgDKTP], [NgaySinh_NgDKTP], [SDT_NgDKTP], [Dchi_NguoiDKTP], [Gioitinh]) VALUES (5, N'KH05', NULL, N'TPHCM', N'CHÍ CƯỜNG', NULL, CAST(N'2020-07-21T11:51:18.3751255' AS DateTime2), NULL, NULL, N'Nam')
INSERT [dbo].[ThongTinNguoiTiemPhongs] ([ID_NguoiTP], [MaNguoiTP], [SDT_NgTP], [Dchi_ngTP], [TenNg_DKTP], [CMND_NgDKTP], [NgaySinh_NgDKTP], [SDT_NgDKTP], [Dchi_NguoiDKTP], [Gioitinh]) VALUES (8, N'KH08', NULL, N'Tiền giang', N'Văn Thắng', NULL, CAST(N'2020-06-29T12:09:24.0000000' AS DateTime2), NULL, NULL, N'Nam')
INSERT [dbo].[ThongTinNguoiTiemPhongs] ([ID_NguoiTP], [MaNguoiTP], [SDT_NgTP], [Dchi_ngTP], [TenNg_DKTP], [CMND_NgDKTP], [NgaySinh_NgDKTP], [SDT_NgDKTP], [Dchi_NguoiDKTP], [Gioitinh]) VALUES (10, N'KH010', NULL, N'tphcm', N'Nguyễn minh Thuận', NULL, CAST(N'2020-07-26T17:37:52.8666208' AS DateTime2), NULL, NULL, N'Nam')
INSERT [dbo].[ThongTinNguoiTiemPhongs] ([ID_NguoiTP], [MaNguoiTP], [SDT_NgTP], [Dchi_ngTP], [TenNg_DKTP], [CMND_NgDKTP], [NgaySinh_NgDKTP], [SDT_NgDKTP], [Dchi_NguoiDKTP], [Gioitinh]) VALUES (11, N'KH011', NULL, N'Tây ninh', N'Văn B', NULL, CAST(N'2020-07-27T15:32:52.0587526' AS DateTime2), NULL, NULL, N'Nam')
INSERT [dbo].[ThongTinNguoiTiemPhongs] ([ID_NguoiTP], [MaNguoiTP], [SDT_NgTP], [Dchi_ngTP], [TenNg_DKTP], [CMND_NgDKTP], [NgaySinh_NgDKTP], [SDT_NgDKTP], [Dchi_NguoiDKTP], [Gioitinh]) VALUES (12, N'KH012', NULL, N'Quảng nam', N'Hùng Dũng', NULL, CAST(N'2020-07-27T16:01:47.6411989' AS DateTime2), NULL, NULL, N'Nam')
INSERT [dbo].[ThongTinNguoiTiemPhongs] ([ID_NguoiTP], [MaNguoiTP], [SDT_NgTP], [Dchi_ngTP], [TenNg_DKTP], [CMND_NgDKTP], [NgaySinh_NgDKTP], [SDT_NgDKTP], [Dchi_NguoiDKTP], [Gioitinh]) VALUES (13, N'KH013', NULL, N'Hà nội', N'Trần văn cường', NULL, CAST(N'2020-07-27T16:13:04.0488228' AS DateTime2), NULL, NULL, N'Nam')
SET IDENTITY_INSERT [dbo].[ThongTinNguoiTiemPhongs] OFF
SET IDENTITY_INSERT [dbo].[ThongTinTaiKhoans] ON 

INSERT [dbo].[ThongTinTaiKhoans] ([ID_TKKH], [MaTTKH], [tkkhsID_TaiKhoanKH], [ID_TaiKhoanKH], [SDT_TK], [Dchi_TK], [HoTen_TK], [Gioitinh_TK], [NgaySinh_ngTk]) VALUES (1, N'MaKH01', NULL, 1, N'0376700464', N'Tân Phú', N'Nguyễn Minh Quân Khùng', N'Nam', CAST(N'2020-07-10T11:42:10.9790000' AS DateTime2))
INSERT [dbo].[ThongTinTaiKhoans] ([ID_TKKH], [MaTTKH], [tkkhsID_TaiKhoanKH], [ID_TaiKhoanKH], [SDT_TK], [Dchi_TK], [HoTen_TK], [Gioitinh_TK], [NgaySinh_ngTk]) VALUES (2, N'MKH310720201362001', NULL, 3, N'0129456789', N'Cái Bè', N'Phạm Hồng Thắm', N'Nữ', CAST(N'1998-06-11T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ThongTinTaiKhoans] OFF
SET IDENTITY_INSERT [dbo].[Vaccines] ON 

INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (1, N'PTX5I1', N'Pentaxim (5 in 1)', CAST(N'2020-06-05T16:53:09.9460000' AS DateTime2), CAST(N'2025-06-05T16:53:09.9460000' AS DateTime2), 785000, 500000, N'Pháp', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 1, N'	Bạch hầu, ho gà, uốn ván, bại liệt và HIB', 148)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (2, N'IFXHX', N'Infanrix Hexa	', CAST(N'2019-06-05T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 1015000, 700000, N'Bỉ', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 1, N'	Bạch hầu, ho gà, uốn ván, bại liệt, HIB và viêm gan B', 60)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (3, N'HXXF', N'Hexaxim', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 1015000, 600000, N'Pháp', N'Còn Hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 1, N'	Bạch hầu, ho gà, uốn ván, bại liệt, HIB và viêm gan B', 80)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (4, N'RTTU', N'Rotateq', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 798000, 500000, N'Mỹ', N'Hết Hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 1, N'Rota virus', 80)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (5, N'RTTB', N'Rotatrix', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 990000, 600000, N'BỈ', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 1, N'Rota virus', 80)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (6, N'RTTVN', N'Rotavin', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 588000, 300000, N'Việt Nam', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 1, N'Rota virus', 80)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (7, N'SFXB', N'Synflorix', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 1254000, 400000, N'Bỉ', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 1, N'Các bệnh do phế cầu', 50)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (8, N'PVN13E', N'Prevenar 13', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 1548000, 400000, N'Anh', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 2, N'Các bệnh do phế cầu', 80)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (9, N'BCGVN', N'BCG', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 150000, 10000, N'Việt Nam', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 2, N'Lao', 80)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (10, N'EGXBB', N'Engerix B 1ml', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 282000, 50000, N'Bỉ', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 2, N'Viêm gan B người lớn', 80)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (11, N'EVXBK', N'Euvax B 1ml', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 204000, 45000, N'Hàn Quốc', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 2, N'Viêm gan B người lớn', 80)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (12, N'EVXBCK', N'Euvax B 0.5ml', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 140000, 20000, N'Hàn Quốc', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 2, N'Viêm gan B trẻ em', 80)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (13, N'HPVGCK', N'Hepavax Gene 0.5ml', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 174000, 30000, N'Hàn Quốc', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 2, N'Viêm gan B trẻ em', 80)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (14, N'EGXBCK', N'Engerix B 0,5ml', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 228000, 105000, N'Bỉ', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 2, N'Viêm gan B trẻ em', 80)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (15, N'EGXBCK', N'Mengoc BC', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 354000, 110000, N'Cu Ba', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 2, N'Viêm màng não mô cầu BC', 50)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (16, N'MNTACYWE', N'Menactra', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 635000, 1512000, N'Mỹ', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 2, N'Viêm màng não mô cầu ACYW', 62)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (17, N'MVVCVN', N'MVVac (Lọ 5ml)', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 378000, 120000, N'Việt Nam', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 2, N'Sởi', 68)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (18, N'MVVCLLVN', N'MVVac (Liều 0.5ml)', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 216000, 80000, N'Việt Nam', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 2, N'Sởi', 62)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (19, N'MMRIIU', N'MMR II (3 in 1)', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 366000, 80000, N'Mỹ', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 3, N'Sởi – Quai bị – Rubella', 50)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (20, N'MMRIIIN', N'MMR (3 in 1)', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 238000, 80000, N'ẤN Độ', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 3, N'Sởi – Quai bị – Rubella', 80)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (21, N'VRXU', N'Varivax', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 1032000, 300000, N'Mỹ', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 3, N'Thủy đậu', 50)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (22, N'VRLLU', N'Varicella', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 840000, 210000, N'Hanf Quốc', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 3, N'Thủy đậu', 80)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (23, N'VXPF', N'Vaxigrip 0.25ml', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 366000, 110000, N'Pháp', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 3, N'Cúm (trẻ em <3 tuổi)', 50)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (24, N'IFC05N', N'Influvac 0.5ml', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 418000, 50000, N'Hà Lan', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 3, N'Cúm (trẻ em >3 tuổi)', 80)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (25, N'GCFC05K', N'GC Flu 0,5ml', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 288000, 30000, N'Hàn Quốc', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 3, N'Cúm (trẻ em >3 tuổi)', 80)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (26, N'VXP05F', N'Vaxigrip 0.5ml', CAST(N'2019-04-03T16:53:09.9460000' AS DateTime2), CAST(N'2022-06-05T16:53:09.9460000' AS DateTime2), 426000, 130000, N'Pháp', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 3, N'Cúm (trẻ em >3 tuổi)', 77)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (27, N'IJVTL', N'imojev', CAST(N'2020-06-06T12:07:22.7400000' AS DateTime2), CAST(N'2023-06-06T12:07:22.7400000' AS DateTime2), 898000, 300000, N'Thái Lan', N'string', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 3, N'Viêm não Nhật Bản', 62)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (28, N'JVVN1ML', N'Jevax 1ml', CAST(N'2020-06-06T12:07:22.7400000' AS DateTime2), CAST(N'2023-06-06T12:07:22.7400000' AS DateTime2), 204000, 50000, N'Việt Nam', N'Còn hàng', N'https://shop.vnvc.vn/image/cache/catalog/GVX%20Hexaxim-Rotarix%200-12-500x500.jpg', NULL, 3, N'Viêm não Nhật Bản', 80)
INSERT [dbo].[Vaccines] ([Id_Vaccine], [Ma_Vaccine], [TenVaccine], [NgaySX], [HSD], [GiaBan], [GiaNhap], [NuocSX], [TinhTrang], [AnhVaccine], [NccsId_NCC], [Id_NCC], [PhongBenh], [SoLuong]) VALUES (29, N'VC00', N'Pentaxim (5 in 1)', CAST(N'2020-06-05T16:53:09.0000000' AS DateTime2), CAST(N'2025-06-05T16:53:09.0000000' AS DateTime2), 785000, 500000, N'Pháp', NULL, NULL, NULL, 1, N'	Bạch hầu, ho gà, uốn ván, bại liệt và HIB', 10)
SET IDENTITY_INSERT [dbo].[Vaccines] OFF
ALTER TABLE [dbo].[BacSis]  WITH CHECK ADD  CONSTRAINT [FK_BacSis_TaiKhoanNVs_TaiKhoanNVID_TaiKhoanNV] FOREIGN KEY([TaiKhoanNVID_TaiKhoanNV])
REFERENCES [dbo].[TaiKhoanNVs] ([ID_TaiKhoanNV])
GO
ALTER TABLE [dbo].[BacSis] CHECK CONSTRAINT [FK_BacSis_TaiKhoanNVs_TaiKhoanNVID_TaiKhoanNV]
GO
ALTER TABLE [dbo].[ChiTietGoiVaccines]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGoiVaccines_GoiVaccines_goiVaccineId_GoiVC] FOREIGN KEY([goiVaccineId_GoiVC])
REFERENCES [dbo].[GoiVaccines] ([Id_GoiVC])
GO
ALTER TABLE [dbo].[ChiTietGoiVaccines] CHECK CONSTRAINT [FK_ChiTietGoiVaccines_GoiVaccines_goiVaccineId_GoiVC]
GO
ALTER TABLE [dbo].[ChiTietGoiVaccines]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGoiVaccines_Vaccines_vaccineId_Vaccine] FOREIGN KEY([vaccineId_Vaccine])
REFERENCES [dbo].[Vaccines] ([Id_Vaccine])
GO
ALTER TABLE [dbo].[ChiTietGoiVaccines] CHECK CONSTRAINT [FK_ChiTietGoiVaccines_Vaccines_vaccineId_Vaccine]
GO
ALTER TABLE [dbo].[ChiTietLichSuTiemPhongs]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietLichSuTiemPhongs_BacSis_NguoiTiemThuocId_BacSi] FOREIGN KEY([NguoiTiemThuocId_BacSi])
REFERENCES [dbo].[BacSis] ([Id_BacSi])
GO
ALTER TABLE [dbo].[ChiTietLichSuTiemPhongs] CHECK CONSTRAINT [FK_ChiTietLichSuTiemPhongs_BacSis_NguoiTiemThuocId_BacSi]
GO
ALTER TABLE [dbo].[ChiTietLichSuTiemPhongs]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietLichSuTiemPhongs_LichSuTiemPhongs_LichSuTiemPhongId_LichSuTiemPhong] FOREIGN KEY([LichSuTiemPhongId_LichSuTiemPhong])
REFERENCES [dbo].[LichSuTiemPhongs] ([Id_LichSuTiemPhong])
GO
ALTER TABLE [dbo].[ChiTietLichSuTiemPhongs] CHECK CONSTRAINT [FK_ChiTietLichSuTiemPhongs_LichSuTiemPhongs_LichSuTiemPhongId_LichSuTiemPhong]
GO
ALTER TABLE [dbo].[ChiTietLichSuTiemPhongs]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietLichSuTiemPhongs_Vaccines_IdVaccineId_Vaccine] FOREIGN KEY([IdVaccineId_Vaccine])
REFERENCES [dbo].[Vaccines] ([Id_Vaccine])
GO
ALTER TABLE [dbo].[ChiTietLichSuTiemPhongs] CHECK CONSTRAINT [FK_ChiTietLichSuTiemPhongs_Vaccines_IdVaccineId_Vaccine]
GO
ALTER TABLE [dbo].[ChiTietLichTiemPhongs]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietLichTiemPhongs_LichTiemPhongs_LichTiemPhongId_LichTiemPhong] FOREIGN KEY([LichTiemPhongId_LichTiemPhong])
REFERENCES [dbo].[LichTiemPhongs] ([Id_LichTiemPhong])
GO
ALTER TABLE [dbo].[ChiTietLichTiemPhongs] CHECK CONSTRAINT [FK_ChiTietLichTiemPhongs_LichTiemPhongs_LichTiemPhongId_LichTiemPhong]
GO
ALTER TABLE [dbo].[ChiTietLichTiemPhongs]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietLichTiemPhongs_Vaccines_VaccineId_Vaccine] FOREIGN KEY([VaccineId_Vaccine])
REFERENCES [dbo].[Vaccines] ([Id_Vaccine])
GO
ALTER TABLE [dbo].[ChiTietLichTiemPhongs] CHECK CONSTRAINT [FK_ChiTietLichTiemPhongs_Vaccines_VaccineId_Vaccine]
GO
ALTER TABLE [dbo].[ChiTietPhieuDatMuaOnlines]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuDatMuaOnlines_PhieuDatMuaOnlines_PhieuDmOnlineID_PhieuDmOnline] FOREIGN KEY([PhieuDmOnlineID_PhieuDmOnline])
REFERENCES [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline])
GO
ALTER TABLE [dbo].[ChiTietPhieuDatMuaOnlines] CHECK CONSTRAINT [FK_ChiTietPhieuDatMuaOnlines_PhieuDatMuaOnlines_PhieuDmOnlineID_PhieuDmOnline]
GO
ALTER TABLE [dbo].[ChiTietPhieuDatMuaOnlines]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuDatMuaOnlines_Vaccines_vaccineId_Vaccine] FOREIGN KEY([vaccineId_Vaccine])
REFERENCES [dbo].[Vaccines] ([Id_Vaccine])
GO
ALTER TABLE [dbo].[ChiTietPhieuDatMuaOnlines] CHECK CONSTRAINT [FK_ChiTietPhieuDatMuaOnlines_Vaccines_vaccineId_Vaccine]
GO
ALTER TABLE [dbo].[ChiTietPhieuDatMuaTTs]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuDatMuaTTs_PhieuDatMuaTrucTieps_phieuDatMuaTrucTiepID_PhieuDMTT] FOREIGN KEY([phieuDatMuaTrucTiepID_PhieuDMTT])
REFERENCES [dbo].[PhieuDatMuaTrucTieps] ([ID_PhieuDMTT])
GO
ALTER TABLE [dbo].[ChiTietPhieuDatMuaTTs] CHECK CONSTRAINT [FK_ChiTietPhieuDatMuaTTs_PhieuDatMuaTrucTieps_phieuDatMuaTrucTiepID_PhieuDMTT]
GO
ALTER TABLE [dbo].[ChiTietPhieuDatMuaTTs]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuDatMuaTTs_Vaccines_vaccineId_Vaccine] FOREIGN KEY([vaccineId_Vaccine])
REFERENCES [dbo].[Vaccines] ([Id_Vaccine])
GO
ALTER TABLE [dbo].[ChiTietPhieuDatMuaTTs] CHECK CONSTRAINT [FK_ChiTietPhieuDatMuaTTs_Vaccines_vaccineId_Vaccine]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapVaccines]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhapVaccines_PhieuNhapVaccines_PhieuNhapVCId_PhieuNhap] FOREIGN KEY([PhieuNhapVCId_PhieuNhap])
REFERENCES [dbo].[PhieuNhapVaccines] ([Id_PhieuNhap])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapVaccines] CHECK CONSTRAINT [FK_ChiTietPhieuNhapVaccines_PhieuNhapVaccines_PhieuNhapVCId_PhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapVaccines]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhapVaccines_Vaccines_VaccineId_Vaccine] FOREIGN KEY([VaccineId_Vaccine])
REFERENCES [dbo].[Vaccines] ([Id_Vaccine])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapVaccines] CHECK CONSTRAINT [FK_ChiTietPhieuNhapVaccines_Vaccines_VaccineId_Vaccine]
GO
ALTER TABLE [dbo].[CtGioHangs]  WITH CHECK ADD  CONSTRAINT [FK_CtGioHangs_GioHangs_IdctGh_GioHangId_GioHang] FOREIGN KEY([IdctGh_GioHangId_GioHang])
REFERENCES [dbo].[GioHangs] ([Id_GioHang])
GO
ALTER TABLE [dbo].[CtGioHangs] CHECK CONSTRAINT [FK_CtGioHangs_GioHangs_IdctGh_GioHangId_GioHang]
GO
ALTER TABLE [dbo].[CtGioHangs]  WITH CHECK ADD  CONSTRAINT [FK_CtGioHangs_GoiVaccines_IdctGh_IdGoiVCId_GoiVC] FOREIGN KEY([IdctGh_IdGoiVCId_GoiVC])
REFERENCES [dbo].[GoiVaccines] ([Id_GoiVC])
GO
ALTER TABLE [dbo].[CtGioHangs] CHECK CONSTRAINT [FK_CtGioHangs_GoiVaccines_IdctGh_IdGoiVCId_GoiVC]
GO
ALTER TABLE [dbo].[CtGioHangs]  WITH CHECK ADD  CONSTRAINT [FK_CtGioHangs_Vaccines_IdctGh_IdGVCId_Vaccine] FOREIGN KEY([IdctGh_IdGVCId_Vaccine])
REFERENCES [dbo].[Vaccines] ([Id_Vaccine])
GO
ALTER TABLE [dbo].[CtGioHangs] CHECK CONSTRAINT [FK_CtGioHangs_Vaccines_IdctGh_IdGVCId_Vaccine]
GO
ALTER TABLE [dbo].[GioHangs]  WITH CHECK ADD  CONSTRAINT [FK_GioHangs_QuanLiTK_KHs_IdKh_GioHangID_TaiKhoanKH] FOREIGN KEY([IdKh_GioHangID_TaiKhoanKH])
REFERENCES [dbo].[QuanLiTK_KHs] ([ID_TaiKhoanKH])
GO
ALTER TABLE [dbo].[GioHangs] CHECK CONSTRAINT [FK_GioHangs_QuanLiTK_KHs_IdKh_GioHangID_TaiKhoanKH]
GO
ALTER TABLE [dbo].[GoiVaccines]  WITH CHECK ADD  CONSTRAINT [FK_GoiVaccines_DanhMucGoiVCs_IdDanhMucGoivcIdDanhMuc] FOREIGN KEY([IdDanhMucGoivcIdDanhMuc])
REFERENCES [dbo].[DanhMucGoiVCs] ([IdDanhMuc])
GO
ALTER TABLE [dbo].[GoiVaccines] CHECK CONSTRAINT [FK_GoiVaccines_DanhMucGoiVCs_IdDanhMucGoivcIdDanhMuc]
GO
ALTER TABLE [dbo].[HoSoSucKhoeKHs]  WITH CHECK ADD  CONSTRAINT [FK_HoSoSucKhoeKHs_BacSis_BacSiKhamId_BacSi] FOREIGN KEY([BacSiKhamId_BacSi])
REFERENCES [dbo].[BacSis] ([Id_BacSi])
GO
ALTER TABLE [dbo].[HoSoSucKhoeKHs] CHECK CONSTRAINT [FK_HoSoSucKhoeKHs_BacSis_BacSiKhamId_BacSi]
GO
ALTER TABLE [dbo].[HoSoSucKhoeKHs]  WITH CHECK ADD  CONSTRAINT [FK_HoSoSucKhoeKHs_ThongTinNguoiTiemPhongs_NguoiDuocKhamID_NguoiTP] FOREIGN KEY([NguoiDuocKhamID_NguoiTP])
REFERENCES [dbo].[ThongTinNguoiTiemPhongs] ([ID_NguoiTP])
GO
ALTER TABLE [dbo].[HoSoSucKhoeKHs] CHECK CONSTRAINT [FK_HoSoSucKhoeKHs_ThongTinNguoiTiemPhongs_NguoiDuocKhamID_NguoiTP]
GO
ALTER TABLE [dbo].[LichSuTiemPhongs]  WITH CHECK ADD  CONSTRAINT [FK_LichSuTiemPhongs_ThongTinNguoiTiemPhongs_IdQuanLiNguoiTPID_NguoiTP] FOREIGN KEY([IdQuanLiNguoiTPID_NguoiTP])
REFERENCES [dbo].[ThongTinNguoiTiemPhongs] ([ID_NguoiTP])
GO
ALTER TABLE [dbo].[LichSuTiemPhongs] CHECK CONSTRAINT [FK_LichSuTiemPhongs_ThongTinNguoiTiemPhongs_IdQuanLiNguoiTPID_NguoiTP]
GO
ALTER TABLE [dbo].[LichTiemPhongs]  WITH CHECK ADD  CONSTRAINT [FK_LichTiemPhongs_BacSis_BacSiId_BacSi] FOREIGN KEY([BacSiId_BacSi])
REFERENCES [dbo].[BacSis] ([Id_BacSi])
GO
ALTER TABLE [dbo].[LichTiemPhongs] CHECK CONSTRAINT [FK_LichTiemPhongs_BacSis_BacSiId_BacSi]
GO
ALTER TABLE [dbo].[LichTiemPhongs]  WITH CHECK ADD  CONSTRAINT [FK_LichTiemPhongs_PhieuDatMuaOnlines_PhieuDatMuaOnlineID_PhieuDmOnline] FOREIGN KEY([PhieuDatMuaOnlineID_PhieuDmOnline])
REFERENCES [dbo].[PhieuDatMuaOnlines] ([ID_PhieuDmOnline])
GO
ALTER TABLE [dbo].[LichTiemPhongs] CHECK CONSTRAINT [FK_LichTiemPhongs_PhieuDatMuaOnlines_PhieuDatMuaOnlineID_PhieuDmOnline]
GO
ALTER TABLE [dbo].[LichTiemPhongs]  WITH CHECK ADD  CONSTRAINT [FK_LichTiemPhongs_PhieuDatMuaTrucTieps_phieuDatMuaTrucTiepID_PhieuDMTT] FOREIGN KEY([phieuDatMuaTrucTiepID_PhieuDMTT])
REFERENCES [dbo].[PhieuDatMuaTrucTieps] ([ID_PhieuDMTT])
GO
ALTER TABLE [dbo].[LichTiemPhongs] CHECK CONSTRAINT [FK_LichTiemPhongs_PhieuDatMuaTrucTieps_phieuDatMuaTrucTiepID_PhieuDMTT]
GO
ALTER TABLE [dbo].[LichTiemPhongs]  WITH CHECK ADD  CONSTRAINT [FK_LichTiemPhongs_ThongTinNguoiTiemPhongs_TTNguoiTiemPhongID_NguoiTP] FOREIGN KEY([TTNguoiTiemPhongID_NguoiTP])
REFERENCES [dbo].[ThongTinNguoiTiemPhongs] ([ID_NguoiTP])
GO
ALTER TABLE [dbo].[LichTiemPhongs] CHECK CONSTRAINT [FK_LichTiemPhongs_ThongTinNguoiTiemPhongs_TTNguoiTiemPhongID_NguoiTP]
GO
ALTER TABLE [dbo].[NguoiTiemPhongs]  WITH CHECK ADD  CONSTRAINT [FK_NguoiTiemPhongs_QuanLiTK_KHs_tkkhsID_TaiKhoanKH] FOREIGN KEY([tkkhsID_TaiKhoanKH])
REFERENCES [dbo].[QuanLiTK_KHs] ([ID_TaiKhoanKH])
GO
ALTER TABLE [dbo].[NguoiTiemPhongs] CHECK CONSTRAINT [FK_NguoiTiemPhongs_QuanLiTK_KHs_tkkhsID_TaiKhoanKH]
GO
ALTER TABLE [dbo].[PhieuDatMuaOnlines]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatMuaOnlines_GioHangs_GioHang_DatHangId_GioHang] FOREIGN KEY([GioHang_DatHangId_GioHang])
REFERENCES [dbo].[GioHangs] ([Id_GioHang])
GO
ALTER TABLE [dbo].[PhieuDatMuaOnlines] CHECK CONSTRAINT [FK_PhieuDatMuaOnlines_GioHangs_GioHang_DatHangId_GioHang]
GO
ALTER TABLE [dbo].[PhieuDatMuaOnlines]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatMuaOnlines_QuanLiTK_KHs_TKKHID_TaiKhoanKH] FOREIGN KEY([TKKHID_TaiKhoanKH])
REFERENCES [dbo].[QuanLiTK_KHs] ([ID_TaiKhoanKH])
GO
ALTER TABLE [dbo].[PhieuDatMuaOnlines] CHECK CONSTRAINT [FK_PhieuDatMuaOnlines_QuanLiTK_KHs_TKKHID_TaiKhoanKH]
GO
ALTER TABLE [dbo].[PhieuDatMuaTrucTieps]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatMuaTrucTieps_NhanViens_NhanViensIdNhanVien] FOREIGN KEY([NhanViensIdNhanVien])
REFERENCES [dbo].[NhanViens] ([IdNhanVien])
GO
ALTER TABLE [dbo].[PhieuDatMuaTrucTieps] CHECK CONSTRAINT [FK_PhieuDatMuaTrucTieps_NhanViens_NhanViensIdNhanVien]
GO
ALTER TABLE [dbo].[PhieuNhapVaccines]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapVaccines_NhanViens_nhanvienIdNhanVien] FOREIGN KEY([nhanvienIdNhanVien])
REFERENCES [dbo].[NhanViens] ([IdNhanVien])
GO
ALTER TABLE [dbo].[PhieuNhapVaccines] CHECK CONSTRAINT [FK_PhieuNhapVaccines_NhanViens_nhanvienIdNhanVien]
GO
ALTER TABLE [dbo].[ThongTinTaiKhoans]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinTaiKhoans_QuanLiTK_KHs_tkkhsID_TaiKhoanKH] FOREIGN KEY([tkkhsID_TaiKhoanKH])
REFERENCES [dbo].[QuanLiTK_KHs] ([ID_TaiKhoanKH])
GO
ALTER TABLE [dbo].[ThongTinTaiKhoans] CHECK CONSTRAINT [FK_ThongTinTaiKhoans_QuanLiTK_KHs_tkkhsID_TaiKhoanKH]
GO
ALTER TABLE [dbo].[Vaccines]  WITH CHECK ADD  CONSTRAINT [FK_Vaccines_NCCs_NccsId_NCC] FOREIGN KEY([NccsId_NCC])
REFERENCES [dbo].[NCCs] ([Id_NCC])
GO
ALTER TABLE [dbo].[Vaccines] CHECK CONSTRAINT [FK_Vaccines_NCCs_NccsId_NCC]
GO
/****** Object:  StoredProcedure [dbo].[ctgoivaccine]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ctgoivaccine] (@id_goivc INT)
AS
BEGIN
SELECT v.PhongBenh,v.TenVaccine, v.NuocSX,c.SoLieu  
FROM GoiVaccines g, ChiTietGoiVaccines c,Vaccines v 
where c.Id_GoiVC= @id_goivc  and c.Id_GoiVC=g.Id_GoiVC and c.Id_Vaccine=v.Id_Vaccine
END
GO
/****** Object:  StoredProcedure [dbo].[doanhthuhangthang]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[doanhthuhangthang]
AS
BEGIN
SELECT MONTH(NgayDatMuaOL) AS THANG,count(distinct Ma_PhieuDmOnline) as soluonghd,SUM(TongTien) AS DOANHTHU
FROM PhieuDatMuaOnlines 
WHERE YEAR(NgayDatMuaOL) = YEAR(GETDATE())
GROUP BY MONTH(NgayDatMuaOL)
END
GO
/****** Object:  StoredProcedure [dbo].[dsgoivac_danhmuc]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dsgoivac_danhmuc] 
AS
BEGIN
select g.Ma_GoiVC,g.TenGoi,d.TenDmuc,g.Id_GoiVC,g.AnhGoiVc,g.Mota,g.TinhTrang,g.LoaiGoi,g.DoTuoiTiem,g.GiaGoiTiem
from GoiVaccines g,DanhMucGoiVCs d
where g.IdDanhMuc= d.IdDanhMuc
END
GO
/****** Object:  StoredProcedure [dbo].[Giohang_Khachhang]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Giohang_Khachhang] (@id_kh INT)
AS
BEGIN
select ct.Id_GoiVC,gvc.AnhGoiVc, gvc.TenGoi,gvc.GiaGoiTiem,ct.Id_GioHang, ct.SoLuong, ct.SoLuong*gvc.GiaGoiTiem as TongTien
from GioHangs g, CtGioHangs ct, GoiVaccines gvc
where g.ID_TaiKhoanKH=@id_kh and  g.Id_GioHang=ct.Id_GioHang and ct.Id_GoiVC=gvc.Id_GoiVC and DAY(g.NgayTao)=Day(GETDATE()) and MONTH(g.NgayTao)=MONTH(GETDATE()) and year(g.NgayTao)=year(GETDATE())
group by ct.Id_GoiVC,AnhGoiVc,TenGoi,GiaGoiTiem,SoLuong,ct.Id_GioHang
END
GO
/****** Object:  StoredProcedure [dbo].[Giohang_vacxin]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Giohang_vacxin] (@id_kh INT)
AS
BEGIN
select ct.Id_Vaccine,vc.AnhVaccine,vc.TenVaccine,vc.GiaBan,ct.SoLuong,ct.Id_GioHang,ct.SoLuong*vc.GiaBan as tongtien
from GioHangs g, CtGioHangs ct, Vaccines vc
where g.ID_TaiKhoanKH=@id_kh and  g.Id_GioHang=ct.Id_GioHang and ct.Id_Vaccine=vc.Id_Vaccine and DAY(g.NgayTao)=Day(GETDATE()) and MONTH(g.NgayTao)=MONTH(GETDATE()) and year(g.NgayTao)=year(GETDATE())
group by  ct.Id_Vaccine,vc.AnhVaccine,vc.TenVaccine,vc.GiaBan,ct.SoLuong,ct.Id_GioHang
END
GO
/****** Object:  StoredProcedure [dbo].[GoiVaccinCuaDH]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GoiVaccinCuaDH] (@id_giohang INT)
AS
BEGIN
select gvc.TenGoi,ctgh.SoLuong,gvc.GiaGoiTiem
from PhieuDatMuaOnlines pm, GioHangs gh, GoiVaccines gvc, CtGioHangs ctgh
where pm.Id_GioHang=@id_giohang and gh.Id_GioHang=ctgh.Id_GioHang and pm.Id_GioHang=ctgh.Id_GioHang and ctgh.Id_GoiVC=gvc.Id_GoiVC
END
GO
/****** Object:  StoredProcedure [dbo].[themvaoctphieumua]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[themvaoctphieumua] (@id_phieumua INT,@sluong INT,@id_vacine INT)
AS
BEGIN
INSERT INTO ChiTietPhieuDatMuaOnlines VALUES('',@id_phieumua,@sluong,'',@id_vacine)
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKedt_TheoNgay]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThongKedt_TheoNgay] (@ngayban Date)
AS
BEGIN
SELECT  NgayDatMuaOL,count(distinct Ma_PhieuDmOnline) as soluonghd, SUM(TongTien) AS DOANHTHU
FROM PhieuDatMuaOnlines 
WHERE NgayDatMuaOL =  @ngayban
GROUP BY NgayDatMuaOL
END
GO
/****** Object:  StoredProcedure [dbo].[Thongkedt_TheoTuan]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Thongkedt_TheoTuan] (@ngaytke date)
as	
begin
SELECT  DATEPART(wk,NgayDatMuaOL) as tuan,count(distinct Ma_PhieuDmOnline) as soluonghd,SUM(TongTien) AS DOANHTHU
FROM PhieuDatMuaOnlines 
WHERE DATEPART(WK, NgayDatMuaOL)=datepart(WK,@ngaytke)
group by NgayDatMuaOL
end
GO
/****** Object:  StoredProcedure [dbo].[ThongKedt_TuNgayDenNgay]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThongKedt_TuNgayDenNgay] (@ngaybd Date,@ngaykt date)
AS
BEGIN
SELECT  NgayDatMuaOL,count(distinct Ma_PhieuDmOnline) as soluonghd,SUM(TongTien) AS DOANHTHU
FROM PhieuDatMuaOnlines 
WHERE NgayDatMuaOL between @ngaybd and @ngaykt
GROUP BY NgayDatMuaOL
END
GO
/****** Object:  StoredProcedure [dbo].[thongkesluongvcban]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongkesluongvcban]
AS
BEGIN
select v.Ma_Vaccine, v.TenVaccine,v.GiaBan, v.SoLuong as sluongcon,Sum(ct.SoLuongDM) as Slmua
from PhieuDatMuaOnlines p,ChiTietPhieuDatMuaOnlines ct ,Vaccines v
where p.ID_PhieuDmOnline=ct.ID_PhieuDmOnline and ct.Id_Vaccine=v.Id_Vaccine
group by v.Ma_Vaccine,v.TenVaccine,v.GiaBan,v.SoLuong
END
GO
/****** Object:  StoredProcedure [dbo].[VaccinCuaDH]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VaccinCuaDH] (@id_giohang INT)
AS
BEGIN
select vc.TenVaccine,ctgh.SoLuong,vc.GiaBan
from PhieuDatMuaOnlines pm, GioHangs gh, Vaccines vc, CtGioHangs ctgh
where pm.Id_GioHang=@id_giohang and gh.Id_GioHang=ctgh.Id_GioHang and pm.Id_GioHang=ctgh.Id_GioHang and ctgh.Id_Vaccine=vc.Id_Vaccine
END
GO
/****** Object:  StoredProcedure [dbo].[vacine_danhmuc]    Script Date: 28-07-2020 5:56:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[vacine_danhmuc] (@id_dmuc INT)
AS
BEGIN
select  g.AnhGoiVc,g.TenGoi,g.Mota,g.GiaGoiTiem,g.Id_GoiVC
from DanhMucGoiVCs d, GoiVaccines g
where d.IdDanhMuc=@id_dmuc  and d.IdDanhMuc=g.IdDanhMuc
END
GO
