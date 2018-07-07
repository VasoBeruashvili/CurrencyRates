USE [master]
GO
/****** Object:  Database [CurrencyRates]    Script Date: 07.09.2017 11:34:04 ******/
CREATE DATABASE [CurrencyRates]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CurrencyRates', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\CurrencyRates.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CurrencyRates_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\CurrencyRates_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CurrencyRates] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CurrencyRates].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CurrencyRates] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CurrencyRates] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CurrencyRates] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CurrencyRates] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CurrencyRates] SET ARITHABORT OFF 
GO
ALTER DATABASE [CurrencyRates] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CurrencyRates] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CurrencyRates] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CurrencyRates] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CurrencyRates] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CurrencyRates] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CurrencyRates] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CurrencyRates] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CurrencyRates] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CurrencyRates] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CurrencyRates] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CurrencyRates] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CurrencyRates] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CurrencyRates] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CurrencyRates] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CurrencyRates] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CurrencyRates] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CurrencyRates] SET RECOVERY FULL 
GO
ALTER DATABASE [CurrencyRates] SET  MULTI_USER 
GO
ALTER DATABASE [CurrencyRates] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CurrencyRates] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CurrencyRates] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CurrencyRates] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CurrencyRates] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CurrencyRates', N'ON'
GO
ALTER DATABASE [CurrencyRates] SET QUERY_STORE = OFF
GO
USE [CurrencyRates]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [CurrencyRates]
GO
/****** Object:  Schema [cr]    Script Date: 07.09.2017 11:34:04 ******/
CREATE SCHEMA [cr]
GO
/****** Object:  Table [cr].[Histories]    Script Date: 07.09.2017 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cr].[Histories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CurrencyDate] [date] NOT NULL,
	[Value] [decimal](14, 4) NOT NULL,
	[Code] [nvarchar](5) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Histories_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [cr].[Histories] ON 
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (1, CAST(N'2017-08-24' AS Date), CAST(2.3946 AS Decimal(14, 4)), N'USD', N'აშშ დოლარი')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (2, CAST(N'2017-08-24' AS Date), CAST(2.8216 AS Decimal(14, 4)), N'EUR', N'ევრო')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (3, CAST(N'2017-08-25' AS Date), CAST(2.4169 AS Decimal(14, 4)), N'USD', N'აშშ დოლარი')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (4, CAST(N'2017-08-25' AS Date), CAST(2.8490 AS Decimal(14, 4)), N'EUR', N'ევრო')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (5, CAST(N'2017-08-26' AS Date), CAST(2.4158 AS Decimal(14, 4)), N'USD', N'აშშ დოლარი')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (6, CAST(N'2017-08-26' AS Date), CAST(2.8548 AS Decimal(14, 4)), N'EUR', N'ევრო')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (7, CAST(N'2017-08-27' AS Date), CAST(2.4158 AS Decimal(14, 4)), N'USD', N'აშშ დოლარი')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (8, CAST(N'2017-08-27' AS Date), CAST(2.8548 AS Decimal(14, 4)), N'EUR', N'ევრო')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (9, CAST(N'2017-08-28' AS Date), CAST(2.4158 AS Decimal(14, 4)), N'USD', N'აშშ დოლარი')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (10, CAST(N'2017-08-28' AS Date), CAST(2.8548 AS Decimal(14, 4)), N'EUR', N'ევრო')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (11, CAST(N'2017-08-29' AS Date), CAST(2.4158 AS Decimal(14, 4)), N'USD', N'აშშ დოლარი')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (12, CAST(N'2017-08-29' AS Date), CAST(2.8548 AS Decimal(14, 4)), N'EUR', N'ევრო')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (13, CAST(N'2017-08-30' AS Date), CAST(2.4184 AS Decimal(14, 4)), N'USD', N'აშშ დოლარი')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (14, CAST(N'2017-08-30' AS Date), CAST(2.9101 AS Decimal(14, 4)), N'EUR', N'ეცრო')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (15, CAST(N'2017-08-31' AS Date), CAST(2.4274 AS Decimal(14, 4)), N'USD', N'აშშ დოლარი')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (16, CAST(N'2017-08-31' AS Date), CAST(2.9000 AS Decimal(14, 4)), N'EUR', N'ევრო')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (17, CAST(N'2017-09-01' AS Date), CAST(2.4301 AS Decimal(14, 4)), N'USD', N'აშშ დოლარი')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (18, CAST(N'2017-09-01' AS Date), CAST(2.8809 AS Decimal(14, 4)), N'EUR', N'ევრო')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (19, CAST(N'2017-09-02' AS Date), CAST(2.4387 AS Decimal(14, 4)), N'USD', N'აშშ დოლარი')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (20, CAST(N'2017-09-02' AS Date), CAST(2.9057 AS Decimal(14, 4)), N'EUR', N'ევრო')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (21, CAST(N'2017-09-03' AS Date), CAST(2.4387 AS Decimal(14, 4)), N'USD', N'აშშ დოლარი')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (22, CAST(N'2017-09-03' AS Date), CAST(2.9057 AS Decimal(14, 4)), N'EUR', N'ევრო')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (23, CAST(N'2017-09-04' AS Date), CAST(2.4387 AS Decimal(14, 4)), N'USD', N'აშშ დოლარი')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (24, CAST(N'2017-09-04' AS Date), CAST(2.9057 AS Decimal(14, 4)), N'EUR', N'ევრო')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (25, CAST(N'2017-09-05' AS Date), CAST(2.4502 AS Decimal(14, 4)), N'USD', N'აშშ დოლარი')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (26, CAST(N'2017-09-05' AS Date), CAST(2.9177 AS Decimal(14, 4)), N'EUR', N'ევრო')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (27, CAST(N'2017-09-06' AS Date), CAST(2.4926 AS Decimal(14, 4)), N'USD', N'აშშ დოლარი')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (28, CAST(N'2017-09-06' AS Date), CAST(2.9662 AS Decimal(14, 4)), N'EUR', N'ევრო')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (29, CAST(N'2017-09-07' AS Date), CAST(2.4802 AS Decimal(14, 4)), N'USD', N'აშშ დოლარი')
GO
INSERT [cr].[Histories] ([Id], [CurrencyDate], [Value], [Code], [Name]) VALUES (30, CAST(N'2017-09-07' AS Date), CAST(2.9579 AS Decimal(14, 4)), N'EUR', N'ევრო')
GO
SET IDENTITY_INSERT [cr].[Histories] OFF
GO
/****** Object:  Index [IX_Histories_CurrencyDate]    Script Date: 07.09.2017 11:34:04 ******/
CREATE NONCLUSTERED INDEX [IX_Histories_CurrencyDate] ON [cr].[Histories]
(
	[CurrencyDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [CurrencyRates] SET  READ_WRITE 
GO
