USE [master]
GO
/****** Object:  Database [DbOtelYeni]    Script Date: 17.01.2022 14:52:43 ******/
CREATE DATABASE [DbOtelYeni]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbOtelYeni', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DbOtelYeni.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DbOtelYeni_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DbOtelYeni_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DbOtelYeni] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbOtelYeni].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbOtelYeni] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbOtelYeni] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbOtelYeni] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbOtelYeni] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbOtelYeni] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbOtelYeni] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbOtelYeni] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbOtelYeni] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbOtelYeni] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbOtelYeni] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbOtelYeni] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbOtelYeni] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbOtelYeni] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbOtelYeni] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbOtelYeni] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DbOtelYeni] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbOtelYeni] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbOtelYeni] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbOtelYeni] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbOtelYeni] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbOtelYeni] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbOtelYeni] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbOtelYeni] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DbOtelYeni] SET  MULTI_USER 
GO
ALTER DATABASE [DbOtelYeni] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbOtelYeni] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbOtelYeni] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbOtelYeni] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DbOtelYeni]
GO
/****** Object:  Table [dbo].[ilceler]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ilceler](
	[id] [int] NOT NULL,
	[ilce] [nvarchar](255) NULL,
	[sehir] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ilceler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iller]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iller](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sehir] [nvarchar](255) NULL,
 CONSTRAINT [PK_iller] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblAdmin]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblAdmin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kullanici] [nvarchar](20) NULL,
	[Sifre] [nvarchar](20) NULL,
	[Rol] [char](1) NULL,
 CONSTRAINT [PK_TblAdmin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblBirim]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblBirim](
	[BirimID] [int] IDENTITY(1,1) NOT NULL,
	[BirimAd] [nvarchar](50) NULL,
	[Durum] [int] NULL,
 CONSTRAINT [PK_TblBirim] PRIMARY KEY CLUSTERED 
(
	[BirimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblDepartman]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDepartman](
	[DepartmanID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmanAd] [nvarchar](50) NULL,
	[Telefon] [char](4) NULL,
	[Durum] [int] NULL,
 CONSTRAINT [PK_TblDepartman] PRIMARY KEY CLUSTERED 
(
	[DepartmanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblDurum]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDurum](
	[DurumId] [int] IDENTITY(1,1) NOT NULL,
	[DurumAd] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblDurum] PRIMARY KEY CLUSTERED 
(
	[DurumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblEkibimiz]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblEkibimiz](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](50) NULL,
	[Unvan] [nvarchar](50) NULL,
	[Gorsel] [nvarchar](250) NULL,
 CONSTRAINT [PK_TblEkibimiz] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblGorev]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblGorev](
	[GorevID] [int] IDENTITY(1,1) NOT NULL,
	[GorevAd] [nvarchar](50) NULL,
	[Departman] [int] NULL,
	[Durum] [int] NULL,
 CONSTRAINT [PK_TblGorev] PRIMARY KEY CLUSTERED 
(
	[GorevID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblHakkimda]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblHakkimda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Hakkimda1] [nvarchar](1000) NULL,
	[Hakkimda2] [nvarchar](1000) NULL,
	[Hakkimda3] [nvarchar](1000) NULL,
	[Hakkimda4] [nvarchar](1000) NULL,
 CONSTRAINT [PK_TblHakkimda] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbliletisim]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbliletisim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Aciklama] [nvarchar](1000) NULL,
	[Koordinat] [nvarchar](1000) NULL,
	[Telefon] [nvarchar](30) NULL,
	[Mail] [nvarchar](50) NULL,
	[Adres] [nvarchar](250) NULL,
 CONSTRAINT [PK_Tbliletisim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblKasa]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblKasa](
	[KasaID] [int] IDENTITY(1,1) NOT NULL,
	[KasaAdi] [nvarchar](50) NULL,
	[Bakiye] [decimal](18, 2) NULL,
	[Giren] [decimal](18, 2) NULL,
	[Cikan] [decimal](18, 2) NULL,
	[Durum] [int] NULL,
 CONSTRAINT [PK_TblKasa] PRIMARY KEY CLUSTERED 
(
	[KasaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblKasaCikisHareketi]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblKasaCikisHareketi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Aciklama] [nvarchar](250) NULL,
	[Tarih] [date] NULL,
	[Tutar] [decimal](18, 2) NULL,
 CONSTRAINT [PK_TblKasaCikisHareketi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblKasaHareketi]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblKasaHareketi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Misafir] [nvarchar](50) NULL,
	[Tarih] [date] NULL,
	[Tutar] [decimal](18, 2) NULL,
 CONSTRAINT [PK_TblKasaHareketi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblKur]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblKur](
	[KurID] [int] IDENTITY(1,1) NOT NULL,
	[KurAd] [nvarchar](50) NULL,
	[Sembol] [nvarchar](1) NULL,
	[Deger] [decimal](18, 4) NULL,
	[Tarih] [date] NULL,
	[Durum] [int] NULL,
 CONSTRAINT [PK_TblKur] PRIMARY KEY CLUSTERED 
(
	[KurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblMesaj]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblMesaj](
	[MesajID] [int] IDENTITY(1,1) NOT NULL,
	[Gonderen] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
	[Konu] [nvarchar](100) NULL,
	[Mesaj] [nvarchar](1000) NULL,
 CONSTRAINT [PK_TblMesaj] PRIMARY KEY CLUSTERED 
(
	[MesajID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblMesaj2]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblMesaj2](
	[MesajID] [int] IDENTITY(1,1) NOT NULL,
	[Gonderen] [nvarchar](100) NULL,
	[Alici] [nvarchar](100) NULL,
	[Konu] [nvarchar](100) NULL,
	[Mesaj] [nvarchar](max) NULL,
	[Tarih] [date] NULL,
 CONSTRAINT [PK_TblMesaj2] PRIMARY KEY CLUSTERED 
(
	[MesajID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblMisafir]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblMisafir](
	[MisafirID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](50) NULL,
	[TC] [char](11) NULL,
	[Mail] [nvarchar](50) NULL,
	[Telefon] [nvarchar](20) NULL,
	[Adres] [nvarchar](200) NULL,
	[Aciklama] [nvarchar](550) NULL,
	[KimlikFoto1] [nvarchar](100) NULL,
	[KimlikFoto2] [nvarchar](100) NULL,
	[Ulke] [int] NULL,
	[sehir] [int] NULL,
	[ilce] [int] NULL,
	[Durum] [int] NULL,
 CONSTRAINT [PK_TblMisafir] PRIMARY KEY CLUSTERED 
(
	[MisafirID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOda]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOda](
	[OdaID] [int] IDENTITY(1,1) NOT NULL,
	[OdaNo] [char](3) NULL,
	[Kat] [varchar](2) NULL,
	[Kapasite] [char](1) NULL,
	[Aciklama] [nvarchar](200) NULL,
	[Telefon] [char](4) NULL,
	[Durum] [int] NULL,
 CONSTRAINT [PK_TblOda] PRIMARY KEY CLUSTERED 
(
	[OdaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOnRezervasyon]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOnRezervasyon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Mail] [nvarchar](50) NULL,
	[AdSoyad] [nvarchar](50) NULL,
	[GirisTarih] [date] NULL,
	[CikisTarih] [date] NULL,
	[Kisi] [nvarchar](1) NULL,
	[Telefon] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](50) NULL,
	[Tarih] [date] NULL,
 CONSTRAINT [PK_TblOnRezervasyon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblPersonel]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblPersonel](
	[PersonelID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](50) NULL,
	[TC] [char](11) NULL,
	[Adres] [nvarchar](250) NULL,
	[Telefon] [nvarchar](20) NULL,
	[Mail] [nvarchar](50) NULL,
	[IseGirisTarih] [date] NULL,
	[IstenCikisTarih] [date] NULL,
	[Departman] [int] NULL,
	[Gorev] [int] NULL,
	[Aciklama] [nvarchar](250) NULL,
	[KimlikOn] [nvarchar](250) NULL,
	[KimlikArka] [nvarchar](250) NULL,
	[Yetki] [char](1) NULL,
	[Sifre] [nvarchar](20) NULL,
	[Durum] [int] NULL,
 CONSTRAINT [PK_TblPersonel] PRIMARY KEY CLUSTERED 
(
	[PersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblRezervasyon]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblRezervasyon](
	[RezervasyonID] [int] IDENTITY(1,1) NOT NULL,
	[Misafir] [int] NULL,
	[GirisTarih] [date] NULL,
	[CikisTarih] [date] NULL,
	[Kisi] [char](1) NULL,
	[Oda] [int] NULL,
	[RezervasyonAdSoyad] [nvarchar](50) NULL,
	[Kisi1] [int] NULL,
	[Kisi2] [int] NULL,
	[Kisi3] [int] NULL,
	[Telefon] [nvarchar](20) NULL,
	[Aciklama] [nvarchar](500) NULL,
	[Durum] [int] NULL,
	[Toplam] [decimal](18, 2) NULL,
	[KasayaAktar] [bit] NULL,
 CONSTRAINT [PK_TblRezervasyon] PRIMARY KEY CLUSTERED 
(
	[RezervasyonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTelefon]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTelefon](
	[TelefonID] [int] IDENTITY(1,1) NOT NULL,
	[Aciklama] [nvarchar](50) NULL,
	[Telefon] [nvarchar](20) NULL,
	[Durum] [int] NULL,
 CONSTRAINT [PK_TblTelefon] PRIMARY KEY CLUSTERED 
(
	[TelefonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblUlke]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUlke](
	[UlkeID] [int] IDENTITY(1,1) NOT NULL,
	[UlkeAd] [nvarchar](20) NULL,
 CONSTRAINT [PK_TblUlke] PRIMARY KEY CLUSTERED 
(
	[UlkeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblUrun]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUrun](
	[UrunID] [int] IDENTITY(1,1) NOT NULL,
	[UrunAd] [nvarchar](50) NULL,
	[UrunGrup] [int] NULL,
	[Birim] [int] NULL,
	[Fiyat] [decimal](18, 2) NULL,
	[Toplam] [decimal](18, 2) NULL,
	[Kdv] [tinyint] NULL,
	[Durum] [int] NULL,
 CONSTRAINT [PK_TblUrun] PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblUrunGrup]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUrunGrup](
	[UrunGrupID] [int] IDENTITY(1,1) NOT NULL,
	[UrunGrupAd] [nvarchar](50) NULL,
	[Durum] [int] NULL,
 CONSTRAINT [PK_TblUrunGrup] PRIMARY KEY CLUSTERED 
(
	[UrunGrupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblUrunHareket]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUrunHareket](
	[Hareketid] [int] IDENTITY(1,1) NOT NULL,
	[Urun] [int] NULL,
	[HareketTuru] [nvarchar](5) NULL,
	[Miktar] [decimal](18, 2) NULL,
	[Tarih] [date] NULL,
	[Aciklama] [nvarchar](1000) NULL,
	[BirimFiyat] [decimal](18, 2) NULL,
	[ToplamFiyat] [decimal](18, 2) NULL,
 CONSTRAINT [PK_TblUrunHareket] PRIMARY KEY CLUSTERED 
(
	[Hareketid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblYeniKayit]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblYeniKayit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
	[Telefon] [nvarchar](20) NULL,
	[Sifre] [nvarchar](20) NULL,
 CONSTRAINT [PK_TblYeniKayit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ilceler] ON 

INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (1, N'SEYHAN', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (2, N'CEYHAN', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (3, N'FEKE', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (4, N'KARAİSALI', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (5, N'KARATAŞ', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (6, N'KOZAN', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (7, N'POZANTI', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (8, N'SAİMBEYLİ', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (9, N'TUFANBEYLİ', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (10, N'YUMURTALIK', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (11, N'YÜREĞİR', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (12, N'ALADAĞ', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (13, N'İMAMOĞLU', 1)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (14, N'ADIYAMAN MERKEZ', 2)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (15, N'BESNİ', 2)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (16, N'ÇELİKHAN', 2)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (17, N'GERGER', 2)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (18, N'GÖLBAŞI', 2)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (19, N'KAHTA', 2)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (20, N'SAMSAT', 2)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (21, N'SİNCİK', 2)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (22, N'TUT', 2)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (23, N'AFYONMERKEZ', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (24, N'BOLVADİN', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (25, N'ÇAY', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (26, N'DAZKIRI', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (27, N'DİNAR', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (28, N'EMİRDAĞ', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (29, N'İHSANİYE', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (30, N'SANDIKLI', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (31, N'SİNANPAŞA', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (32, N'SULDANDAĞI', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (33, N'ŞUHUT', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (34, N'BAŞMAKÇI', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (35, N'BAYAT', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (36, N'İŞCEHİSAR', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (37, N'ÇOBANLAR', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (38, N'EVCİLER', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (39, N'HOCALAR', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (40, N'KIZILÖREN', 3)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (41, N'AKSARAY MERKEZ', 68)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (42, N'ORTAKÖY', 68)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (43, N'AĞAÇÖREN', 68)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (44, N'GÜZELYURT', 68)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (45, N'SARIYAHŞİ', 68)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (46, N'ESKİL', 68)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (47, N'GÜLAĞAÇ', 68)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (48, N'AMASYA MERKEZ', 5)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (49, N'GÖYNÜÇEK', 5)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (50, N'GÜMÜŞHACIKÖYÜ', 5)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (51, N'MERZİFON', 5)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (52, N'SULUOVA', 5)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (53, N'TAŞOVA', 5)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (54, N'HAMAMÖZÜ', 5)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (55, N'ALTINDAĞ', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (56, N'AYAS', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (57, N'BALA', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (58, N'BEYPAZARI', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (59, N'ÇAMLIDERE', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (60, N'ÇANKAYA', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (61, N'ÇUBUK', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (62, N'ELMADAĞ', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (63, N'GÜDÜL', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (64, N'HAYMANA', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (65, N'KALECİK', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (66, N'KIZILCAHAMAM', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (67, N'NALLIHAN', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (68, N'POLATLI', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (69, N'ŞEREFLİKOÇHİSAR', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (70, N'YENİMAHALLE', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (71, N'GÖLBAŞI', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (72, N'KEÇİÖREN', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (73, N'MAMAK', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (74, N'SİNCAN', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (75, N'KAZAN', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (76, N'AKYURT', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (77, N'ETİMESGUT', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (78, N'EVREN', 6)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (79, N'ANSEKİ', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (80, N'ALANYA', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (81, N'ANTALYA MERKEZİ', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (82, N'ELMALI', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (83, N'FİNİKE', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (84, N'GAZİPAŞA', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (85, N'GÜNDOĞMUŞ', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (86, N'KAŞ', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (87, N'KORKUTELİ', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (88, N'KUMLUCA', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (89, N'MANAVGAT', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (90, N'SERİK', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (91, N'DEMRE', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (92, N'İBRADI', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (93, N'KEMER', 7)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (94, N'ARDAHAN MERKEZ', 75)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (95, N'GÖLE', 75)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (96, N'ÇILDIR', 75)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (97, N'HANAK', 75)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (98, N'POSOF', 75)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (99, N'DAMAL', 75)
GO
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (100, N'ARDANUÇ', 8)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (101, N'ARHAVİ', 8)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (102, N'ARTVİN MERKEZ', 8)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (103, N'BORÇKA', 8)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (104, N'HOPA', 8)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (105, N'ŞAVŞAT', 8)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (106, N'YUSUFELİ', 8)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (107, N'MURGUL', 8)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (108, N'AYDIN MERKEZ', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (109, N'BOZDOĞAN', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (110, N'ÇİNE', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (111, N'GERMENCİK', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (112, N'KARACASU', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (113, N'KOÇARLI', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (114, N'KUŞADASI', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (115, N'KUYUCAK', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (116, N'NAZİLLİ', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (117, N'SÖKE', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (118, N'SULTANHİSAR', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (119, N'YENİPAZAR', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (120, N'BUHARKENT', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (121, N'İNCİRLİOVA', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (122, N'KARPUZLU', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (123, N'KÖŞK', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (124, N'DİDİM', 9)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (125, N'AĞRI MERKEZ', 4)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (126, N'DİYADİN', 4)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (127, N'DOĞUBEYAZIT', 4)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (128, N'ELEŞKİRT', 4)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (129, N'HAMUR', 4)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (130, N'PATNOS', 4)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (131, N'TAŞLIÇAY', 4)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (132, N'TUTAK', 4)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (133, N'AYVALIK', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (134, N'BALIKESİR MERKEZ', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (135, N'BALYA', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (136, N'BANDIRMA', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (137, N'BİGADİÇ', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (138, N'BURHANİYE', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (139, N'DURSUNBEY', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (140, N'EDREMİT', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (141, N'ERDEK', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (142, N'GÖNEN', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (143, N'HAVRAN', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (144, N'İVRİNDİ', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (145, N'KEPSUT', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (146, N'MANYAS', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (147, N'SAVAŞTEPE', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (148, N'SINDIRGI', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (149, N'SUSURLUK', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (150, N'MARMARA', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (151, N'GÖMEÇ', 10)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (152, N'BARTIN MERKEZ', 74)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (153, N'KURUCAŞİLE', 74)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (154, N'ULUS', 74)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (155, N'AMASRA', 74)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (156, N'BATMAN MERKEZ', 72)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (157, N'BEŞİRİ', 72)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (158, N'GERCÜŞ', 72)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (159, N'KOZLUK', 72)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (160, N'SASON', 72)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (161, N'HASANKEYF', 72)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (162, N'BAYBURT MERKEZ', 69)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (163, N'AYDINTEPE', 69)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (164, N'DEMİRÖZÜ', 69)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (165, N'BOLU MERKEZ', 14)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (166, N'GEREDE', 14)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (167, N'GÖYNÜK', 14)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (168, N'KIBRISCIK', 14)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (169, N'MENGEN', 14)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (170, N'MUDURNU', 14)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (171, N'SEBEN', 14)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (172, N'DÖRTDİVAN', 14)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (173, N'YENİÇAĞA', 14)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (174, N'AĞLASUN', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (175, N'BUCAK', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (176, N'BURDUR MERKEZ', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (177, N'GÖLHİSAR', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (178, N'TEFENNİ', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (179, N'YEŞİLOVA', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (180, N'KARAMANLI', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (181, N'KEMER', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (182, N'ALTINYAYLA', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (183, N'ÇAVDIR', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (184, N'ÇELTİKÇİ', 15)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (185, N'GEMLİK', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (186, N'İNEGÖL', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (187, N'İZNİK', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (188, N'KARACABEY', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (189, N'KELES', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (190, N'MUDANYA', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (191, N'MUSTAFA K. PAŞA', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (192, N'ORHANELİ', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (193, N'ORHANGAZİ', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (194, N'YENİŞEHİR', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (195, N'BÜYÜK ORHAN', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (196, N'HARMANCIK', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (197, N'NÜLİFER', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (198, N'OSMAN GAZİ', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (199, N'YILDIRIM', 16)
GO
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (200, N'GÜRSU', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (201, N'KESTEL', 16)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (202, N'BİLECİK MERKEZ', 11)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (203, N'BOZÜYÜK', 11)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (204, N'GÖLPAZARI', 11)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (205, N'OSMANELİ', 11)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (206, N'PAZARYERİ', 11)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (207, N'SÖĞÜT', 11)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (208, N'YENİPAZAR', 11)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (209, N'İNHİSAR', 11)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (210, N'BİNGÖL MERKEZ', 12)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (211, N'GENÇ', 12)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (212, N'KARLIOVA', 12)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (213, N'KİGI', 12)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (214, N'SOLHAN', 12)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (215, N'ADAKLI', 12)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (216, N'YAYLADERE', 12)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (217, N'YEDİSU', 12)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (218, N'ADİLCEVAZ', 13)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (219, N'AHLAT', 13)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (220, N'BİTLİS MERKEZ', 13)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (221, N'HİZAN', 13)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (222, N'MUTKİ', 13)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (223, N'TATVAN', 13)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (224, N'GÜROYMAK', 13)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (225, N'DENİZLİ MERKEZ', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (226, N'ACIPAYAM', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (227, N'BULDAN', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (228, N'ÇAL', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (229, N'ÇAMELİ', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (230, N'ÇARDAK', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (231, N'ÇİVRİL', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (232, N'GÜNEY', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (233, N'KALE', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (234, N'SARAYKÖY', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (235, N'TAVAS', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (236, N'BABADAĞ', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (237, N'BEKİLLİ', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (238, N'HONAZ', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (239, N'SERİNHİSAR', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (240, N'AKKÖY', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (241, N'BAKLAN', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (242, N'BEYAĞAÇ', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (243, N'BOZKURT', 20)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (244, N'DÜZCE MERKEZ', 81)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (245, N'AKÇAKOCA', 81)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (246, N'YIĞILCA', 81)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (247, N'CUMAYERİ', 81)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (248, N'GÖLYAKA', 81)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (249, N'ÇİLİMLİ', 81)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (250, N'GÜMÜŞOVA', 81)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (251, N'KAYNAŞLI', 81)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (252, N'DİYARBAKIR MERKEZ', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (253, N'BİSMİL', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (254, N'ÇERMİK', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (255, N'ÇINAR', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (256, N'ÇÜNGÜŞ', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (257, N'DİCLE', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (258, N'ERGANİ', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (259, N'HANİ', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (260, N'HAZRO', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (261, N'KULP', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (262, N'LİCE', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (263, N'SİLVAN', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (264, N'EĞİL', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (265, N'KOCAKÖY', 21)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (266, N'EDİRNE MERKEZ', 22)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (267, N'ENEZ', 22)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (268, N'HAVSA', 22)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (269, N'İPSALA', 22)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (270, N'KEŞAN', 22)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (271, N'LALAPAŞA', 22)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (272, N'MERİÇ', 22)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (273, N'UZUNKÖPRÜ', 22)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (274, N'SÜLOĞLU', 22)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (275, N'ELAZIĞ MERKEZ', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (276, N'AĞIN', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (277, N'BASKİL', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (278, N'KARAKOÇAN', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (279, N'KEBAN', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (280, N'MADEN', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (281, N'PALU', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (282, N'SİVRİCE', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (283, N'ARICAK', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (284, N'KOVANCILAR', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (285, N'ALACAKAYA', 23)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (286, N'ERZURUM MERKEZ', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (287, N'PALANDÖKEN', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (288, N'AŞKALE', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (289, N'ÇAT', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (290, N'HINIS', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (291, N'HORASAN', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (292, N'OLTU', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (293, N'İSPİR', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (294, N'KARAYAZI', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (295, N'NARMAN', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (296, N'OLUR', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (297, N'PASİNLER', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (298, N'ŞENKAYA', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (299, N'TEKMAN', 25)
GO
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (300, N'TORTUM', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (301, N'KARAÇOBAN', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (302, N'UZUNDERE', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (303, N'PAZARYOLU', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (304, N'ILICA', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (305, N'KÖPRÜKÖY', 25)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (306, N'ÇAYIRLI', 24)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (307, N'ERZİNCAN MERKEZ', 24)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (308, N'İLİÇ', 24)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (309, N'KEMAH', 24)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (310, N'KEMALİYE', 24)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (311, N'REFAHİYE', 24)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (312, N'TERCAN', 24)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (313, N'OTLUKBELİ', 24)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (314, N'ESKİŞEHİR MERKEZ', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (315, N'ÇİFTELER', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (316, N'MAHMUDİYE', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (317, N'MİHALIÇLIK', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (318, N'SARICAKAYA', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (319, N'SEYİTGAZİ', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (320, N'SİVRİHİSAR', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (321, N'ALPU', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (322, N'BEYLİKOVA', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (323, N'İNÖNÜ', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (324, N'GÜNYÜZÜ', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (325, N'HAN', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (326, N'MİHALGAZİ', 26)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (327, N'ARABAN', 27)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (328, N'İSLAHİYE', 27)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (329, N'NİZİP', 27)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (330, N'OĞUZELİ', 27)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (331, N'YAVUZELİ', 27)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (332, N'ŞAHİNBEY', 27)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (333, N'ŞEHİT KAMİL', 27)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (334, N'KARKAMIŞ', 27)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (335, N'NURDAĞI', 27)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (336, N'GÜMÜŞHANE MERKEZ', 29)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (337, N'KELKİT', 29)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (338, N'ŞİRAN', 29)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (339, N'TORUL', 29)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (340, N'KÖSE', 29)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (341, N'KÜRTÜN', 29)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (342, N'ALUCRA', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (343, N'BULANCAK', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (344, N'DERELİ', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (345, N'ESPİYE', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (346, N'EYNESİL', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (347, N'GİRESUN MERKEZ', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (348, N'GÖRELE', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (349, N'KEŞAP', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (350, N'ŞEBİNKARAHİSAR', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (351, N'TİREBOLU', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (352, N'PİPAZİZ', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (353, N'YAĞLIDERE', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (354, N'ÇAMOLUK', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (355, N'ÇANAKÇI', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (356, N'DOĞANKENT', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (357, N'GÜCE', 28)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (358, N'HAKKARİ MERKEZ', 30)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (359, N'ÇUKURCA', 30)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (360, N'ŞEMDİNLİ', 30)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (361, N'YÜKSEKOVA', 30)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (362, N'ALTINÖZÜ', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (363, N'DÖRTYOL', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (364, N'HATAY MERKEZ', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (365, N'HASSA', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (366, N'İSKENDERUN', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (367, N'KIRIKHAN', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (368, N'REYHANLI', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (369, N'SAMANDAĞ', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (370, N'YAYLADAĞ', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (371, N'ERZİN', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (372, N'BELEN', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (373, N'KUMLU', 31)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (374, N'ISPARTA MERKEZ', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (375, N'ATABEY', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (376, N'KEÇİBORLU', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (377, N'EĞİRDİR', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (378, N'GELENDOST', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (379, N'SİNİRKENT', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (380, N'ULUBORLU', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (381, N'YALVAÇ', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (382, N'AKSU', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (383, N'GÖNEN', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (384, N'YENİŞAR BADEMLİ', 32)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (385, N'IĞDIR MERKEZ', 76)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (386, N'ARALIK', 76)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (387, N'TUZLUCA', 76)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (388, N'KARAKOYUNLU', 76)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (389, N'AFŞİN', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (390, N'ANDIRIN', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (391, N'ELBİSTAN', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (392, N'GÖKSUN', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (393, N'KAHRAMANMARAŞ MERKEZ', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (394, N'PAZARCIK', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (395, N'TÜRKOĞLU', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (396, N'ÇAĞLAYANCERİT', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (397, N'EKİNÖZÜ', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (398, N'NURHAK', 46)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (399, N'EFLANİ', 78)
GO
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (400, N'ESKİPAZAR', 78)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (401, N'KARABÜK MERKEZ', 78)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (402, N'OVACIK', 78)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (403, N'SAFRANBOLU', 78)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (404, N'YENİCE', 78)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (405, N'ERMENEK', 70)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (406, N'KARAMAN MERKEZ', 70)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (407, N'AYRANCI', 70)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (408, N'KAZIMKARABEKİR', 70)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (409, N'BAŞYAYLA', 70)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (410, N'SARIVELİLER', 70)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (411, N'KARS MERKEZ', 36)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (412, N'ARPAÇAY', 36)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (413, N'DİGOR', 36)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (414, N'KAĞIZMAN', 36)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (415, N'SARIKAMIŞ', 36)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (416, N'SELİM', 36)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (417, N'SUSUZ', 36)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (418, N'AKYAKA', 36)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (419, N'ABANA', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (420, N'KASTAMONU MERKEZ', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (421, N'ARAÇ', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (422, N'AZDAVAY', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (423, N'BOZKURT', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (424, N'CİDE', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (425, N'ÇATALZEYTİN', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (426, N'DADAY', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (427, N'DEVREKANİ', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (428, N'İNEBOLU', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (429, N'KÜRE', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (430, N'TAŞKÖPRÜ', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (431, N'TOSYA', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (432, N'İHSANGAZİ', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (433, N'PINARBAŞI', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (434, N'ŞENPAZAR', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (435, N'AĞLI', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (436, N'DOĞANYURT', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (437, N'HANÖNÜ', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (438, N'SEYDİLER', 37)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (439, N'BÜNYAN', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (440, N'DEVELİ', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (441, N'FELAHİYE', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (442, N'İNCESU', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (443, N'PINARBAŞI', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (444, N'SARIOĞLAN', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (445, N'SARIZ', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (446, N'TOMARZA', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (447, N'YAHYALI', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (448, N'YEŞİLHİSAR', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (449, N'AKKIŞLA', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (450, N'TALAS', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (451, N'KOCASİNAN', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (452, N'MELİKGAZİ', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (453, N'HACILAR', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (454, N'ÖZVATAN', 38)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (455, N'DERİCE', 71)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (456, N'KESKİN', 71)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (457, N'KIRIKKALE MERKEZ', 71)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (458, N'SALAK YURT', 71)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (459, N'BAHŞİLİ', 71)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (460, N'BALIŞEYH', 71)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (461, N'ÇELEBİ', 71)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (462, N'KARAKEÇİLİ', 71)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (463, N'YAHŞİHAN', 71)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (464, N'KIRKKLARELİ MERKEZ', 39)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (465, N'BABAESKİ', 39)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (466, N'DEMİRKÖY', 39)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (467, N'KOFÇAY', 39)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (468, N'LÜLEBURGAZ', 39)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (469, N'VİZE', 39)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (470, N'KIRŞEHİR MERKEZ', 40)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (471, N'ÇİÇEKDAĞI', 40)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (472, N'KAMAN', 40)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (473, N'MUCUR', 40)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (474, N'AKPINAR', 40)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (475, N'AKÇAKENT', 40)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (476, N'BOZTEPE', 40)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (477, N'KOCAELİ MERKEZ', 41)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (478, N'GEBZE', 41)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (479, N'GÖLCÜK', 41)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (480, N'KANDIRA', 41)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (481, N'KARAMÜRSEL', 41)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (482, N'KÖRFEZ', 41)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (483, N'DERİNCE', 41)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (484, N'KONYA MERKEZ', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (485, N'AKŞEHİR', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (486, N'BEYŞEHİR', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (487, N'BOZKIR', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (488, N'CİHANBEYLİ', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (489, N'ÇUMRA', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (490, N'DOĞANHİSAR', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (491, N'EREĞLİ', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (492, N'HADİM', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (493, N'ILGIN', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (494, N'KADINHANI', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (495, N'KARAPINAR', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (496, N'KULU', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (497, N'SARAYÖNÜ', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (498, N'SEYDİŞEHİR', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (499, N'YUNAK', 42)
GO
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (500, N'AKÖREN', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (501, N'ALTINEKİN', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (502, N'DEREBUCAK', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (503, N'HÜYÜK', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (504, N'KARATAY', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (505, N'MERAM', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (506, N'SELÇUKLU', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (507, N'TAŞKENT', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (508, N'AHIRLI', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (509, N'ÇELTİK', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (510, N'DERBENT', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (511, N'EMİRGAZİ', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (512, N'GÜNEYSINIR', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (513, N'HALKAPINAR', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (514, N'TUZLUKÇU', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (515, N'YALIHÜYÜK', 42)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (516, N'KÜTAHYA  MERKEZ', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (517, N'ALTINTAŞ', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (518, N'DOMANİÇ', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (519, N'EMET', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (520, N'GEDİZ', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (521, N'SİMAV', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (522, N'TAVŞANLI', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (523, N'ASLANAPA', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (524, N'DUMLUPINAR', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (525, N'HİSARCIK', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (526, N'ŞAPHANE', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (527, N'ÇAVDARHİSAR', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (528, N'PAZARLAR', 43)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (529, N'KİLİS MERKEZ', 79)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (530, N'ELBEYLİ', 79)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (531, N'MUSABEYLİ', 79)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (532, N'POLATELİ', 79)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (533, N'MALATYA MERKEZ', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (534, N'AKÇADAĞ', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (535, N'ARAPGİR', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (536, N'ARGUVAN', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (537, N'DARENDE', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (538, N'DOĞANŞEHİR', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (539, N'HEKİMHAN', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (540, N'PÜTÜRGE', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (541, N'YEŞİLYURT', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (542, N'BATTALGAZİ', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (543, N'DOĞANYOL', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (544, N'KALE', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (545, N'KULUNCAK', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (546, N'YAZIHAN', 44)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (547, N'AKHİSAR', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (548, N'ALAŞEHİR', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (549, N'DEMİRCİ', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (550, N'GÖRDES', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (551, N'KIRKAĞAÇ', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (552, N'KULA', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (553, N'MANİSA MERKEZ', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (554, N'SALİHLİ', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (555, N'SARIGÖL', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (556, N'SARUHANLI', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (557, N'SELENDİ', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (558, N'SOMA', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (559, N'TURGUTLU', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (560, N'AHMETLİ', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (561, N'GÖLMARMARA', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (562, N'KÖPRÜBAŞI', 45)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (563, N'DERİK', 47)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (564, N'KIZILTEPE', 47)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (565, N'MARDİN MERKEZ', 47)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (566, N'MAZIDAĞI', 47)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (567, N'MİDYAT', 47)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (568, N'NUSAYBİN', 47)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (569, N'ÖMERLİ', 47)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (570, N'SAVUR', 47)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (571, N'YEŞİLLİ', 47)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (572, N'MERSİN MERKEZ', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (573, N'ANAMUR', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (574, N'ERDEMLİ', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (575, N'GÜLNAR', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (576, N'MUT', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (577, N'SİLİFKE', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (578, N'TARSUS', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (579, N'AYDINCIK', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (580, N'BOZYAZI', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (581, N'ÇAMLIYAYLA', 33)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (582, N'BODRUM', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (583, N'DATÇA', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (584, N'FETHİYE', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (585, N'KÖYCEĞİZ', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (586, N'MARMARİS', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (587, N'MİLAS', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (588, N'MUĞLA MERKEZ', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (589, N'ULA', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (590, N'YATAĞAN', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (591, N'DALAMAN', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (592, N'KAVAKLI DERE', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (593, N'ORTACA', 48)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (594, N'BULANIK', 49)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (595, N'MALAZGİRT', 49)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (596, N'MUŞ MERKEZ', 49)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (597, N'VARTO', 49)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (598, N'HASKÖY', 49)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (599, N'KORKUT', 49)
GO
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (600, N'NEVŞEHİR MERKEZ', 50)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (601, N'AVANOS', 50)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (602, N'DERİNKUYU', 50)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (603, N'GÜLŞEHİR', 50)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (604, N'HACIBEKTAŞ', 50)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (605, N'KOZAKLI', 50)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (606, N'ÜRGÜP', 50)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (607, N'ACIGÖL', 50)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (608, N'NİĞDE MERKEZ', 51)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (609, N'BOR', 51)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (610, N'ÇAMARDI', 51)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (611, N'ULUKIŞLA', 51)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (612, N'ALTUNHİSAR', 51)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (613, N'ÇİFTLİK', 51)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (614, N'AKKUŞ', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (615, N'AYBASTI', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (616, N'FATSA', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (617, N'GÖLKÖY', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (618, N'KORGAN', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (619, N'KUMRU', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (620, N'MESUDİYE', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (621, N'ORDU MERKEZ', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (622, N'PERŞEMBE', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (623, N'ULUBEY', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (624, N'ÜNYE', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (625, N'GÜLYALI', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (626, N'GÜRGENTEPE', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (627, N'ÇAMAŞ', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (628, N'ÇATALPINAR', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (629, N'ÇAYBAŞI', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (630, N'İKİZCE', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (631, N'KABADÜZ', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (632, N'KABATAŞ', 52)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (633, N'BAHÇE', 80)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (634, N'KADİRLİ', 80)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (635, N'OSMANİYE MERKEZ', 80)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (636, N'DÜZİÇİ', 80)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (637, N'HASANBEYLİ', 80)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (638, N'SUMBAŞ', 80)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (639, N'TOPRAKKALE', 80)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (640, N'RİZE MERKEZ', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (641, N'ARDEŞEN', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (642, N'ÇAMLIHEMŞİN', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (643, N'ÇAYELİ', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (644, N'FINDIKLI', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (645, N'İKİZDERE', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (646, N'KALKANDERE', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (647, N'PAZAR', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (648, N'GÜNEYSU', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (649, N'DEREPAZARI', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (650, N'HEMŞİN', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (651, N'İYİDERE', 53)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (652, N'AKYAZI', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (653, N'GEYVE', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (654, N'HENDEK', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (655, N'KARASU', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (656, N'KAYNARCA', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (657, N'SAKARYA MERKEZ', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (658, N'PAMUKOVA', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (659, N'TARAKLI', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (660, N'FERİZLİ', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (661, N'KARAPÜRÇEK', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (662, N'SÖĞÜTLÜ', 54)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (663, N'ALAÇAM', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (664, N'BAFRA', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (665, N'ÇARŞAMBA', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (666, N'HAVZA', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (667, N'KAVAK', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (668, N'LADİK', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (669, N'SAMSUN MERKEZ', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (670, N'TERME', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (671, N'VEZİRKÖPRÜ', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (672, N'ASARCIK', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (673, N'ONDOKUZMAYIS', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (674, N'SALIPAZARI', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (675, N'TEKKEKÖY', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (676, N'AYVACIK', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (677, N'YAKAKENT', 55)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (678, N'AYANCIK', 57)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (679, N'BOYABAT', 57)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (680, N'SİNOP MERKEZ', 57)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (681, N'DURAĞAN', 57)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (682, N'ERGELEK', 57)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (683, N'GERZE', 57)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (684, N'TÜRKELİ', 57)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (685, N'DİKMEN', 57)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (686, N'SARAYDÜZÜ', 57)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (687, N'DİVRİĞİ', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (688, N'GEMEREK', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (689, N'GÜRÜN', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (690, N'HAFİK', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (691, N'İMRANLI', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (692, N'KANGAL', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (693, N'KOYUL HİSAR', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (694, N'SİVAS MERKEZ', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (695, N'SU ŞEHRİ', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (696, N'ŞARKIŞLA', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (697, N'YILDIZELİ', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (698, N'ZARA', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (699, N'AKINCILAR', 58)
GO
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (700, N'ALTINYAYLA', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (701, N'DOĞANŞAR', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (702, N'GÜLOVA', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (703, N'ULAŞ', 58)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (704, N'BAYKAN', 56)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (705, N'ERUH', 56)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (706, N'KURTALAN', 56)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (707, N'PERVARİ', 56)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (708, N'SİİRT MERKEZ', 56)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (709, N'ŞİRVARİ', 56)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (710, N'AYDINLAR', 56)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (711, N'TEKİRDAĞ MERKEZ', 59)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (712, N'ÇERKEZKÖY', 59)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (713, N'ÇORLU', 59)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (714, N'HAYRABOLU', 59)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (715, N'MALKARA', 59)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (716, N'MURATLI', 59)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (717, N'SARAY', 59)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (718, N'ŞARKÖY', 59)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (719, N'MARAMARAEREĞLİSİ', 59)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (720, N'ALMUS', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (721, N'ARTOVA', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (722, N'TOKAT MERKEZ', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (723, N'ERBAA', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (724, N'NİKSAR', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (725, N'REŞADİYE', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (726, N'TURHAL', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (727, N'ZİLE', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (728, N'PAZAR', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (729, N'YEŞİLYURT', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (730, N'BAŞÇİFTLİK', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (731, N'SULUSARAY', 60)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (732, N'TRABZON MERKEZ', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (733, N'AKÇAABAT', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (734, N'ARAKLI', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (735, N'ARŞİN', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (736, N'ÇAYKARA', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (737, N'MAÇKA', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (738, N'OF', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (739, N'SÜRMENE', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (740, N'TONYA', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (741, N'VAKFIKEBİR', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (742, N'YOMRA', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (743, N'BEŞİKDÜZÜ', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (744, N'ŞALPAZARI', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (745, N'ÇARŞIBAŞI', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (746, N'DERNEKPAZARI', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (747, N'DÜZKÖY', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (748, N'HAYRAT', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (749, N'KÖPRÜBAŞI', 61)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (750, N'TUNCELİ MERKEZ', 62)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (751, N'ÇEMİŞGEZEK', 62)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (752, N'HOZAT', 62)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (753, N'MAZGİRT', 62)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (754, N'NAZİMİYE', 62)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (755, N'OVACIK', 62)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (756, N'PERTEK', 62)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (757, N'PÜLÜMÜR', 62)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (758, N'BANAZ', 64)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (759, N'EŞME', 64)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (760, N'KARAHALLI', 64)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (761, N'SİVASLI', 64)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (762, N'ULUBEY', 64)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (763, N'UŞAK MERKEZ', 64)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (764, N'BAŞKALE', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (765, N'VAN MERKEZ', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (766, N'EDREMİT', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (767, N'ÇATAK', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (768, N'ERCİŞ', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (769, N'GEVAŞ', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (770, N'GÜRPINAR', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (771, N'MURADİYE', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (772, N'ÖZALP', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (773, N'BAHÇESARAY', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (774, N'ÇALDIRAN', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (775, N'SARAY', 65)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (776, N'YALOVA MERKEZ', 77)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (777, N'ALTINOVA', 77)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (778, N'ARMUTLU', 77)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (779, N'ÇINARCIK', 77)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (780, N'ÇİFTLİKKÖY', 77)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (781, N'TERMAL', 77)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (782, N'AKDAĞMADENİ', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (783, N'BOĞAZLIYAN', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (784, N'YOZGAT MERKEZ', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (785, N'ÇAYIRALAN', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (786, N'ÇEKEREK', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (787, N'SARIKAYA', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (788, N'SORGUN', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (789, N'ŞEFAATLI', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (790, N'YERKÖY', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (791, N'KADIŞEHRİ', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (792, N'SARAYKENT', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (793, N'YENİFAKILI', 66)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (794, N'ÇAYCUMA', 67)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (795, N'DEVREK', 67)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (796, N'ZONGULDAK MERKEZ', 67)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (797, N'EREĞLİ', 67)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (798, N'ALAPLI', 67)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (799, N'GÖKÇEBEY', 67)
GO
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (800, N'ÇANAKKALE MERKEZ', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (801, N'AYVACIK', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (802, N'BAYRAMİÇ', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (803, N'BİGA', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (804, N'BOZCAADA', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (805, N'ÇAN', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (806, N'ECEABAT', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (807, N'EZİNE', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (808, N'LAPSEKİ', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (809, N'YENİCE', 17)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (810, N'ÇANKIRI MERKEZ', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (811, N'ÇERKEŞ', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (812, N'ELDİVAN', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (813, N'ILGAZ', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (814, N'KURŞUNLU', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (815, N'ORTA', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (816, N'ŞABANÖZÜ', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (817, N'YAPRAKLI', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (818, N'ATKARACALAR', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (819, N'KIZILIRMAK', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (820, N'BAYRAMÖREN', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (821, N'KORGUN', 18)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (822, N'ALACA', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (823, N'BAYAT', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (824, N'ÇORUM MERKEZ', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (825, N'İKSİPLİ', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (826, N'KARGI', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (827, N'MECİTÖZÜ', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (828, N'ORTAKÖY', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (829, N'OSMANCIK', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (830, N'SUNGURLU', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (831, N'DODURGA', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (832, N'LAÇİN', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (833, N'OĞUZLAR', 19)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (834, N'ADALAR', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (835, N'BAKIRKÖY', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (836, N'BEŞİKTAŞ', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (837, N'BEYKOZ', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (838, N'BEYOĞLU', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (839, N'ÇATALCA', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (840, N'EMİNÖNÜ', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (841, N'EYÜP', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (842, N'FATİH', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (843, N'GAZİOSMANPAŞA', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (844, N'KADIKÖY', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (845, N'KARTAL', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (846, N'SARIYER', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (847, N'SİLİVRİ', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (848, N'ŞİLE', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (849, N'ŞİŞLİ', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (850, N'ÜSKÜDAR', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (851, N'ZEYTİNBURNU', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (852, N'BÜYÜKÇEKMECE', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (853, N'KAĞITHANE', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (854, N'KÜÇÜKÇEKMECE', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (855, N'PENDİK', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (856, N'ÜMRANİYE', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (857, N'BAYRAMPAŞA', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (858, N'AVCILAR', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (859, N'BAĞCILAR', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (860, N'BAHÇELİEVLER', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (861, N'GÜNGÖREN', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (862, N'MALTEPE', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (863, N'SULTANBEYLİ', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (864, N'TUZLA', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (865, N'ESENLER', 34)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (866, N'ALİAĞA', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (867, N'BAYINDIR', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (868, N'BERGAMA', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (869, N'BORNOVA', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (870, N'ÇEŞME', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (871, N'DİKİLİ', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (872, N'FOÇA', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (873, N'KARABURUN', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (874, N'KARŞIYAKA', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (875, N'KEMALPAŞA', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (876, N'KINIK', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (877, N'KİRAZ', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (878, N'MENEMEN', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (879, N'ÖDEMİŞ', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (880, N'SEFERİHİSAR', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (881, N'SELÇUK', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (882, N'TİRE', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (883, N'TORBALI', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (884, N'URLA', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (885, N'BEYDAĞ', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (886, N'BUCA', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (887, N'KONAK', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (888, N'MENDERES', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (889, N'BALÇOVA', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (890, N'ÇİGLİ', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (891, N'GAZİEMİR', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (892, N'NARLIDERE', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (893, N'GÜZELBAHÇE', 35)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (894, N'ŞANLIURFA MERKEZ', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (895, N'AKÇAKALE', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (896, N'BİRECİK', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (897, N'BOZOVA', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (898, N'CEYLANPINAR', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (899, N'HALFETİ', 63)
GO
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (900, N'HİLVAN', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (901, N'SİVEREK', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (902, N'SURUÇ', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (903, N'VİRANŞEHİR', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (904, N'HARRAN', 63)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (905, N'BEYTÜŞŞEBAP', 73)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (906, N'ŞIRNAK MERKEZ', 73)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (907, N'CİZRE', 73)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (908, N'İDİL', 73)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (909, N'SİLOPİ', 73)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (910, N'ULUDERE', 73)
INSERT [dbo].[ilceler] ([id], [ilce], [sehir]) VALUES (911, N'GÜÇLÜKONAK', 73)
SET IDENTITY_INSERT [dbo].[ilceler] OFF
GO
SET IDENTITY_INSERT [dbo].[iller] ON 

INSERT [dbo].[iller] ([id], [sehir]) VALUES (1, N'ADANA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (2, N'ADIYAMAN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (3, N'AFYON')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (4, N'AĞRI')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (5, N'AMASYA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (6, N'ANKARA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (7, N'ANTALYA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (8, N'ARTVİN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (9, N'AYDIN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (10, N'BALIKESİR')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (11, N'BİLECİK')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (12, N'BİNGÖL')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (13, N'BİTLİS')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (14, N'BOLU')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (15, N'BURDUR')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (16, N'BURSA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (17, N'ÇANAKKALE')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (18, N'ÇANKIRI')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (19, N'ÇORUM')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (20, N'DENİZLİ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (21, N'DİYARBAKIR')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (22, N'EDİRNE')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (23, N'ELAZIĞ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (24, N'ERZİNCAN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (25, N'ERZURUM')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (26, N'ESKİŞEHİR')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (27, N'GAZİANTEP')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (28, N'GİRESUN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (29, N'GÜMÜŞHANE')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (30, N'HAKKARİ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (31, N'HATAY')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (32, N'ISPARTA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (33, N'İÇEL')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (34, N'İSTANBUL')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (35, N'İZMİR')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (36, N'KARS')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (37, N'KASTAMONU')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (38, N'KAYSERİ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (39, N'KIRKLARELİ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (40, N'KIRŞEHİR')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (41, N'KOCAELİ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (42, N'KONYA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (43, N'KÜTAHYA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (44, N'MALATYA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (45, N'MANİSA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (46, N'KAHRAMANMARAŞ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (47, N'MARDİN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (48, N'MUĞLA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (49, N'MUŞ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (50, N'NEVŞEHİR')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (51, N'NİĞDE')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (52, N'ORDU')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (53, N'RİZE')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (54, N'SAKARYA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (55, N'SAMSUN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (56, N'SİİRT')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (57, N'SİNOP')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (58, N'SİVAS')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (59, N'TEKİRDAĞ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (60, N'TOKAT')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (61, N'TRABZON')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (62, N'TUNCELİ')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (63, N'ŞANLIURFA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (64, N'UŞAK')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (65, N'VAN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (66, N'YOZGAT')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (67, N'ZONGULDAK')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (68, N'AKSARAY')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (69, N'BAYBURT')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (70, N'KARAMAN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (71, N'KIRIKKALE')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (72, N'BATMAN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (73, N'ŞIRNAK')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (74, N'BARTIN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (75, N'ARDAHAN')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (76, N'IĞDIR')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (77, N'YALOVA')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (78, N'KARABÜK')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (79, N'KİLİS')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (80, N'OSMANİYE')
INSERT [dbo].[iller] ([id], [sehir]) VALUES (81, N'DÜZCE')
SET IDENTITY_INSERT [dbo].[iller] OFF
GO
SET IDENTITY_INSERT [dbo].[TblAdmin] ON 

INSERT [dbo].[TblAdmin] ([ID], [Kullanici], [Sifre], [Rol]) VALUES (1, N'admin1', N'1234', N'A')
INSERT [dbo].[TblAdmin] ([ID], [Kullanici], [Sifre], [Rol]) VALUES (2, N'admin2', N'1111', N'A')
INSERT [dbo].[TblAdmin] ([ID], [Kullanici], [Sifre], [Rol]) VALUES (3, N'admin3', N'0000', N'B')
INSERT [dbo].[TblAdmin] ([ID], [Kullanici], [Sifre], [Rol]) VALUES (4, N'admin4', N'123', N'A')
SET IDENTITY_INSERT [dbo].[TblAdmin] OFF
GO
SET IDENTITY_INSERT [dbo].[TblBirim] ON 

INSERT [dbo].[TblBirim] ([BirimID], [BirimAd], [Durum]) VALUES (1, N'Litre', 1)
INSERT [dbo].[TblBirim] ([BirimID], [BirimAd], [Durum]) VALUES (2, N'Gram', 1)
INSERT [dbo].[TblBirim] ([BirimID], [BirimAd], [Durum]) VALUES (3, N'Kilogram', 1)
INSERT [dbo].[TblBirim] ([BirimID], [BirimAd], [Durum]) VALUES (4, N'Düzine', 1)
INSERT [dbo].[TblBirim] ([BirimID], [BirimAd], [Durum]) VALUES (5, N'Metre', 1)
INSERT [dbo].[TblBirim] ([BirimID], [BirimAd], [Durum]) VALUES (6, N'Santimetre', 1)
INSERT [dbo].[TblBirim] ([BirimID], [BirimAd], [Durum]) VALUES (7, N'Ton', 1)
INSERT [dbo].[TblBirim] ([BirimID], [BirimAd], [Durum]) VALUES (8, N'test', 2)
INSERT [dbo].[TblBirim] ([BirimID], [BirimAd], [Durum]) VALUES (9, N'adet', 1)
SET IDENTITY_INSERT [dbo].[TblBirim] OFF
GO
SET IDENTITY_INSERT [dbo].[TblDepartman] ON 

INSERT [dbo].[TblDepartman] ([DepartmanID], [DepartmanAd], [Telefon], [Durum]) VALUES (1, N'Resepsiyon', N'1111', 2)
INSERT [dbo].[TblDepartman] ([DepartmanID], [DepartmanAd], [Telefon], [Durum]) VALUES (2, N'Restorant', N'1112', 3)
INSERT [dbo].[TblDepartman] ([DepartmanID], [DepartmanAd], [Telefon], [Durum]) VALUES (3, N'Mutfak', N'1113', 1)
INSERT [dbo].[TblDepartman] ([DepartmanID], [DepartmanAd], [Telefon], [Durum]) VALUES (4, N'Bahçe', N'1114', 1)
INSERT [dbo].[TblDepartman] ([DepartmanID], [DepartmanAd], [Telefon], [Durum]) VALUES (5, N'Bilgi İşlem', N'1115', 1)
INSERT [dbo].[TblDepartman] ([DepartmanID], [DepartmanAd], [Telefon], [Durum]) VALUES (6, N'Kat Hizmetleri', N'1116', 1)
INSERT [dbo].[TblDepartman] ([DepartmanID], [DepartmanAd], [Telefon], [Durum]) VALUES (7, N'Ulaşım', N'1117', 5)
INSERT [dbo].[TblDepartman] ([DepartmanID], [DepartmanAd], [Telefon], [Durum]) VALUES (8, N'Aşçı', N'1118', 1)
SET IDENTITY_INSERT [dbo].[TblDepartman] OFF
GO
SET IDENTITY_INSERT [dbo].[TblDurum] ON 

INSERT [dbo].[TblDurum] ([DurumId], [DurumAd]) VALUES (1, N'Aktif')
INSERT [dbo].[TblDurum] ([DurumId], [DurumAd]) VALUES (2, N'Pasif')
INSERT [dbo].[TblDurum] ([DurumId], [DurumAd]) VALUES (3, N'Kirli')
INSERT [dbo].[TblDurum] ([DurumId], [DurumAd]) VALUES (4, N'Temiz')
INSERT [dbo].[TblDurum] ([DurumId], [DurumAd]) VALUES (5, N'Arızalı')
INSERT [dbo].[TblDurum] ([DurumId], [DurumAd]) VALUES (6, N'Ürün Stok Azaldı')
INSERT [dbo].[TblDurum] ([DurumId], [DurumAd]) VALUES (7, N'Ürün Stok Yetersiz')
INSERT [dbo].[TblDurum] ([DurumId], [DurumAd]) VALUES (9, N'test')
INSERT [dbo].[TblDurum] ([DurumId], [DurumAd]) VALUES (10, N'Raporlu')
INSERT [dbo].[TblDurum] ([DurumId], [DurumAd]) VALUES (11, N'İzinde')
INSERT [dbo].[TblDurum] ([DurumId], [DurumAd]) VALUES (12, N'Rezervasyon İptal')
INSERT [dbo].[TblDurum] ([DurumId], [DurumAd]) VALUES (13, N'Oda Dolu')
INSERT [dbo].[TblDurum] ([DurumId], [DurumAd]) VALUES (14, N'Oda Rezerve Edildi')
INSERT [dbo].[TblDurum] ([DurumId], [DurumAd]) VALUES (15, N'Çıkış Yapıldı')
INSERT [dbo].[TblDurum] ([DurumId], [DurumAd]) VALUES (16, N'Rezervasyon Yapıldı')
INSERT [dbo].[TblDurum] ([DurumId], [DurumAd]) VALUES (17, N'Bugün Gelecek')
SET IDENTITY_INSERT [dbo].[TblDurum] OFF
GO
SET IDENTITY_INSERT [dbo].[TblEkibimiz] ON 

INSERT [dbo].[TblEkibimiz] ([ID], [AdSoyad], [Unvan], [Gorsel]) VALUES (1, N'Ali Çınar', N'Kurucu-Ceo', N'/hotels-starter/hotels-starter/assets/images/team1.jpg')
INSERT [dbo].[TblEkibimiz] ([ID], [AdSoyad], [Unvan], [Gorsel]) VALUES (2, N'Esra Yıldız', N'Genel Müdür', N'/hotels-starter/hotels-starter/assets/images/team3.jpg')
INSERT [dbo].[TblEkibimiz] ([ID], [AdSoyad], [Unvan], [Gorsel]) VALUES (3, N'Hasan Yıldırım', N'Satın Alma Sorumlusu', N'/hotels-starter/hotels-starter/assets/images/team2.jpg')
INSERT [dbo].[TblEkibimiz] ([ID], [AdSoyad], [Unvan], [Gorsel]) VALUES (4, N'Gizem Öztürk', N'Misafir İlişkileri', N'/hotels-starter/hotels-starter/assets/images/team4.jpg')
SET IDENTITY_INSERT [dbo].[TblEkibimiz] OFF
GO
SET IDENTITY_INSERT [dbo].[TblGorev] ON 

INSERT [dbo].[TblGorev] ([GorevID], [GorevAd], [Departman], [Durum]) VALUES (1, N'Resepsiyon', 1, 1)
INSERT [dbo].[TblGorev] ([GorevID], [GorevAd], [Departman], [Durum]) VALUES (2, N'test', 3, 1)
INSERT [dbo].[TblGorev] ([GorevID], [GorevAd], [Departman], [Durum]) VALUES (3, N'deneme', 4, 1)
INSERT [dbo].[TblGorev] ([GorevID], [GorevAd], [Departman], [Durum]) VALUES (4, N'temizlik', 6, 1)
SET IDENTITY_INSERT [dbo].[TblGorev] OFF
GO
SET IDENTITY_INSERT [dbo].[TblHakkimda] ON 

INSERT [dbo].[TblHakkimda] ([ID], [Hakkimda1], [Hakkimda2], [Hakkimda3], [Hakkimda4]) VALUES (1, N'Otel ve turizm sektöründe 22.yılımızda sizlere hizmet vermenin mutluluğunu yaşıyoruz......', N'Lavinya Otel; sakin denizi ve eşsiz manzarasının yanı sıra yenilenen yüzü ve hizmetleri ile de misafirlerine benzersiz bir konaklama deneyimi sunuyor.Otelcilik bizim için sadece bir iş değil.Misafirlerimizin mutluluğu, çalışanlarımızın motivasyon kaynağıdır.Yeni şubelerimizle de ülkemizin her bölgesinde sizlere hizmet vermek bizim için bir onurdur.', N'Hemen rezervasyonunuzu yapıp bu eğlenceli tatile başlayın.', N'İster eğlenmek,ister dinlenmek için sizleri otelimize bekliyoruz. Haziran ayı erken rezervasyon fırsatlarında %50 ye varan indirim sizleri beklemektedir.')
SET IDENTITY_INSERT [dbo].[TblHakkimda] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbliletisim] ON 

INSERT [dbo].[Tbliletisim] ([ID], [Aciklama], [Koordinat], [Telefon], [Mail], [Adres]) VALUES (1, N'Sarımsaklı Plajı, Cunda Adası, Kozak Yaylası,Küçükköy ve Şeytan Sofrası gibi bölgenin en gözde çekim merkezlerine birkaç dakikalık mesafede yer alamaktayız,Kuzey Ege sahillerinin güzelliğini doyasıya yaşamak için sizleri beklemekteyiz.
                            Lavinya Otel, Balıkesir & Ayvalık TÜRKİYE', N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d49375.98783200809!2d26.673700960955586!3d39.333602753306934!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14ba7677119d3691%3A0x136a47873966c6ac!2zQXl2YWzEsWssIEJhbMSxa2VzaXI!5e0!3m2!1str!2str!4v1639773103743!5m2!1str!2str', N'+90 500 000 0000', N'lavinyaotel@gmail.com', N'Atatürk Caddesi Cumhuriyet Sokak No:19 Ayvalık, Balıkesir/TÜRKİYE.')
SET IDENTITY_INSERT [dbo].[Tbliletisim] OFF
GO
SET IDENTITY_INSERT [dbo].[TblKasa] ON 

INSERT [dbo].[TblKasa] ([KasaID], [KasaAdi], [Bakiye], [Giren], [Cikan], [Durum]) VALUES (1, N'Restorant', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblKasa] ([KasaID], [KasaAdi], [Bakiye], [Giren], [Cikan], [Durum]) VALUES (2, N'Market', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblKasa] ([KasaID], [KasaAdi], [Bakiye], [Giren], [Cikan], [Durum]) VALUES (3, N'Resepsiyon', CAST(3553.00 AS Decimal(18, 2)), CAST(4412.00 AS Decimal(18, 2)), CAST(859.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[TblKasa] OFF
GO
SET IDENTITY_INSERT [dbo].[TblKasaCikisHareketi] ON 

INSERT [dbo].[TblKasaCikisHareketi] ([ID], [Aciklama], [Tarih], [Tutar]) VALUES (1, N'14 kg beyaz peynir alındı', CAST(N'2022-01-07' AS Date), CAST(210.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaCikisHareketi] ([ID], [Aciklama], [Tarih], [Tutar]) VALUES (2, N'20 adet kaşar peyniri alındı', CAST(N'2022-01-07' AS Date), CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaCikisHareketi] ([ID], [Aciklama], [Tarih], [Tutar]) VALUES (3, N'Benzin için 250 tl harcandı', CAST(N'2022-01-07' AS Date), CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaCikisHareketi] ([ID], [Aciklama], [Tarih], [Tutar]) VALUES (4, N'15 kg mandalina kg başı 2tlden alındı', CAST(N'2022-01-07' AS Date), CAST(30.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaCikisHareketi] ([ID], [Aciklama], [Tarih], [Tutar]) VALUES (5, N'2 tlden 60 kg alındı', CAST(N'2022-01-07' AS Date), CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaCikisHareketi] ([ID], [Aciklama], [Tarih], [Tutar]) VALUES (6, N'80 kg mandalina alındı 2tlden', CAST(N'2022-01-07' AS Date), CAST(160.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaCikisHareketi] ([ID], [Aciklama], [Tarih], [Tutar]) VALUES (7, N'ürün', CAST(N'2022-01-07' AS Date), CAST(600.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaCikisHareketi] ([ID], [Aciklama], [Tarih], [Tutar]) VALUES (8, N'20 adet ekmek alındı .', CAST(N'2022-01-12' AS Date), CAST(20.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaCikisHareketi] ([ID], [Aciklama], [Tarih], [Tutar]) VALUES (9, N'ürün', CAST(N'2022-01-12' AS Date), CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaCikisHareketi] ([ID], [Aciklama], [Tarih], [Tutar]) VALUES (10, N'ürün', CAST(N'2022-01-12' AS Date), CAST(9.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[TblKasaCikisHareketi] OFF
GO
SET IDENTITY_INSERT [dbo].[TblKasaHareketi] ON 

INSERT [dbo].[TblKasaHareketi] ([ID], [Misafir], [Tarih], [Tutar]) VALUES (1, N'Ali Yıldız', CAST(N'2022-01-07' AS Date), CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaHareketi] ([ID], [Misafir], [Tarih], [Tutar]) VALUES (2, N'Ayşegül Yıldırım', CAST(N'2022-01-07' AS Date), CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaHareketi] ([ID], [Misafir], [Tarih], [Tutar]) VALUES (3, NULL, CAST(N'2022-01-07' AS Date), CAST(62.50 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaHareketi] ([ID], [Misafir], [Tarih], [Tutar]) VALUES (4, N'Mert Can Işık', CAST(N'2022-01-07' AS Date), CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaHareketi] ([ID], [Misafir], [Tarih], [Tutar]) VALUES (5, N'Mustafa Topçu', CAST(N'2022-01-10' AS Date), CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaHareketi] ([ID], [Misafir], [Tarih], [Tutar]) VALUES (6, N'Zehra Topçu', CAST(N'2022-01-11' AS Date), CAST(600.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaHareketi] ([ID], [Misafir], [Tarih], [Tutar]) VALUES (7, N'Ezgi Balku', CAST(N'2022-01-11' AS Date), CAST(600.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaHareketi] ([ID], [Misafir], [Tarih], [Tutar]) VALUES (8, N'Kemal Çınar', CAST(N'2022-01-12' AS Date), CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaHareketi] ([ID], [Misafir], [Tarih], [Tutar]) VALUES (9, N'Ali Yıldız', CAST(N'2022-01-12' AS Date), CAST(55.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaHareketi] ([ID], [Misafir], [Tarih], [Tutar]) VALUES (10, N'Ayşegül Yıldırım', CAST(N'2022-01-12' AS Date), CAST(11.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaHareketi] ([ID], [Misafir], [Tarih], [Tutar]) VALUES (11, N'Mert Can Işık', CAST(N'2022-01-12' AS Date), CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaHareketi] ([ID], [Misafir], [Tarih], [Tutar]) VALUES (12, N'Nuray Dur', CAST(N'2022-01-13' AS Date), CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaHareketi] ([ID], [Misafir], [Tarih], [Tutar]) VALUES (13, N'Ezgi Balku', CAST(N'2022-01-13' AS Date), CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaHareketi] ([ID], [Misafir], [Tarih], [Tutar]) VALUES (14, N'Çağla Topçu', CAST(N'2022-01-13' AS Date), CAST(11.00 AS Decimal(18, 2)))
INSERT [dbo].[TblKasaHareketi] ([ID], [Misafir], [Tarih], [Tutar]) VALUES (15, N'Ayşegül Yıldırım', CAST(N'2022-01-13' AS Date), CAST(5.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[TblKasaHareketi] OFF
GO
SET IDENTITY_INSERT [dbo].[TblKur] ON 

INSERT [dbo].[TblKur] ([KurID], [KurAd], [Sembol], [Deger], [Tarih], [Durum]) VALUES (2, N'dolar', N'$', CAST(13.7500 AS Decimal(18, 4)), CAST(N'2021-12-03' AS Date), 1)
SET IDENTITY_INSERT [dbo].[TblKur] OFF
GO
SET IDENTITY_INSERT [dbo].[TblMesaj] ON 

INSERT [dbo].[TblMesaj] ([MesajID], [Gonderen], [Mail], [Konu], [Mesaj]) VALUES (1, N'Ezgi', N'deneme@gmail.com', N'pkjı', N'hnuygm')
INSERT [dbo].[TblMesaj] ([MesajID], [Gonderen], [Mail], [Konu], [Mesaj]) VALUES (2, N'Ezgi', N'deneme@gmail.com', N'test', N'teşekkürler..')
INSERT [dbo].[TblMesaj] ([MesajID], [Gonderen], [Mail], [Konu], [Mesaj]) VALUES (3, N'ayşe', N'deneme@gmail.com', N'deneme2', N'Teşekkür ederiz')
INSERT [dbo].[TblMesaj] ([MesajID], [Gonderen], [Mail], [Konu], [Mesaj]) VALUES (4, N'ayşe', N'deneme@gmail.com', N'deneme2', N'Teşekkür ederiz')
INSERT [dbo].[TblMesaj] ([MesajID], [Gonderen], [Mail], [Konu], [Mesaj]) VALUES (5, N'murat yücedağ', N'murat@gmail.com', N'Test', N'bu bir test mesajıdır , her şey yolunda:)')
SET IDENTITY_INSERT [dbo].[TblMesaj] OFF
GO
SET IDENTITY_INSERT [dbo].[TblMesaj2] ON 

INSERT [dbo].[TblMesaj2] ([MesajID], [Gonderen], [Alici], [Konu], [Mesaj], [Tarih]) VALUES (1, N'Admin', N'test@gmail.com', N'Teşekkürler', N'Merhaba Ezgi Hanım. Teşekkür ederiz.Yorumlarınız bizi Çok Mutlu Etti.', CAST(N'2021-12-23' AS Date))
INSERT [dbo].[TblMesaj2] ([MesajID], [Gonderen], [Alici], [Konu], [Mesaj], [Tarih]) VALUES (2, N'test@gmail.com', N'Admin', N'Rica', N'Güzel düşünceleriniz için teşekkür ederim.Esen Kalın.', CAST(N'2021-12-25' AS Date))
INSERT [dbo].[TblMesaj2] ([MesajID], [Gonderen], [Alici], [Konu], [Mesaj], [Tarih]) VALUES (3, N'test@gmail.com', N'Admin', N'Soru', N'Merhaba. rica etsem soruma bakar mısınız ?', CAST(N'2021-12-25' AS Date))
INSERT [dbo].[TblMesaj2] ([MesajID], [Gonderen], [Alici], [Konu], [Mesaj], [Tarih]) VALUES (4, N'test@gmail.com', N'Admin', N'Deneme', N'merhaba admin', CAST(N'2021-12-25' AS Date))
INSERT [dbo].[TblMesaj2] ([MesajID], [Gonderen], [Alici], [Konu], [Mesaj], [Tarih]) VALUES (5, N'asli@gmail.com', N'Admin', N'test', N'merhaba bu bir test mesajıdır', CAST(N'2021-12-26' AS Date))
INSERT [dbo].[TblMesaj2] ([MesajID], [Gonderen], [Alici], [Konu], [Mesaj], [Tarih]) VALUES (6, N'Admin', N'test@gmail.com', N'deneme', N'merhaba admin nasılsınız?', CAST(N'2021-12-26' AS Date))
SET IDENTITY_INSERT [dbo].[TblMesaj2] OFF
GO
SET IDENTITY_INSERT [dbo].[TblMisafir] ON 

INSERT [dbo].[TblMisafir] ([MisafirID], [AdSoyad], [TC], [Mail], [Telefon], [Adres], [Aciklama], [KimlikFoto1], [KimlikFoto2], [Ulke], [sehir], [ilce], [Durum]) VALUES (1, N'Ali Yıldız', N'1111111    ', N'merhaba@gmail.com', N'(537) 526-8852', N'Adana Seyhan', N'müşteri telefonla aranacak.', N'D:\Desktop\images1.jpg', N'D:\Desktop\images1.jpg', 1, 1, 1, 1)
INSERT [dbo].[TblMisafir] ([MisafirID], [AdSoyad], [TC], [Mail], [Telefon], [Adres], [Aciklama], [KimlikFoto1], [KimlikFoto2], [Ulke], [sehir], [ilce], [Durum]) VALUES (2, N'Ayşegül Yıldırım', N'1234567891 ', N'aysegul@gmail.com', N'(538) 754-8856', N'Afyon merkez', N'açıklama', N'D:\Desktop\images.jpg', N'D:\Desktop\images.jpg', 1, 3, 23, 1)
INSERT [dbo].[TblMisafir] ([MisafirID], [AdSoyad], [TC], [Mail], [Telefon], [Adres], [Aciklama], [KimlikFoto1], [KimlikFoto2], [Ulke], [sehir], [ilce], [Durum]) VALUES (3, N'Merve Yıldırım', N'1234567891 ', N'merve@hotmail.com', N'(533) 562-2365', N'amasya merzifon', N'', N'D:\Desktop\images2.jpg', N'D:\Desktop\images2.jpg', 1, 5, 51, 1)
INSERT [dbo].[TblMisafir] ([MisafirID], [AdSoyad], [TC], [Mail], [Telefon], [Adres], [Aciklama], [KimlikFoto1], [KimlikFoto2], [Ulke], [sehir], [ilce], [Durum]) VALUES (4, N'Ahmet Yıldırım', N'258963147  ', N'ahmet@hotmail.com', N'(538) 206-9584', N'amasya merzifon', N'', N'D:\Desktop\images5.jpg', N'D:\Desktop\images5.jpg', 1, 5, 51, 1)
INSERT [dbo].[TblMisafir] ([MisafirID], [AdSoyad], [TC], [Mail], [Telefon], [Adres], [Aciklama], [KimlikFoto1], [KimlikFoto2], [Ulke], [sehir], [ilce], [Durum]) VALUES (5, N'Mert Can Işık', N'55159458796', N'mertc@gmail.com', N'(538) 038-3307', N'Antalya merkez', N'', N'D:\Desktop\indir.jpg', N'D:\Desktop\indir.jpg', 1, 7, 81, 1)
INSERT [dbo].[TblMisafir] ([MisafirID], [AdSoyad], [TC], [Mail], [Telefon], [Adres], [Aciklama], [KimlikFoto1], [KimlikFoto2], [Ulke], [sehir], [ilce], [Durum]) VALUES (6, N'Çağla Topçu', N'55159458796', N'cagla@hotmail.com', N'(532) 568-9562', N'rize merkez', N'', N'D:\Desktop\images3.jpg', N'D:\Desktop\images3.jpg', 1, 53, 640, 1)
INSERT [dbo].[TblMisafir] ([MisafirID], [AdSoyad], [TC], [Mail], [Telefon], [Adres], [Aciklama], [KimlikFoto1], [KimlikFoto2], [Ulke], [sehir], [ilce], [Durum]) VALUES (7, N'Ezgi Balku', N'66589621456', N'ezgi@gmail.com', N'(532) 145-8695', N'bolu', N'', N'D:\Desktop\images4.jpg', N'D:\Desktop\images4.jpg', 1, 14, 173, 1)
INSERT [dbo].[TblMisafir] ([MisafirID], [AdSoyad], [TC], [Mail], [Telefon], [Adres], [Aciklama], [KimlikFoto1], [KimlikFoto2], [Ulke], [sehir], [ilce], [Durum]) VALUES (8, N'Zehra Arslan', N'55207458596', N'zehra@gmail.com', N'(534) 411-5323', N'rize', N'', N'D:\Desktop\images.jpg', N'D:\Desktop\images.jpg', 1, 53, 640, 1)
INSERT [dbo].[TblMisafir] ([MisafirID], [AdSoyad], [TC], [Mail], [Telefon], [Adres], [Aciklama], [KimlikFoto1], [KimlikFoto2], [Ulke], [sehir], [ilce], [Durum]) VALUES (9, N'Yiğit Arslan', N'225965147  ', N'yigit@gmail.com', N'(535) 852-6954', N'diyarbakır', N'', N'D:\Desktop\images1.jpg', N'D:\Desktop\images1.jpg', 1, 21, 257, 1)
INSERT [dbo].[TblMisafir] ([MisafirID], [AdSoyad], [TC], [Mail], [Telefon], [Adres], [Aciklama], [KimlikFoto1], [KimlikFoto2], [Ulke], [sehir], [ilce], [Durum]) VALUES (10, N'Sevgi Dur', N'552147856  ', N'sevgi@gmail.com', N'(532) 658-9625', N'ağrı merkez', N'', N'D:\Desktop\images2.jpg', N'D:\Desktop\images2.jpg', 1, 4, 125, 1)
INSERT [dbo].[TblMisafir] ([MisafirID], [AdSoyad], [TC], [Mail], [Telefon], [Adres], [Aciklama], [KimlikFoto1], [KimlikFoto2], [Ulke], [sehir], [ilce], [Durum]) VALUES (11, N'Kadir Dur', N'55145236958', N'kadir@gmail.com', N'(532) 541-8526', N'aydın', N'', N'D:\Desktop\images5.jpg', N'D:\Desktop\images5.jpg', 1, 9, 108, 1)
INSERT [dbo].[TblMisafir] ([MisafirID], [AdSoyad], [TC], [Mail], [Telefon], [Adres], [Aciklama], [KimlikFoto1], [KimlikFoto2], [Ulke], [sehir], [ilce], [Durum]) VALUES (12, N'Nuray Dur', N'5547856952 ', N'nuray@hotmail.com', N'(532) 585-6921', N'aydın', N'', N'D:\Desktop\images3.jpg', N'D:\Desktop\images3.jpg', 1, 9, 108, 1)
INSERT [dbo].[TblMisafir] ([MisafirID], [AdSoyad], [TC], [Mail], [Telefon], [Adres], [Aciklama], [KimlikFoto1], [KimlikFoto2], [Ulke], [sehir], [ilce], [Durum]) VALUES (13, N'Kemal Çınar', N'55159458795', N'kemal@gmail.com', N'(532) 658-9214', N'ordu', N'müşteri aranacak.', N'D:\Desktop\indir.jpg', N'D:\Desktop\indir.jpg', 1, 52, 626, 1)
INSERT [dbo].[TblMisafir] ([MisafirID], [AdSoyad], [TC], [Mail], [Telefon], [Adres], [Aciklama], [KimlikFoto1], [KimlikFoto2], [Ulke], [sehir], [ilce], [Durum]) VALUES (14, N'Ayşegül Yıldız', N'111111111  ', N'ayse@gmail.com', N'(053) 820-6955', N'', N'', N'D:\Desktop\images4.jpg', N'D:\Desktop\images4.jpg', 1, 2, 16, 1)
INSERT [dbo].[TblMisafir] ([MisafirID], [AdSoyad], [TC], [Mail], [Telefon], [Adres], [Aciklama], [KimlikFoto1], [KimlikFoto2], [Ulke], [sehir], [ilce], [Durum]) VALUES (15, N'Mustafa Topçu', N'55249455477', N'mtopcu@hotmail.com', N'(534) 411-5326', N'ayvalık', N'Web sitesinden ön rezervasyon yaptı.Resepsiyon tarafından arandı rezervasyonu gerçekleştirilecek.', N'D:\Desktop\indir.jpg', N'D:\Desktop\indir.jpg', 1, 10, 133, 1)
INSERT [dbo].[TblMisafir] ([MisafirID], [AdSoyad], [TC], [Mail], [Telefon], [Adres], [Aciklama], [KimlikFoto1], [KimlikFoto2], [Ulke], [sehir], [ilce], [Durum]) VALUES (16, N'Zehra Topçu', N'11111111111', N'zehra@gmail.com', N'(533) 355-6699', N'bolu merkez', N'2 gece kalacakmış', N'D:\Desktop\images4.jpg', N'D:\Desktop\images4.jpg', 1, 14, 172, 1)
SET IDENTITY_INSERT [dbo].[TblMisafir] OFF
GO
SET IDENTITY_INSERT [dbo].[TblOda] ON 

INSERT [dbo].[TblOda] ([OdaID], [OdaNo], [Kat], [Kapasite], [Aciklama], [Telefon], [Durum]) VALUES (1, N'101', N'1', N'3', NULL, N'0101', 3)
INSERT [dbo].[TblOda] ([OdaID], [OdaNo], [Kat], [Kapasite], [Aciklama], [Telefon], [Durum]) VALUES (2, N'102', N'1', N'3', NULL, N'0102', 15)
INSERT [dbo].[TblOda] ([OdaID], [OdaNo], [Kat], [Kapasite], [Aciklama], [Telefon], [Durum]) VALUES (3, N'103', N'1', N'3', NULL, N'0103', 3)
INSERT [dbo].[TblOda] ([OdaID], [OdaNo], [Kat], [Kapasite], [Aciklama], [Telefon], [Durum]) VALUES (4, N'201', N'2', N'2', NULL, N'0201', 3)
INSERT [dbo].[TblOda] ([OdaID], [OdaNo], [Kat], [Kapasite], [Aciklama], [Telefon], [Durum]) VALUES (5, N'202', N'2', N'2', NULL, N'0202', 15)
INSERT [dbo].[TblOda] ([OdaID], [OdaNo], [Kat], [Kapasite], [Aciklama], [Telefon], [Durum]) VALUES (6, N'203', N'2', N'2', NULL, N'0203', 3)
INSERT [dbo].[TblOda] ([OdaID], [OdaNo], [Kat], [Kapasite], [Aciklama], [Telefon], [Durum]) VALUES (7, N'204', N'2', N'2', NULL, N'0204', 15)
INSERT [dbo].[TblOda] ([OdaID], [OdaNo], [Kat], [Kapasite], [Aciklama], [Telefon], [Durum]) VALUES (8, N'301', N'3', N'3', NULL, N'0301', 15)
INSERT [dbo].[TblOda] ([OdaID], [OdaNo], [Kat], [Kapasite], [Aciklama], [Telefon], [Durum]) VALUES (9, N'302', N'3', N'3', NULL, N'0302', 1)
INSERT [dbo].[TblOda] ([OdaID], [OdaNo], [Kat], [Kapasite], [Aciklama], [Telefon], [Durum]) VALUES (10, N'303', N'3', N'3', NULL, N'0303', 1)
INSERT [dbo].[TblOda] ([OdaID], [OdaNo], [Kat], [Kapasite], [Aciklama], [Telefon], [Durum]) VALUES (11, N'304', N'3', N'1', NULL, N'0304', 3)
INSERT [dbo].[TblOda] ([OdaID], [OdaNo], [Kat], [Kapasite], [Aciklama], [Telefon], [Durum]) VALUES (12, N'305', N'3', N'1', NULL, N'0305', 3)
INSERT [dbo].[TblOda] ([OdaID], [OdaNo], [Kat], [Kapasite], [Aciklama], [Telefon], [Durum]) VALUES (13, N'401', N'4', N'4', NULL, N'0401', 3)
INSERT [dbo].[TblOda] ([OdaID], [OdaNo], [Kat], [Kapasite], [Aciklama], [Telefon], [Durum]) VALUES (14, N'402', N'4', N'4', NULL, N'0402', 3)
INSERT [dbo].[TblOda] ([OdaID], [OdaNo], [Kat], [Kapasite], [Aciklama], [Telefon], [Durum]) VALUES (15, N'403', N'4', N'4', NULL, N'0403', 1)
INSERT [dbo].[TblOda] ([OdaID], [OdaNo], [Kat], [Kapasite], [Aciklama], [Telefon], [Durum]) VALUES (16, N'404', N'4', N'4', NULL, N'0404', 15)
INSERT [dbo].[TblOda] ([OdaID], [OdaNo], [Kat], [Kapasite], [Aciklama], [Telefon], [Durum]) VALUES (17, N'405', N'4', N'1', NULL, N'0405', 3)
INSERT [dbo].[TblOda] ([OdaID], [OdaNo], [Kat], [Kapasite], [Aciklama], [Telefon], [Durum]) VALUES (18, N'406', N'4', N'1', NULL, N'0406', 3)
SET IDENTITY_INSERT [dbo].[TblOda] OFF
GO
SET IDENTITY_INSERT [dbo].[TblOnRezervasyon] ON 

INSERT [dbo].[TblOnRezervasyon] ([ID], [Mail], [AdSoyad], [GirisTarih], [CikisTarih], [Kisi], [Telefon], [Aciklama], [Tarih]) VALUES (1, N'asli@gmail.com', N'Aslıhan Çimen', CAST(N'2021-12-26' AS Date), CAST(N'2021-12-29' AS Date), N'1', N'400', N'deneme', CAST(N'2021-12-26' AS Date))
INSERT [dbo].[TblOnRezervasyon] ([ID], [Mail], [AdSoyad], [GirisTarih], [CikisTarih], [Kisi], [Telefon], [Aciklama], [Tarih]) VALUES (2, N'sari@gmail.com', N'Sarı Atakan', CAST(N'2021-12-26' AS Date), CAST(N'2021-12-29' AS Date), N'1', N'53302799', N'deneme', CAST(N'2021-12-26' AS Date))
INSERT [dbo].[TblOnRezervasyon] ([ID], [Mail], [AdSoyad], [GirisTarih], [CikisTarih], [Kisi], [Telefon], [Aciklama], [Tarih]) VALUES (3, N'ayse@gmail.com', N'Ayşegül Yıldız', CAST(N'2022-01-02' AS Date), CAST(N'2022-01-03' AS Date), N'1', N'05382069555', N'teşekkür ederim', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[TblOnRezervasyon] ([ID], [Mail], [AdSoyad], [GirisTarih], [CikisTarih], [Kisi], [Telefon], [Aciklama], [Tarih]) VALUES (4, N'mtopcu@hotmail.com', N'Mustafa Topçu', CAST(N'2022-01-08' AS Date), CAST(N'2022-01-10' AS Date), N'1', N'5344115326', NULL, CAST(N'2022-01-08' AS Date))
INSERT [dbo].[TblOnRezervasyon] ([ID], [Mail], [AdSoyad], [GirisTarih], [CikisTarih], [Kisi], [Telefon], [Aciklama], [Tarih]) VALUES (5, N'zehra@gmail.com', N'zehra topçu', CAST(N'2022-01-12' AS Date), CAST(N'2022-01-13' AS Date), N'1', N'05335556699', N'deneme deneme', CAST(N'2022-01-11' AS Date))
SET IDENTITY_INSERT [dbo].[TblOnRezervasyon] OFF
GO
SET IDENTITY_INSERT [dbo].[TblPersonel] ON 

INSERT [dbo].[TblPersonel] ([PersonelID], [AdSoyad], [TC], [Adres], [Telefon], [Mail], [IseGirisTarih], [IstenCikisTarih], [Departman], [Gorev], [Aciklama], [KimlikOn], [KimlikArka], [Yetki], [Sifre], [Durum]) VALUES (1, N'Ali Çınar', N'2222222    ', N'', N'(538) 206-9898', N'', CAST(N'2021-12-08' AS Date), NULL, 1, 1, N'hghjhjjh', N'D:\Desktop\images1.jpg', N'D:\Desktop\images1.jpg', NULL, N'', 1)
INSERT [dbo].[TblPersonel] ([PersonelID], [AdSoyad], [TC], [Adres], [Telefon], [Mail], [IseGirisTarih], [IstenCikisTarih], [Departman], [Gorev], [Aciklama], [KimlikOn], [KimlikArka], [Yetki], [Sifre], [Durum]) VALUES (2, N'Esra Yıldız', N'55458426596', N'İstinye mahallesi akıncılar sokak istanbul', N'(538) 206-9516', N'esra@hotmail.com', CAST(N'2021-12-02' AS Date), NULL, 5, 2, N'deneme ', N'D:\Desktop\images2.jpg', N'D:\Desktop\images2.jpg', NULL, N'', 1)
INSERT [dbo].[TblPersonel] ([PersonelID], [AdSoyad], [TC], [Adres], [Telefon], [Mail], [IseGirisTarih], [IstenCikisTarih], [Departman], [Gorev], [Aciklama], [KimlikOn], [KimlikArka], [Yetki], [Sifre], [Durum]) VALUES (3, N'Hasan Yıldırım', N'55555      ', N'sarıyer', N'(532) 547-8686', N'gaerggt', CAST(N'2021-12-07' AS Date), NULL, 3, 2, N'ghsghsfh', N'D:\Desktop\indir.jpg', N'D:\Desktop\indir.jpg', NULL, N'', 1)
INSERT [dbo].[TblPersonel] ([PersonelID], [AdSoyad], [TC], [Adres], [Telefon], [Mail], [IseGirisTarih], [IstenCikisTarih], [Departman], [Gorev], [Aciklama], [KimlikOn], [KimlikArka], [Yetki], [Sifre], [Durum]) VALUES (4, N'Melisa Yıldız', N'2256954126 ', N'antalya', N'(532) 659-8452', N'melisa@gmail.com', CAST(N'2021-12-01' AS Date), NULL, 1, 1, N'1 aralıkta işe başladı . 1500 tl hoşgeldin maaşı verildi.', N'D:\Desktop\images4.jpg', N'D:\Desktop\images4.jpg', NULL, N'001', 1)
SET IDENTITY_INSERT [dbo].[TblPersonel] OFF
GO
SET IDENTITY_INSERT [dbo].[TblRezervasyon] ON 

INSERT [dbo].[TblRezervasyon] ([RezervasyonID], [Misafir], [GirisTarih], [CikisTarih], [Kisi], [Oda], [RezervasyonAdSoyad], [Kisi1], [Kisi2], [Kisi3], [Telefon], [Aciklama], [Durum], [Toplam], [KasayaAktar]) VALUES (1, 1, CAST(N'2022-01-07' AS Date), CAST(N'2022-01-09' AS Date), N'1', 17, NULL, NULL, NULL, NULL, N'(537) 526-8852', N'', 15, CAST(200.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblRezervasyon] ([RezervasyonID], [Misafir], [GirisTarih], [CikisTarih], [Kisi], [Oda], [RezervasyonAdSoyad], [Kisi1], [Kisi2], [Kisi3], [Telefon], [Aciklama], [Durum], [Toplam], [KasayaAktar]) VALUES (2, 2, CAST(N'2022-01-08' AS Date), CAST(N'2022-01-11' AS Date), N'2', 4, NULL, 3, NULL, NULL, N'(538) 754-8856', N'', 15, CAST(500.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblRezervasyon] ([RezervasyonID], [Misafir], [GirisTarih], [CikisTarih], [Kisi], [Oda], [RezervasyonAdSoyad], [Kisi1], [Kisi2], [Kisi3], [Telefon], [Aciklama], [Durum], [Toplam], [KasayaAktar]) VALUES (3, 5, CAST(N'2022-01-07' AS Date), CAST(N'2022-01-10' AS Date), N'1', 12, NULL, NULL, NULL, NULL, N'(538) 038-3307', N'Tüm ödeme alındı', 15, CAST(500.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblRezervasyon] ([RezervasyonID], [Misafir], [GirisTarih], [CikisTarih], [Kisi], [Oda], [RezervasyonAdSoyad], [Kisi1], [Kisi2], [Kisi3], [Telefon], [Aciklama], [Durum], [Toplam], [KasayaAktar]) VALUES (4, 15, CAST(N'2022-01-08' AS Date), CAST(N'2022-01-10' AS Date), N'1', 11, NULL, NULL, NULL, NULL, N'(534) 411-5326', N'Ön rezervasyondan , resepsiyon tarafından rezervasyonu yapıldı ', 15, CAST(300.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblRezervasyon] ([RezervasyonID], [Misafir], [GirisTarih], [CikisTarih], [Kisi], [Oda], [RezervasyonAdSoyad], [Kisi1], [Kisi2], [Kisi3], [Telefon], [Aciklama], [Durum], [Toplam], [KasayaAktar]) VALUES (5, 16, CAST(N'2022-01-12' AS Date), CAST(N'2022-01-13' AS Date), N'1', 3, NULL, NULL, NULL, NULL, N'(533) 355-6699', N'600 tl alınacak', 15, CAST(600.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblRezervasyon] ([RezervasyonID], [Misafir], [GirisTarih], [CikisTarih], [Kisi], [Oda], [RezervasyonAdSoyad], [Kisi1], [Kisi2], [Kisi3], [Telefon], [Aciklama], [Durum], [Toplam], [KasayaAktar]) VALUES (6, 7, CAST(N'2022-01-12' AS Date), CAST(N'2022-01-14' AS Date), N'2', 6, NULL, 14, NULL, NULL, N'(532) 145-8695', N'2 gece kalıncak 2 kişi ', 15, CAST(600.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblRezervasyon] ([RezervasyonID], [Misafir], [GirisTarih], [CikisTarih], [Kisi], [Oda], [RezervasyonAdSoyad], [Kisi1], [Kisi2], [Kisi3], [Telefon], [Aciklama], [Durum], [Toplam], [KasayaAktar]) VALUES (7, 13, CAST(N'2022-01-13' AS Date), CAST(N'2022-01-15' AS Date), N'1', 18, NULL, NULL, NULL, NULL, N'(532) 658-9214', N'', 15, CAST(500.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblRezervasyon] ([RezervasyonID], [Misafir], [GirisTarih], [CikisTarih], [Kisi], [Oda], [RezervasyonAdSoyad], [Kisi1], [Kisi2], [Kisi3], [Telefon], [Aciklama], [Durum], [Toplam], [KasayaAktar]) VALUES (8, 5, CAST(N'2022-01-13' AS Date), CAST(N'2022-01-13' AS Date), N'1', 5, NULL, NULL, NULL, NULL, N'', N'', 15, CAST(50.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblRezervasyon] ([RezervasyonID], [Misafir], [GirisTarih], [CikisTarih], [Kisi], [Oda], [RezervasyonAdSoyad], [Kisi1], [Kisi2], [Kisi3], [Telefon], [Aciklama], [Durum], [Toplam], [KasayaAktar]) VALUES (9, 1, CAST(N'2022-01-12' AS Date), CAST(N'2022-01-13' AS Date), N'1', 1, NULL, NULL, NULL, NULL, N'(537) 526-8852', N'tst', 15, CAST(55.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblRezervasyon] ([RezervasyonID], [Misafir], [GirisTarih], [CikisTarih], [Kisi], [Oda], [RezervasyonAdSoyad], [Kisi1], [Kisi2], [Kisi3], [Telefon], [Aciklama], [Durum], [Toplam], [KasayaAktar]) VALUES (10, 2, CAST(N'2022-01-12' AS Date), CAST(N'2022-01-13' AS Date), N'1', 2, NULL, NULL, NULL, NULL, N'(538) 754-8856', N'test', 15, CAST(11.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblRezervasyon] ([RezervasyonID], [Misafir], [GirisTarih], [CikisTarih], [Kisi], [Oda], [RezervasyonAdSoyad], [Kisi1], [Kisi2], [Kisi3], [Telefon], [Aciklama], [Durum], [Toplam], [KasayaAktar]) VALUES (11, 3, CAST(N'2022-01-12' AS Date), CAST(N'2022-01-12' AS Date), N'1', 7, NULL, NULL, NULL, NULL, NULL, NULL, 15, CAST(50.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblRezervasyon] ([RezervasyonID], [Misafir], [GirisTarih], [CikisTarih], [Kisi], [Oda], [RezervasyonAdSoyad], [Kisi1], [Kisi2], [Kisi3], [Telefon], [Aciklama], [Durum], [Toplam], [KasayaAktar]) VALUES (12, 12, CAST(N'2022-01-15' AS Date), CAST(N'2022-01-17' AS Date), N'1', 8, NULL, NULL, NULL, NULL, N'(532) 585-6921', N'', 15, CAST(1000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblRezervasyon] ([RezervasyonID], [Misafir], [GirisTarih], [CikisTarih], [Kisi], [Oda], [RezervasyonAdSoyad], [Kisi1], [Kisi2], [Kisi3], [Telefon], [Aciklama], [Durum], [Toplam], [KasayaAktar]) VALUES (13, 1, CAST(N'2022-01-13' AS Date), CAST(N'2022-01-13' AS Date), N'1', 9, NULL, NULL, NULL, NULL, N'(537) 526-8852', N'test', 1, CAST(10.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[TblRezervasyon] ([RezervasyonID], [Misafir], [GirisTarih], [CikisTarih], [Kisi], [Oda], [RezervasyonAdSoyad], [Kisi1], [Kisi2], [Kisi3], [Telefon], [Aciklama], [Durum], [Toplam], [KasayaAktar]) VALUES (14, 7, CAST(N'2022-01-13' AS Date), CAST(N'2022-01-13' AS Date), N'1', 16, NULL, NULL, NULL, NULL, N'(532) 145-8695', N'test', 15, CAST(1.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblRezervasyon] ([RezervasyonID], [Misafir], [GirisTarih], [CikisTarih], [Kisi], [Oda], [RezervasyonAdSoyad], [Kisi1], [Kisi2], [Kisi3], [Telefon], [Aciklama], [Durum], [Toplam], [KasayaAktar]) VALUES (15, 6, CAST(N'2022-01-01' AS Date), CAST(N'2022-01-14' AS Date), N'1', 14, NULL, NULL, NULL, NULL, N'(532) 568-9562', N'test', 15, CAST(11.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblRezervasyon] ([RezervasyonID], [Misafir], [GirisTarih], [CikisTarih], [Kisi], [Oda], [RezervasyonAdSoyad], [Kisi1], [Kisi2], [Kisi3], [Telefon], [Aciklama], [Durum], [Toplam], [KasayaAktar]) VALUES (16, 2, CAST(N'2022-01-13' AS Date), CAST(N'2022-01-14' AS Date), N'1', 13, NULL, NULL, NULL, NULL, N'(538) 754-8856', N'', 15, CAST(5.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[TblRezervasyon] OFF
GO
SET IDENTITY_INSERT [dbo].[TblTelefon] ON 

INSERT [dbo].[TblTelefon] ([TelefonID], [Aciklama], [Telefon], [Durum]) VALUES (1, N'Havalimanı Servisi', N'2225521', 5)
INSERT [dbo].[TblTelefon] ([TelefonID], [Aciklama], [Telefon], [Durum]) VALUES (2, N'Çorbacı', N'2258459', 1)
SET IDENTITY_INSERT [dbo].[TblTelefon] OFF
GO
SET IDENTITY_INSERT [dbo].[TblUlke] ON 

INSERT [dbo].[TblUlke] ([UlkeID], [UlkeAd]) VALUES (1, N'Türkiye')
INSERT [dbo].[TblUlke] ([UlkeID], [UlkeAd]) VALUES (2, N'Almanya')
SET IDENTITY_INSERT [dbo].[TblUlke] OFF
GO
SET IDENTITY_INSERT [dbo].[TblUrun] ON 

INSERT [dbo].[TblUrun] ([UrunID], [UrunAd], [UrunGrup], [Birim], [Fiyat], [Toplam], [Kdv], [Durum]) VALUES (1, N'mercimek', 3, 3, CAST(6.00 AS Decimal(18, 2)), CAST(14200.00 AS Decimal(18, 2)), 18, 7)
INSERT [dbo].[TblUrun] ([UrunID], [UrunAd], [UrunGrup], [Birim], [Fiyat], [Toplam], [Kdv], [Durum]) VALUES (2, N'pirinç', 3, 3, CAST(7.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 18, 7)
INSERT [dbo].[TblUrun] ([UrunID], [UrunAd], [UrunGrup], [Birim], [Fiyat], [Toplam], [Kdv], [Durum]) VALUES (3, N'beyaz peynir', 4, 9, CAST(15.00 AS Decimal(18, 2)), CAST(104.00 AS Decimal(18, 2)), 18, 7)
INSERT [dbo].[TblUrun] ([UrunID], [UrunAd], [UrunGrup], [Birim], [Fiyat], [Toplam], [Kdv], [Durum]) VALUES (4, N'kaşar', 4, 9, CAST(50.00 AS Decimal(18, 2)), CAST(1300.00 AS Decimal(18, 2)), 18, 7)
INSERT [dbo].[TblUrun] ([UrunID], [UrunAd], [UrunGrup], [Birim], [Fiyat], [Toplam], [Kdv], [Durum]) VALUES (5, N'vişne suyu', 1, 1, CAST(5.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 18, 7)
INSERT [dbo].[TblUrun] ([UrunID], [UrunAd], [UrunGrup], [Birim], [Fiyat], [Toplam], [Kdv], [Durum]) VALUES (6, N'soda', 1, 9, CAST(1.25 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 18, 7)
INSERT [dbo].[TblUrun] ([UrunID], [UrunAd], [UrunGrup], [Birim], [Fiyat], [Toplam], [Kdv], [Durum]) VALUES (7, N'Kahve', 1, 2, CAST(15.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 8, 6)
INSERT [dbo].[TblUrun] ([UrunID], [UrunAd], [UrunGrup], [Birim], [Fiyat], [Toplam], [Kdv], [Durum]) VALUES (8, N'Yeşil Mercimek', 3, 3, CAST(8.00 AS Decimal(18, 2)), CAST(34.00 AS Decimal(18, 2)), 18, 7)
INSERT [dbo].[TblUrun] ([UrunID], [UrunAd], [UrunGrup], [Birim], [Fiyat], [Toplam], [Kdv], [Durum]) VALUES (9, N'Ekmek', 3, 9, CAST(1.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 8, 1)
INSERT [dbo].[TblUrun] ([UrunID], [UrunAd], [UrunGrup], [Birim], [Fiyat], [Toplam], [Kdv], [Durum]) VALUES (10, N'mandalina', 2, 3, CAST(2.00 AS Decimal(18, 2)), CAST(155.00 AS Decimal(18, 2)), 18, 1)
INSERT [dbo].[TblUrun] ([UrunID], [UrunAd], [UrunGrup], [Birim], [Fiyat], [Toplam], [Kdv], [Durum]) VALUES (11, N'çikolata', 2, 9, CAST(1.50 AS Decimal(18, 2)), CAST(26.00 AS Decimal(18, 2)), 8, 1)
SET IDENTITY_INSERT [dbo].[TblUrun] OFF
GO
SET IDENTITY_INSERT [dbo].[TblUrunGrup] ON 

INSERT [dbo].[TblUrunGrup] ([UrunGrupID], [UrunGrupAd], [Durum]) VALUES (1, N'İçecekler', 1)
INSERT [dbo].[TblUrunGrup] ([UrunGrupID], [UrunGrupAd], [Durum]) VALUES (2, N'Meyveler', 1)
INSERT [dbo].[TblUrunGrup] ([UrunGrupID], [UrunGrupAd], [Durum]) VALUES (3, N'Bakliyatlar', 1)
INSERT [dbo].[TblUrunGrup] ([UrunGrupID], [UrunGrupAd], [Durum]) VALUES (4, N'Peynirler', 1)
INSERT [dbo].[TblUrunGrup] ([UrunGrupID], [UrunGrupAd], [Durum]) VALUES (5, N'Diğer', 1)
SET IDENTITY_INSERT [dbo].[TblUrunGrup] OFF
GO
SET IDENTITY_INSERT [dbo].[TblUrunHareket] ON 

INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (1, 1, N'Giriş', CAST(100.00 AS Decimal(18, 2)), CAST(N'2021-12-15' AS Date), NULL, NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (2, 2, N'Giriş', CAST(100.00 AS Decimal(18, 2)), CAST(N'2021-12-15' AS Date), NULL, NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (3, 3, N'Giriş', CAST(300.00 AS Decimal(18, 2)), CAST(N'2021-12-15' AS Date), NULL, NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (4, 4, N'Giriş', CAST(200.00 AS Decimal(18, 2)), CAST(N'2021-12-15' AS Date), NULL, NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (5, 5, N'Giriş', CAST(100.00 AS Decimal(18, 2)), CAST(N'2021-12-15' AS Date), NULL, NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (6, 6, N'Giriş', CAST(200.00 AS Decimal(18, 2)), CAST(N'2021-12-15' AS Date), NULL, NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (7, 7, N'Giriş', CAST(150.00 AS Decimal(18, 2)), CAST(N'2021-12-15' AS Date), NULL, NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (8, 8, N'Çıkış', CAST(15.00 AS Decimal(18, 2)), CAST(N'2021-12-15' AS Date), N'', NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (9, 7, N'Giriş', CAST(100.00 AS Decimal(18, 2)), CAST(N'2021-12-16' AS Date), NULL, NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (10, 4, N'Çıkış', CAST(100.00 AS Decimal(18, 2)), CAST(N'2021-12-16' AS Date), NULL, NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (11, 4, N'Çıkış', CAST(20.00 AS Decimal(18, 2)), CAST(N'2021-12-16' AS Date), NULL, NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (12, 4, N'Giriş', CAST(100.00 AS Decimal(18, 2)), CAST(N'2021-12-16' AS Date), NULL, NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (13, 1, N'Giriş', CAST(100.00 AS Decimal(18, 2)), CAST(N'2021-12-08' AS Date), N'', NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (14, 1, N'Giriş', CAST(14000.00 AS Decimal(18, 2)), CAST(N'2021-12-22' AS Date), N'AAA', NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (15, 9, N'Giriş', CAST(30.00 AS Decimal(18, 2)), CAST(N'2021-12-25' AS Date), N'fırıncı sabah 30 ekmek getirdi.', NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (16, 9, N'Giriş', CAST(35.00 AS Decimal(18, 2)), CAST(N'2021-12-25' AS Date), N'akşam yemeği', NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (17, 9, N'Çıkış', CAST(65.00 AS Decimal(18, 2)), CAST(N'2021-12-25' AS Date), N'bütün ekmekler bitti', NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (18, 8, N'Çıkış', CAST(3.00 AS Decimal(18, 2)), CAST(N'2022-01-07' AS Date), N'3 kg yeşil mercimek bozulduğu için çöpe gitti', NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (19, 8, N'Giriş', CAST(25.00 AS Decimal(18, 2)), CAST(N'2022-01-07' AS Date), N'25 kg yeşil mercimek kg fiyatı 8tlden alındı', NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (20, 2, N'Giriş', CAST(40.00 AS Decimal(18, 2)), CAST(N'2022-01-07' AS Date), N'', CAST(7.00 AS Decimal(18, 2)), CAST(280.00 AS Decimal(18, 2)))
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (21, 6, N'Giriş', CAST(50.00 AS Decimal(18, 2)), CAST(N'2022-01-07' AS Date), N'50 adet soda alındı', CAST(1.25 AS Decimal(18, 2)), CAST(62.50 AS Decimal(18, 2)))
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (22, 5, N'', CAST(50.00 AS Decimal(18, 2)), CAST(N'2022-01-07' AS Date), N'50 adet vişne suyu alındı.', CAST(5.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (23, 7, N'', CAST(10.00 AS Decimal(18, 2)), CAST(N'2022-01-07' AS Date), N'10 paket kahve alındı', CAST(15.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (24, 3, N'Giriş', CAST(14.00 AS Decimal(18, 2)), CAST(N'2022-01-07' AS Date), N'14 kg beyaz peynir alındı', CAST(15.00 AS Decimal(18, 2)), CAST(210.00 AS Decimal(18, 2)))
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (25, 4, N'Giriş', CAST(20.00 AS Decimal(18, 2)), CAST(N'2022-01-07' AS Date), N'20 adet kaşar peyniri alındı', CAST(50.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (26, 10, N'', CAST(15.00 AS Decimal(18, 2)), CAST(N'2022-01-07' AS Date), N'15 kg mandalina kg başı 2 tlden alındı', CAST(2.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)))
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (27, 10, N'Giriş', CAST(15.00 AS Decimal(18, 2)), CAST(N'2022-01-07' AS Date), N'15 kg mandalina kg başı 2tlden alındı', CAST(2.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)))
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (28, 10, N'Giriş', CAST(60.00 AS Decimal(18, 2)), CAST(N'2022-01-07' AS Date), N'2 tlden 60 kg alındı', CAST(2.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (29, 10, N'Giriş', CAST(80.00 AS Decimal(18, 2)), CAST(N'2022-01-07' AS Date), N'80 kg mandalina alındı 2tlden', CAST(2.00 AS Decimal(18, 2)), CAST(160.00 AS Decimal(18, 2)))
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (30, 3, N'Çıkış', CAST(250.00 AS Decimal(18, 2)), CAST(N'2022-01-07' AS Date), N'250 kg beyaz peynir tüketildi ', NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (31, 3, N'Giriş', CAST(40.00 AS Decimal(18, 2)), CAST(N'2022-01-07' AS Date), N'', CAST(15.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)))
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (32, 9, N'Giriş', CAST(20.00 AS Decimal(18, 2)), CAST(N'2022-01-12' AS Date), N'20 adet ekmek alındı .', CAST(1.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)))
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (33, 9, N'Çıkış', CAST(10.00 AS Decimal(18, 2)), CAST(N'2022-01-12' AS Date), N'10 tane ekmek yendi', NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (34, 2, N'Giriş', CAST(10.00 AS Decimal(18, 2)), CAST(N'2022-01-12' AS Date), N'', CAST(7.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (35, 11, N'Çıkış', CAST(4.00 AS Decimal(18, 2)), CAST(N'2022-01-13' AS Date), N'', NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (36, 11, N'Çıkış', CAST(4.00 AS Decimal(18, 2)), CAST(N'2022-01-12' AS Date), N'', NULL, NULL)
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (37, 11, N'Çıkış', CAST(2.00 AS Decimal(18, 2)), CAST(N'2022-01-12' AS Date), N'', CAST(1.50 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (38, 11, N'Çıkış', CAST(4.00 AS Decimal(18, 2)), CAST(N'2022-01-12' AS Date), N'', CAST(1.50 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)))
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (39, 11, N'Çıkış', CAST(5.00 AS Decimal(18, 2)), CAST(N'2022-01-12' AS Date), N'', CAST(1.50 AS Decimal(18, 2)), CAST(7.50 AS Decimal(18, 2)))
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (40, 11, N'Çıkış', CAST(6.00 AS Decimal(18, 2)), CAST(N'2022-01-12' AS Date), N'', CAST(1.50 AS Decimal(18, 2)), CAST(9.00 AS Decimal(18, 2)))
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (41, 11, N'Giriş', CAST(6.00 AS Decimal(18, 2)), CAST(N'2022-01-12' AS Date), N'', CAST(1.50 AS Decimal(18, 2)), CAST(9.00 AS Decimal(18, 2)))
INSERT [dbo].[TblUrunHareket] ([Hareketid], [Urun], [HareketTuru], [Miktar], [Tarih], [Aciklama], [BirimFiyat], [ToplamFiyat]) VALUES (42, 11, N'Çıkış', CAST(5.00 AS Decimal(18, 2)), CAST(N'2022-01-12' AS Date), N'', CAST(1.50 AS Decimal(18, 2)), CAST(7.50 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[TblUrunHareket] OFF
GO
SET IDENTITY_INSERT [dbo].[TblYeniKayit] ON 

INSERT [dbo].[TblYeniKayit] ([ID], [AdSoyad], [Mail], [Telefon], [Sifre]) VALUES (1, N'Çağla Topçu', N'deneme@gmail.com', N'500', N'0')
INSERT [dbo].[TblYeniKayit] ([ID], [AdSoyad], [Mail], [Telefon], [Sifre]) VALUES (2, N'Ezgi Balku', N'test@gmail.com', N'100', N'b')
INSERT [dbo].[TblYeniKayit] ([ID], [AdSoyad], [Mail], [Telefon], [Sifre]) VALUES (3, N'Atakan Sarı', N'atakan@gmail.com', N'300', N'a')
INSERT [dbo].[TblYeniKayit] ([ID], [AdSoyad], [Mail], [Telefon], [Sifre]) VALUES (4, N'Sarı Atakan', N'sari@gmail.com', N'400', N'b')
INSERT [dbo].[TblYeniKayit] ([ID], [AdSoyad], [Mail], [Telefon], [Sifre]) VALUES (5, N'Aslıhan Çimen', N'asli@gmail.com', N'400', N'1')
INSERT [dbo].[TblYeniKayit] ([ID], [AdSoyad], [Mail], [Telefon], [Sifre]) VALUES (6, N'Ayşegül Yıldız', N'ayse@gmail.com', N'05382069555', N'741')
INSERT [dbo].[TblYeniKayit] ([ID], [AdSoyad], [Mail], [Telefon], [Sifre]) VALUES (7, N'Mustafa Topçu', N'mtopcu@hotmail.com', N'5344115326', N'1')
INSERT [dbo].[TblYeniKayit] ([ID], [AdSoyad], [Mail], [Telefon], [Sifre]) VALUES (8, N'zehra topçu', N'zehra@gmail.com', N'5348569562', N'123')
SET IDENTITY_INSERT [dbo].[TblYeniKayit] OFF
GO
ALTER TABLE [dbo].[ilceler]  WITH CHECK ADD  CONSTRAINT [FK_ilceler_iller] FOREIGN KEY([sehir])
REFERENCES [dbo].[iller] ([id])
GO
ALTER TABLE [dbo].[ilceler] CHECK CONSTRAINT [FK_ilceler_iller]
GO
ALTER TABLE [dbo].[TblBirim]  WITH CHECK ADD  CONSTRAINT [FK_TblBirim_TblDurum] FOREIGN KEY([Durum])
REFERENCES [dbo].[TblDurum] ([DurumId])
GO
ALTER TABLE [dbo].[TblBirim] CHECK CONSTRAINT [FK_TblBirim_TblDurum]
GO
ALTER TABLE [dbo].[TblDepartman]  WITH CHECK ADD  CONSTRAINT [FK_TblDepartman_TblDurum] FOREIGN KEY([Durum])
REFERENCES [dbo].[TblDurum] ([DurumId])
GO
ALTER TABLE [dbo].[TblDepartman] CHECK CONSTRAINT [FK_TblDepartman_TblDurum]
GO
ALTER TABLE [dbo].[TblGorev]  WITH CHECK ADD  CONSTRAINT [FK_TblGorev_TblDepartman] FOREIGN KEY([Departman])
REFERENCES [dbo].[TblDepartman] ([DepartmanID])
GO
ALTER TABLE [dbo].[TblGorev] CHECK CONSTRAINT [FK_TblGorev_TblDepartman]
GO
ALTER TABLE [dbo].[TblGorev]  WITH CHECK ADD  CONSTRAINT [FK_TblGorev_TblDurum] FOREIGN KEY([Durum])
REFERENCES [dbo].[TblDurum] ([DurumId])
GO
ALTER TABLE [dbo].[TblGorev] CHECK CONSTRAINT [FK_TblGorev_TblDurum]
GO
ALTER TABLE [dbo].[TblKasa]  WITH CHECK ADD  CONSTRAINT [FK_TblKasa_TblDurum] FOREIGN KEY([Durum])
REFERENCES [dbo].[TblDurum] ([DurumId])
GO
ALTER TABLE [dbo].[TblKasa] CHECK CONSTRAINT [FK_TblKasa_TblDurum]
GO
ALTER TABLE [dbo].[TblKur]  WITH CHECK ADD  CONSTRAINT [FK_TblKur_TblDurum] FOREIGN KEY([Durum])
REFERENCES [dbo].[TblDurum] ([DurumId])
GO
ALTER TABLE [dbo].[TblKur] CHECK CONSTRAINT [FK_TblKur_TblDurum]
GO
ALTER TABLE [dbo].[TblMisafir]  WITH CHECK ADD  CONSTRAINT [FK_TblMisafir_ilceler] FOREIGN KEY([ilce])
REFERENCES [dbo].[ilceler] ([id])
GO
ALTER TABLE [dbo].[TblMisafir] CHECK CONSTRAINT [FK_TblMisafir_ilceler]
GO
ALTER TABLE [dbo].[TblMisafir]  WITH CHECK ADD  CONSTRAINT [FK_TblMisafir_iller] FOREIGN KEY([sehir])
REFERENCES [dbo].[iller] ([id])
GO
ALTER TABLE [dbo].[TblMisafir] CHECK CONSTRAINT [FK_TblMisafir_iller]
GO
ALTER TABLE [dbo].[TblMisafir]  WITH CHECK ADD  CONSTRAINT [FK_TblMisafir_TblDurum] FOREIGN KEY([Durum])
REFERENCES [dbo].[TblDurum] ([DurumId])
GO
ALTER TABLE [dbo].[TblMisafir] CHECK CONSTRAINT [FK_TblMisafir_TblDurum]
GO
ALTER TABLE [dbo].[TblOda]  WITH CHECK ADD  CONSTRAINT [FK_TblOda_TblDurum] FOREIGN KEY([Durum])
REFERENCES [dbo].[TblDurum] ([DurumId])
GO
ALTER TABLE [dbo].[TblOda] CHECK CONSTRAINT [FK_TblOda_TblDurum]
GO
ALTER TABLE [dbo].[TblPersonel]  WITH CHECK ADD  CONSTRAINT [FK_TblPersonel_TblDepartman] FOREIGN KEY([Departman])
REFERENCES [dbo].[TblDepartman] ([DepartmanID])
GO
ALTER TABLE [dbo].[TblPersonel] CHECK CONSTRAINT [FK_TblPersonel_TblDepartman]
GO
ALTER TABLE [dbo].[TblPersonel]  WITH CHECK ADD  CONSTRAINT [FK_TblPersonel_TblDurum] FOREIGN KEY([Durum])
REFERENCES [dbo].[TblDurum] ([DurumId])
GO
ALTER TABLE [dbo].[TblPersonel] CHECK CONSTRAINT [FK_TblPersonel_TblDurum]
GO
ALTER TABLE [dbo].[TblPersonel]  WITH CHECK ADD  CONSTRAINT [FK_TblPersonel_TblGorev] FOREIGN KEY([Gorev])
REFERENCES [dbo].[TblGorev] ([GorevID])
GO
ALTER TABLE [dbo].[TblPersonel] CHECK CONSTRAINT [FK_TblPersonel_TblGorev]
GO
ALTER TABLE [dbo].[TblRezervasyon]  WITH CHECK ADD  CONSTRAINT [FK_TblRezervasyon_TblDurum] FOREIGN KEY([Durum])
REFERENCES [dbo].[TblDurum] ([DurumId])
GO
ALTER TABLE [dbo].[TblRezervasyon] CHECK CONSTRAINT [FK_TblRezervasyon_TblDurum]
GO
ALTER TABLE [dbo].[TblRezervasyon]  WITH CHECK ADD  CONSTRAINT [FK_TblRezervasyon_TblDurum1] FOREIGN KEY([Durum])
REFERENCES [dbo].[TblDurum] ([DurumId])
GO
ALTER TABLE [dbo].[TblRezervasyon] CHECK CONSTRAINT [FK_TblRezervasyon_TblDurum1]
GO
ALTER TABLE [dbo].[TblRezervasyon]  WITH CHECK ADD  CONSTRAINT [FK_TblRezervasyon_TblMisafir] FOREIGN KEY([Misafir])
REFERENCES [dbo].[TblMisafir] ([MisafirID])
GO
ALTER TABLE [dbo].[TblRezervasyon] CHECK CONSTRAINT [FK_TblRezervasyon_TblMisafir]
GO
ALTER TABLE [dbo].[TblRezervasyon]  WITH CHECK ADD  CONSTRAINT [FK_TblRezervasyon_TblOda] FOREIGN KEY([Oda])
REFERENCES [dbo].[TblOda] ([OdaID])
GO
ALTER TABLE [dbo].[TblRezervasyon] CHECK CONSTRAINT [FK_TblRezervasyon_TblOda]
GO
ALTER TABLE [dbo].[TblTelefon]  WITH CHECK ADD  CONSTRAINT [FK_TblTelefon_TblDurum] FOREIGN KEY([Durum])
REFERENCES [dbo].[TblDurum] ([DurumId])
GO
ALTER TABLE [dbo].[TblTelefon] CHECK CONSTRAINT [FK_TblTelefon_TblDurum]
GO
ALTER TABLE [dbo].[TblUrun]  WITH CHECK ADD  CONSTRAINT [FK_TblUrun_TblBirim] FOREIGN KEY([Birim])
REFERENCES [dbo].[TblBirim] ([BirimID])
GO
ALTER TABLE [dbo].[TblUrun] CHECK CONSTRAINT [FK_TblUrun_TblBirim]
GO
ALTER TABLE [dbo].[TblUrun]  WITH CHECK ADD  CONSTRAINT [FK_TblUrun_TblDurum] FOREIGN KEY([Durum])
REFERENCES [dbo].[TblDurum] ([DurumId])
GO
ALTER TABLE [dbo].[TblUrun] CHECK CONSTRAINT [FK_TblUrun_TblDurum]
GO
ALTER TABLE [dbo].[TblUrun]  WITH CHECK ADD  CONSTRAINT [FK_TblUrun_TblUrunGrup] FOREIGN KEY([UrunGrup])
REFERENCES [dbo].[TblUrunGrup] ([UrunGrupID])
GO
ALTER TABLE [dbo].[TblUrun] CHECK CONSTRAINT [FK_TblUrun_TblUrunGrup]
GO
ALTER TABLE [dbo].[TblUrunGrup]  WITH CHECK ADD  CONSTRAINT [FK_TblUrunGrup_TblDurum] FOREIGN KEY([Durum])
REFERENCES [dbo].[TblDurum] ([DurumId])
GO
ALTER TABLE [dbo].[TblUrunGrup] CHECK CONSTRAINT [FK_TblUrunGrup_TblDurum]
GO
ALTER TABLE [dbo].[TblUrunHareket]  WITH CHECK ADD  CONSTRAINT [FK_TblUrunHareket_TblUrun] FOREIGN KEY([Urun])
REFERENCES [dbo].[TblUrun] ([UrunID])
GO
ALTER TABLE [dbo].[TblUrunHareket] CHECK CONSTRAINT [FK_TblUrunHareket_TblUrun]
GO
/****** Object:  StoredProcedure [dbo].[OdaDurum]    Script Date: 17.01.2022 14:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[OdaDurum]
As
Select DurumAd,Count(*) as 'Sayı' From TblOda
inner join TblDurum
On TblDurum.DurumId=TblOda.Durum
Group By DurumAd
GO
USE [master]
GO
ALTER DATABASE [DbOtelYeni] SET  READ_WRITE 
GO
