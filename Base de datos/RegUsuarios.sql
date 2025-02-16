USE [master]
GO
/****** Object:  Database [RegUsuarios]    Script Date: 16/02/2025 4:16:15 p. m. ******/
CREATE DATABASE [RegUsuarios]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RegUsuarios', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\RegUsuarios.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RegUsuarios_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\RegUsuarios_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [RegUsuarios] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RegUsuarios].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RegUsuarios] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RegUsuarios] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RegUsuarios] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RegUsuarios] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RegUsuarios] SET ARITHABORT OFF 
GO
ALTER DATABASE [RegUsuarios] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RegUsuarios] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RegUsuarios] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RegUsuarios] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RegUsuarios] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RegUsuarios] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RegUsuarios] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RegUsuarios] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RegUsuarios] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RegUsuarios] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RegUsuarios] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RegUsuarios] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RegUsuarios] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RegUsuarios] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RegUsuarios] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RegUsuarios] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RegUsuarios] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RegUsuarios] SET RECOVERY FULL 
GO
ALTER DATABASE [RegUsuarios] SET  MULTI_USER 
GO
ALTER DATABASE [RegUsuarios] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RegUsuarios] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RegUsuarios] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RegUsuarios] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RegUsuarios] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RegUsuarios] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'RegUsuarios', N'ON'
GO
ALTER DATABASE [RegUsuarios] SET QUERY_STORE = ON
GO
ALTER DATABASE [RegUsuarios] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [RegUsuarios]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 16/02/2025 4:16:15 p. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16/02/2025 4:16:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cedula] [nvarchar](450) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Apellidos] [nvarchar](max) NOT NULL,
	[Correo_Electronico] [nvarchar](max) NOT NULL,
	[Fecha_Ult_Acceso] [datetime2](7) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 16/02/2025 4:16:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[Cedula] [bigint] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellidos] [varchar](50) NULL,
	[Correo_Electronico] [varchar](50) NULL,
	[Feccha_Ult_Acceso] [datetime] NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250216054818_InitialCreate', N'9.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250216064217_AddPasswordToUsers', N'9.0.2')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Cedula], [Nombre], [Apellidos], [Correo_Electronico], [Fecha_Ult_Acceso], [Password]) VALUES (2, N'1013690', N'Andres', N'Caldon', N'andres@correo.com', CAST(N'2025-02-16T07:09:33.8797343' AS DateTime2), N'112233')
INSERT [dbo].[Users] ([Id], [Cedula], [Nombre], [Apellidos], [Correo_Electronico], [Fecha_Ult_Acceso], [Password]) VALUES (3, N'552233', N'Arturo', N'Prueba', N'arturo@correo', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'123123')
INSERT [dbo].[Users] ([Id], [Cedula], [Nombre], [Apellidos], [Correo_Electronico], [Fecha_Ult_Acceso], [Password]) VALUES (4, N'787878', N'Andrea', N'Prueba', N'andrea@correo', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'753753')
INSERT [dbo].[Users] ([Id], [Cedula], [Nombre], [Apellidos], [Correo_Electronico], [Fecha_Ult_Acceso], [Password]) VALUES (5, N'546546', N'Jose', N'Prueba', N'jose@correo', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'125125')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Users_Cedula]    Script Date: 16/02/2025 4:16:15 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Users_Cedula] ON [dbo].[Users]
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (N'') FOR [Password]
GO
USE [master]
GO
ALTER DATABASE [RegUsuarios] SET  READ_WRITE 
GO
