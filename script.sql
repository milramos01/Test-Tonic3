USE [master]
GO
/****** Object:  Database [Prueba]    Script Date: 12/10/2021 10:44:46 ******/
CREATE DATABASE [Prueba]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Prueba', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Prueba.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Prueba_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Prueba_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Prueba] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Prueba].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Prueba] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Prueba] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Prueba] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Prueba] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Prueba] SET ARITHABORT OFF 
GO
ALTER DATABASE [Prueba] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Prueba] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Prueba] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Prueba] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Prueba] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Prueba] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Prueba] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Prueba] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Prueba] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Prueba] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Prueba] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Prueba] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Prueba] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Prueba] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Prueba] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Prueba] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Prueba] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Prueba] SET RECOVERY FULL 
GO
ALTER DATABASE [Prueba] SET  MULTI_USER 
GO
ALTER DATABASE [Prueba] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Prueba] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Prueba] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Prueba] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Prueba] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Prueba] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Prueba', N'ON'
GO
ALTER DATABASE [Prueba] SET QUERY_STORE = OFF
GO
USE [Prueba]
GO
/****** Object:  User [satest]    Script Date: 12/10/2021 10:44:46 ******/
CREATE USER [satest] FOR LOGIN [satest] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [satest]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [satest]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [satest]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [satest]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [satest]
GO
ALTER ROLE [db_datareader] ADD MEMBER [satest]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [satest]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [satest]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 12/10/2021 10:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeFirstName] [varchar](50) NOT NULL,
	[EmployeeLastName] [varchar](50) NOT NULL,
	[PermissionType] [int] NOT NULL,
	[PermissionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionTypes]    Script Date: 12/10/2021 10:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](250) NOT NULL,
 CONSTRAINT [PK_PermissionTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Permissions] ON 

INSERT [dbo].[Permissions] ([Id], [EmployeeFirstName], [EmployeeLastName], [PermissionType], [PermissionDate]) VALUES (1, N'Maria de los Milagros', N'Ramos', 1, CAST(N'2021-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Permissions] ([Id], [EmployeeFirstName], [EmployeeLastName], [PermissionType], [PermissionDate]) VALUES (2, N'Juan Jose', N'Hernandez', 1, CAST(N'2021-06-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Permissions] ([Id], [EmployeeFirstName], [EmployeeLastName], [PermissionType], [PermissionDate]) VALUES (3, N'Francisco', N'Torres de la Cruz', 1, CAST(N'2021-06-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Permissions] ([Id], [EmployeeFirstName], [EmployeeLastName], [PermissionType], [PermissionDate]) VALUES (4, N'Mara', N'Gomez', 1, CAST(N'2021-05-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Permissions] ([Id], [EmployeeFirstName], [EmployeeLastName], [PermissionType], [PermissionDate]) VALUES (5, N'Juan Pablo', N'Ramos', 1, CAST(N'2021-10-30T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Permissions] OFF
GO
SET IDENTITY_INSERT [dbo].[PermissionTypes] ON 

INSERT [dbo].[PermissionTypes] ([Id], [Description]) VALUES (1, N'Enfermedad')
INSERT [dbo].[PermissionTypes] ([Id], [Description]) VALUES (2, N'Diligencias')
INSERT [dbo].[PermissionTypes] ([Id], [Description]) VALUES (3, N'Licencia')
SET IDENTITY_INSERT [dbo].[PermissionTypes] OFF
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_PermissionTypes] FOREIGN KEY([PermissionType])
REFERENCES [dbo].[PermissionTypes] ([Id])
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_PermissionTypes]
GO
/****** Object:  StoredProcedure [dbo].[PermisionTypes_Lists]    Script Date: 12/10/2021 10:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PermisionTypes_Lists]
@id numeric(3,0) =NULL 
AS
BEGIN 
	SELECT Id,Description FROM PermissionTypes
END
GO
/****** Object:  StoredProcedure [dbo].[Permissions_Insert]    Script Date: 12/10/2021 10:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Permissions_Insert]
@FirstName VARCHAR(50),
@LastName VARCHAR(50),
@PermissionType INT, 
@PermissionDate DATETIME
AS
BEGIN

	INSERT INTO Permissions
	SELECT
	@FirstName,
	@LastName,
	@PermissionType,
	@PermissionDate

END
GO
/****** Object:  StoredProcedure [dbo].[Permissions_ListToTable]    Script Date: 12/10/2021 10:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Permissions_ListToTable]
AS
BEGIN
	SELECT p.EmployeeFirstName, p.EmployeeLastName, pe.Id, pe.Description, PermissionDate FROM Permissions p
	INNER JOIN PermissionTypes pe on p.PermissionType = pe.Id
	ORDER BY PermissionDate asc
END
GO
/****** Object:  StoredProcedure [dbo].[Permissions_ListToTableFilter]    Script Date: 12/10/2021 10:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Permissions_ListToTableFilter]
@DateInitial DATETIME,
@DateEnds DATETIME
AS
BEGIN
	SELECT p.EmployeeFirstName, p.EmployeeLastName, pe.Id, pe.Description, PermissionDate FROM Permissions p
	INNER JOIN PermissionTypes pe on p.PermissionType = pe.Id
	WHERE PermissionDate BETWEEN @DateInitial AND @DateEnds
	ORDER BY PermissionDate asc
END
GO
USE [master]
GO
ALTER DATABASE [Prueba] SET  READ_WRITE 
GO
