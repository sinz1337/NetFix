USE [master]
GO
/****** Object:  Database [NetFix]    Script Date: 24.06.2023 16:53:24 ******/
CREATE DATABASE [NetFix]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NetFix', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\NetFix.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NetFix_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\NetFix_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [NetFix] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NetFix].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NetFix] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NetFix] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NetFix] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NetFix] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NetFix] SET ARITHABORT OFF 
GO
ALTER DATABASE [NetFix] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NetFix] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NetFix] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NetFix] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NetFix] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NetFix] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NetFix] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NetFix] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NetFix] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NetFix] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NetFix] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NetFix] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NetFix] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NetFix] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NetFix] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NetFix] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NetFix] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NetFix] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NetFix] SET  MULTI_USER 
GO
ALTER DATABASE [NetFix] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NetFix] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NetFix] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NetFix] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NetFix] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NetFix] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [NetFix] SET QUERY_STORE = OFF
GO
USE [NetFix]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 24.06.2023 16:53:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[IdCustomer] [int] IDENTITY(1,1) NOT NULL,
	[FIOCustomer] [nvarchar](50) NOT NULL,
	[OrderCustomer] [nvarchar](50) NOT NULL,
	[NumberCustomer] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[IdCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[CustomerView]    Script Date: 24.06.2023 16:53:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CustomerView]
AS
SELECT        IdCustomer, FIOCustomer, OrderCustomer, NumberCustomer
FROM            dbo.Customer
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 24.06.2023 16:53:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[IdStaff] [int] IDENTITY(1,1) NOT NULL,
	[FIOStaff] [nvarchar](50) NOT NULL,
	[DateOfBirthStaff] [date] NOT NULL,
	[NumberStaff] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[IdStaff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[StaffView]    Script Date: 24.06.2023 16:53:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[StaffView]
AS
SELECT        IdStaff, FIOStaff, DateOfBirthStaff, NumberStaff
FROM            dbo.Staff
GO
/****** Object:  Table [dbo].[Enter]    Script Date: 24.06.2023 16:53:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enter](
	[IdEnter] [int] IDENTITY(1,1) NOT NULL,
	[Enter] [int] NOT NULL,
 CONSTRAINT [PK_Enter] PRIMARY KEY CLUSTERED 
(
	[IdEnter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servise]    Script Date: 24.06.2023 16:53:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servise](
	[IdServise] [int] IDENTITY(1,1) NOT NULL,
	[NameService] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Servise] PRIMARY KEY CLUSTERED 
(
	[IdServise] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 24.06.2023 16:53:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[LoginUser] [nvarchar](50) NOT NULL,
	[PasswordUser] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([IdCustomer], [FIOCustomer], [OrderCustomer], [NumberCustomer]) VALUES (1, N'Малюнин Андрей Александрович', N'Обслуживание сервера', N'+7 (926) 036 31-37')
INSERT [dbo].[Customer] ([IdCustomer], [FIOCustomer], [OrderCustomer], [NumberCustomer]) VALUES (2, N'Сидоренко Владимир Михайлович', N'Сборка ПК', N'+7 (977) 308 66-18')
INSERT [dbo].[Customer] ([IdCustomer], [FIOCustomer], [OrderCustomer], [NumberCustomer]) VALUES (3, N'Дементьев Александр Денисович', N'Дома удобнее', N'+7 (901) 361 06-62')
INSERT [dbo].[Customer] ([IdCustomer], [FIOCustomer], [OrderCustomer], [NumberCustomer]) VALUES (4, N'Кашперов Сергей Сергеич', N'Сервер SuperEXT 30', N'79043843293')
INSERT [dbo].[Customer] ([IdCustomer], [FIOCustomer], [OrderCustomer], [NumberCustomer]) VALUES (5, N'Ведерников Мак Сим', N'Квантовый компьютер', N'74327320416')
INSERT [dbo].[Customer] ([IdCustomer], [FIOCustomer], [OrderCustomer], [NumberCustomer]) VALUES (6, N'Назарова Мария Михайловна', N'Сборка ПК', N'7(345)341-13-99')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Enter] ON 

INSERT [dbo].[Enter] ([IdEnter], [Enter]) VALUES (1, 0)
SET IDENTITY_INSERT [dbo].[Enter] OFF
GO
SET IDENTITY_INSERT [dbo].[Servise] ON 

INSERT [dbo].[Servise] ([IdServise], [NameService]) VALUES (1, N'Обслуживание сервера')
INSERT [dbo].[Servise] ([IdServise], [NameService]) VALUES (2, N'Сборка ПК')
INSERT [dbo].[Servise] ([IdServise], [NameService]) VALUES (3, N'Обслуживание ПК')
INSERT [dbo].[Servise] ([IdServise], [NameService]) VALUES (4, N'Сборка сервера')
SET IDENTITY_INSERT [dbo].[Servise] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([IdStaff], [FIOStaff], [DateOfBirthStaff], [NumberStaff]) VALUES (1, N'Тибиев Сергей Ашотович', CAST(N'2994-07-25' AS Date), N'+7(926)036 31-37')
INSERT [dbo].[Staff] ([IdStaff], [FIOStaff], [DateOfBirthStaff], [NumberStaff]) VALUES (2, N'Игнатьев Илья Сергеевич', CAST(N'2005-03-12' AS Date), N'+7(977)308 66-18')
INSERT [dbo].[Staff] ([IdStaff], [FIOStaff], [DateOfBirthStaff], [NumberStaff]) VALUES (3, N'Гулин Артемий Михайлович', CAST(N'1995-10-01' AS Date), N'+7(901)361 06-62')
INSERT [dbo].[Staff] ([IdStaff], [FIOStaff], [DateOfBirthStaff], [NumberStaff]) VALUES (4, N'fds', CAST(N'2023-05-12' AS Date), N'fdsa')
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([IdUser], [LoginUser], [PasswordUser]) VALUES (1, N'admin', N'admin')
INSERT [dbo].[User] ([IdUser], [LoginUser], [PasswordUser]) VALUES (2, N'user', N'user')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Customer"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CustomerView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CustomerView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Staff"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'StaffView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'StaffView'
GO
USE [master]
GO
ALTER DATABASE [NetFix] SET  READ_WRITE 
GO
