USE [master]
GO
/****** Object:  Database [BDPichari]    Script Date: 24/05/2023 10:32:12 ******/
CREATE DATABASE [BDPichari]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDPichari', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BDPichari.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDPichari_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BDPichari_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BDPichari] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDPichari].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDPichari] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDPichari] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDPichari] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDPichari] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDPichari] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDPichari] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BDPichari] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDPichari] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDPichari] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDPichari] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDPichari] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDPichari] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDPichari] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDPichari] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDPichari] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BDPichari] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDPichari] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDPichari] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDPichari] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDPichari] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDPichari] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDPichari] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDPichari] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BDPichari] SET  MULTI_USER 
GO
ALTER DATABASE [BDPichari] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDPichari] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDPichari] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDPichari] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BDPichari] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BDPichari] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BDPichari] SET QUERY_STORE = ON
GO
ALTER DATABASE [BDPichari] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BDPichari]
GO
/****** Object:  Table [dbo].[Afiliación]    Script Date: 24/05/2023 10:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Afiliación](
	[idAfiliación] [int] NOT NULL,
	[NomAfiliación] [varchar](50) NULL,
	[TIPO DE COMISION - AFP] [varchar](50) NULL,
 CONSTRAINT [PK_Afiliación] PRIMARY KEY CLUSTERED 
(
	[idAfiliación] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cargos]    Script Date: 24/05/2023 10:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargos](
	[idCargo] [varchar](50) NOT NULL,
	[idNomcargo] [varchar](50) NULL,
	[idPlanilla] [varchar](50) NULL,
 CONSTRAINT [PK_Cargos] PRIMARY KEY CLUSTERED 
(
	[idCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clasificador]    Script Date: 24/05/2023 10:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clasificador](
	[idClasificador] [varchar](50) NOT NULL,
	[NombreClasificador] [varchar](50) NULL,
	[Codigo] [int] NULL,
 CONSTRAINT [PK_Clasificador] PRIMARY KEY CLUSTERED 
(
	[idClasificador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Descuento]    Script Date: 24/05/2023 10:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Descuento](
	[idDescuento] [int] NOT NULL,
	[DAPET] [varchar](50) NULL,
	[VT] [varchar](50) NULL,
	[TDT] [varchar](50) NULL,
	[VC] [varchar](50) NULL,
	[DLABORADOS] [varchar](50) NULL,
	[RDM] [varchar](50) NULL,
	[idDescuenTrab] [varchar](50) NULL,
	[SUBTOTAL DSCTO] [varchar](50) NULL,
	[NETO A PAGAR] [varchar](50) NULL,
	[FIRMAS] [varchar](50) NULL,
	[APORT. ESSALUD] [varchar](50) NULL,
 CONSTRAINT [PK_Descuento] PRIMARY KEY CLUSTERED 
(
	[idDescuento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DescuentoTrab]    Script Date: 24/05/2023 10:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DescuentoTrab](
	[idDescuentoTrab] [int] NULL,
	[SNP] [varchar](50) NULL,
	[AFP INTEG.] [varchar](50) NULL,
	[AFP PROF] [varchar](50) NULL,
	[AFP PRIMA] [varchar](50) NULL,
	[AFP HABITAT] [varchar](50) NULL,
	[TARDANZAS FALTA Y LSG] [varchar](50) NULL,
	[DESCUENTO JUDICIAL/OTRO DESCUENTO] [varchar](50) NULL,
	[DSCTO RIMAC] [varchar](50) NULL,
	[I.R. 5TA CAT.] [varchar](50) NULL,
	[idAfiliación] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fechas_Dias]    Script Date: 24/05/2023 10:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fechas_Dias](
	[idFechadias] [int] NULL,
	[Fecha_Ingreso] [varchar](50) NULL,
	[Dias_Laborados] [varchar](50) NULL,
	[Dias_NoTrabajados] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NivelRemunerativa]    Script Date: 24/05/2023 10:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NivelRemunerativa](
	[NivelRem] [varchar](50) NOT NULL,
	[NombrenivelRem] [varchar](50) NULL,
	[codigo] [varchar](50) NULL,
 CONSTRAINT [PK_NivelRemunerativa] PRIMARY KEY CLUSTERED 
(
	[NivelRem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 24/05/2023 10:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[idPagos] [varchar](50) NOT NULL,
	[BEDS] [varchar](100) NULL,
	[CQRB] [varchar](100) NULL,
	[BF] [varchar](100) NULL,
	[TPH] [varchar](100) NULL,
	[RB] [varchar](100) NULL,
	[PPC] [varchar](100) NULL,
	[RT] [varchar](100) NULL,
	[BE] [varchar](100) NULL,
	[BOTRAS] [varchar](100) NULL,
	[RU] [varchar](100) NULL,
	[NMUS] [varchar](100) NULL,
	[BDP] [varchar](100) NULL,
	[TOTAL] [varchar](50) NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[idPagos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Planilla]    Script Date: 24/05/2023 10:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planilla](
	[idPlanilla] [varchar](50) NOT NULL,
	[NomPlanilla] [varchar](50) NULL,
	[NomProyecto] [varchar](50) NULL,
 CONSTRAINT [PK_Planilla] PRIMARY KEY CLUSTERED 
(
	[idPlanilla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipodoc]    Script Date: 24/05/2023 10:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipodoc](
	[idTipodoc] [varchar](50) NOT NULL,
	[NomTipodoc] [nchar](10) NULL,
 CONSTRAINT [PK_Tipodoc] PRIMARY KEY CLUSTERED 
(
	[idTipodoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trabajador]    Script Date: 24/05/2023 10:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trabajador](
	[idTrabajador] [varchar](50) NOT NULL,
	[CodTrabajador] [varchar](50) NOT NULL,
	[SecFun] [varchar](50) NULL,
	[idClasificador] [varchar](50) NULL,
	[Apaterno] [varchar](50) NULL,
	[Amaterno] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Dni] [int] NULL,
	[idTipodoc] [varchar](50) NULL,
	[NumDoc] [varchar](50) NULL,
	[idCargo] [varchar](50) NULL,
	[idPlanilla] [varchar](50) NULL,
	[Renimp] [varchar](50) NULL,
	[idnivelRem] [varchar](50) NULL,
	[Remmensual] [varchar](50) NULL,
	[idPagos] [varchar](50) NULL,
	[idAfilacion] [varchar](50) NULL,
 CONSTRAINT [PK_Trabajador] PRIMARY KEY CLUSTERED 
(
	[idTrabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador_Cargos] FOREIGN KEY([idCargo])
REFERENCES [dbo].[Cargos] ([idCargo])
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [FK_Trabajador_Cargos]
GO
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador_NivelRemunerativa] FOREIGN KEY([idPlanilla])
REFERENCES [dbo].[NivelRemunerativa] ([NivelRem])
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [FK_Trabajador_NivelRemunerativa]
GO
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador_Pagos] FOREIGN KEY([idPagos])
REFERENCES [dbo].[Pagos] ([idPagos])
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [FK_Trabajador_Pagos]
GO
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [Trabajador_Clasificador] FOREIGN KEY([idClasificador])
REFERENCES [dbo].[Clasificador] ([idClasificador])
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [Trabajador_Clasificador]
GO
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [Trabajador_Planilla] FOREIGN KEY([idPlanilla])
REFERENCES [dbo].[Planilla] ([idPlanilla])
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [Trabajador_Planilla]
GO
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [Trabajador_Tipodoc] FOREIGN KEY([idTipodoc])
REFERENCES [dbo].[Tipodoc] ([idTipodoc])
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [Trabajador_Tipodoc]
GO
USE [master]
GO
ALTER DATABASE [BDPichari] SET  READ_WRITE 
GO
