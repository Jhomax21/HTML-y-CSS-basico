USE [master]
GO
/****** Object:  Database [Demo01]    Script Date: 26/10/2021 18:16:36 ******/
CREATE DATABASE [Demo01]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Demo01', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Demo01.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Demo01_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Demo01_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Demo01] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Demo01].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Demo01] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Demo01] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Demo01] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Demo01] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Demo01] SET ARITHABORT OFF 
GO
ALTER DATABASE [Demo01] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Demo01] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Demo01] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Demo01] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Demo01] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Demo01] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Demo01] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Demo01] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Demo01] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Demo01] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Demo01] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Demo01] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Demo01] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Demo01] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Demo01] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Demo01] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Demo01] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Demo01] SET RECOVERY FULL 
GO
ALTER DATABASE [Demo01] SET  MULTI_USER 
GO
ALTER DATABASE [Demo01] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Demo01] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Demo01] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Demo01] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Demo01] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Demo01] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Demo01', N'ON'
GO
ALTER DATABASE [Demo01] SET QUERY_STORE = OFF
GO
USE [Demo01]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 26/10/2021 18:16:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[codigo] [int] NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[edad] [int] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Demo01] SET  READ_WRITE 
GO
