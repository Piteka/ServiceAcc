USE [master]
GO
/****** Object:  Database [ServiceDep]    Script Date: 24.03.2024 0:33:22 ******/
CREATE DATABASE [ServiceDep]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ServiceDep', FILENAME = N'I:\SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ServiceDep.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ServiceDep_log', FILENAME = N'I:\SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ServiceDep_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ServiceDep] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ServiceDep].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ServiceDep] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ServiceDep] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ServiceDep] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ServiceDep] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ServiceDep] SET ARITHABORT OFF 
GO
ALTER DATABASE [ServiceDep] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ServiceDep] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ServiceDep] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ServiceDep] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ServiceDep] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ServiceDep] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ServiceDep] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ServiceDep] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ServiceDep] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ServiceDep] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ServiceDep] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ServiceDep] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ServiceDep] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ServiceDep] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ServiceDep] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ServiceDep] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ServiceDep] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ServiceDep] SET RECOVERY FULL 
GO
ALTER DATABASE [ServiceDep] SET  MULTI_USER 
GO
ALTER DATABASE [ServiceDep] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ServiceDep] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ServiceDep] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ServiceDep] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ServiceDep] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ServiceDep] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ServiceDep', N'ON'
GO
ALTER DATABASE [ServiceDep] SET QUERY_STORE = ON
GO
ALTER DATABASE [ServiceDep] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ServiceDep]
GO
/****** Object:  Table [dbo].[ВидыУслуг]    Script Date: 24.03.2024 0:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ВидыУслуг](
	[КодВида] [int] NOT NULL,
	[Название] [varchar](50) NULL,
 CONSTRAINT [PK_ВидыУслуг] PRIMARY KEY CLUSTERED 
(
	[КодВида] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Должности]    Script Date: 24.03.2024 0:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Должности](
	[КодДолжности] [int] NOT NULL,
	[Название] [varchar](50) NULL,
 CONSTRAINT [PK_Должности] PRIMARY KEY CLUSTERED 
(
	[КодДолжности] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заказы]    Script Date: 24.03.2024 0:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заказы](
	[НомерЗаказа] [int] NOT NULL,
	[Дата] [date] NULL,
	[Клиент] [int] NULL,
	[Сотрудник] [int] NULL,
 CONSTRAINT [PK_Заказы] PRIMARY KEY CLUSTERED 
(
	[НомерЗаказа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Клиенты]    Script Date: 24.03.2024 0:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиенты](
	[КодКлиента] [int] NOT NULL,
	[Название] [varchar](50) NULL,
	[Адрес] [varchar](50) NULL,
	[Телефон] [varchar](50) NULL,
	[ТипКлиента] [int] NULL,
 CONSTRAINT [PK_Клиенты] PRIMARY KEY CLUSTERED 
(
	[КодКлиента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сотрудники]    Script Date: 24.03.2024 0:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сотрудники](
	[КодСотрудника] [int] NOT NULL,
	[ФИО] [varchar](50) NULL,
	[Телефон] [varchar](50) NULL,
	[Должность] [int] NULL,
 CONSTRAINT [PK_Сотрудники] PRIMARY KEY CLUSTERED 
(
	[КодСотрудника] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Спецификация]    Script Date: 24.03.2024 0:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Спецификация](
	[Номер] [int] NOT NULL,
	[Услуга] [int] NULL,
	[СтатусУслуги] [varchar](50) NULL,
	[Примечание] [varchar](50) NULL,
	[Заказ] [int] NULL,
 CONSTRAINT [PK_Спецификация] PRIMARY KEY CLUSTERED 
(
	[Номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ТипКлиентов]    Script Date: 24.03.2024 0:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ТипКлиентов](
	[КодТипа] [int] NOT NULL,
	[Название] [varchar](50) NULL,
 CONSTRAINT [PK_ТипКлиентов] PRIMARY KEY CLUSTERED 
(
	[КодТипа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Услуги]    Script Date: 24.03.2024 0:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Услуги](
	[КодУслуги] [int] NOT NULL,
	[Название] [varchar](50) NULL,
	[Стоимость] [money] NULL,
	[ВремяВыполнения] [int] NULL,
	[ВидУслуги] [int] NULL,
 CONSTRAINT [PK_Услуги] PRIMARY KEY CLUSTERED 
(
	[КодУслуги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ВидыУслуг] ([КодВида], [Название]) VALUES (500, N'Консультации')
INSERT [dbo].[ВидыУслуг] ([КодВида], [Название]) VALUES (501, N'Проектирование БД')
INSERT [dbo].[ВидыУслуг] ([КодВида], [Название]) VALUES (502, N'Внедрение ИС')
INSERT [dbo].[ВидыУслуг] ([КодВида], [Название]) VALUES (503, N'Поддержка ИС')
GO
INSERT [dbo].[Должности] ([КодДолжности], [Название]) VALUES (300, N'Начальник')
INSERT [dbo].[Должности] ([КодДолжности], [Название]) VALUES (301, N'Менеджер')
INSERT [dbo].[Должности] ([КодДолжности], [Название]) VALUES (302, N'Аналитик')
GO
INSERT [dbo].[Заказы] ([НомерЗаказа], [Дата], [Клиент], [Сотрудник]) VALUES (1000, CAST(N'2024-03-01' AS Date), 200, 401)
INSERT [dbo].[Заказы] ([НомерЗаказа], [Дата], [Клиент], [Сотрудник]) VALUES (1001, CAST(N'2024-03-01' AS Date), 201, 403)
INSERT [dbo].[Заказы] ([НомерЗаказа], [Дата], [Клиент], [Сотрудник]) VALUES (1002, CAST(N'2024-03-02' AS Date), 202, 402)
INSERT [dbo].[Заказы] ([НомерЗаказа], [Дата], [Клиент], [Сотрудник]) VALUES (1003, CAST(N'2024-03-03' AS Date), 200, 401)
GO
INSERT [dbo].[Клиенты] ([КодКлиента], [Название], [Адрес], [Телефон], [ТипКлиента]) VALUES (200, N'Самойлов К.А.', N'Суздальская,4', N'434-54-34', 100)
INSERT [dbo].[Клиенты] ([КодКлиента], [Название], [Адрес], [Телефон], [ТипКлиента]) VALUES (201, N'Иванов Е.К.', N'Стамбульская,5', N'656-76-45', 100)
INSERT [dbo].[Клиенты] ([КодКлиента], [Название], [Адрес], [Телефон], [ТипКлиента]) VALUES (202, N'Карский В.А.', N'Московская,2', N'342-34-54', 101)
INSERT [dbo].[Клиенты] ([КодКлиента], [Название], [Адрес], [Телефон], [ТипКлиента]) VALUES (203, N'Гуйван Р.А.', N'Ростовская,5', N'654-56-76', 101)
INSERT [dbo].[Клиенты] ([КодКлиента], [Название], [Адрес], [Телефон], [ТипКлиента]) VALUES (204, N'Алеев М.С.', N'Киевская,6', N'234-43-45', 101)
INSERT [dbo].[Клиенты] ([КодКлиента], [Название], [Адрес], [Телефон], [ТипКлиента]) VALUES (205, N'Павилов К.А.', N'Минская,6', N'656-67-45', 102)
GO
INSERT [dbo].[Сотрудники] ([КодСотрудника], [ФИО], [Телефон], [Должность]) VALUES (400, N'Петров А.К.', N'234-43-23', 300)
INSERT [dbo].[Сотрудники] ([КодСотрудника], [ФИО], [Телефон], [Должность]) VALUES (401, N'Вавилова Е.К.', N'222-33-22', 301)
INSERT [dbo].[Сотрудники] ([КодСотрудника], [ФИО], [Телефон], [Должность]) VALUES (402, N'Папина Д.А.', N'111-23-32', 301)
INSERT [dbo].[Сотрудники] ([КодСотрудника], [ФИО], [Телефон], [Должность]) VALUES (403, N'Ульская Ш.К.', N'222-34-43', 301)
INSERT [dbo].[Сотрудники] ([КодСотрудника], [ФИО], [Телефон], [Должность]) VALUES (404, N'Кренова И.М.', N'333-34-43', 302)
GO
INSERT [dbo].[Спецификация] ([Номер], [Услуга], [СтатусУслуги], [Примечание], [Заказ]) VALUES (1, 600, N'Выполнена', N'Консультация по проектированию БД', 1000)
INSERT [dbo].[Спецификация] ([Номер], [Услуга], [СтатусУслуги], [Примечание], [Заказ]) VALUES (2, 601, N'Выполнена', N'Проектировае БД для гостиницы', 1000)
INSERT [dbo].[Спецификация] ([Номер], [Услуга], [СтатусУслуги], [Примечание], [Заказ]) VALUES (3, 602, N'Выполнена', N'Проектировае БД для гостиницы', 1000)
INSERT [dbo].[Спецификация] ([Номер], [Услуга], [СтатусУслуги], [Примечание], [Заказ]) VALUES (4, 603, N'В процессе', N'Проектировае БД для гостиницы', 1000)
INSERT [dbo].[Спецификация] ([Номер], [Услуга], [СтатусУслуги], [Примечание], [Заказ]) VALUES (5, 603, N'Выполнена', N'Создание БД для автосервиса', 1001)
INSERT [dbo].[Спецификация] ([Номер], [Услуга], [СтатусУслуги], [Примечание], [Заказ]) VALUES (6, 600, N'Выполнена', N'Консультация по физическому проектированию БД', 1001)
INSERT [dbo].[Спецификация] ([Номер], [Услуга], [СтатусУслуги], [Примечание], [Заказ]) VALUES (7, 604, N'Выполнена', N'Внедрение ИС в работу банка', 1002)
INSERT [dbo].[Спецификация] ([Номер], [Услуга], [СтатусУслуги], [Примечание], [Заказ]) VALUES (8, 605, N'В процессе', N'Поддержка работы ИС', 1002)
INSERT [dbo].[Спецификация] ([Номер], [Услуга], [СтатусУслуги], [Примечание], [Заказ]) VALUES (9, 600, N'В процессе', N'Консультация по внедрению ИС', 1002)
INSERT [dbo].[Спецификация] ([Номер], [Услуга], [СтатусУслуги], [Примечание], [Заказ]) VALUES (10, 600, N'Выполнена', N'Консультация по поддержке ИС', 1003)
GO
INSERT [dbo].[ТипКлиентов] ([КодТипа], [Название]) VALUES (100, N'Ключевой клиент')
INSERT [dbo].[ТипКлиентов] ([КодТипа], [Название]) VALUES (101, N'Новый клиент')
INSERT [dbo].[ТипКлиентов] ([КодТипа], [Название]) VALUES (102, N'Обычный клиент')
GO
INSERT [dbo].[Услуги] ([КодУслуги], [Название], [Стоимость], [ВремяВыполнения], [ВидУслуги]) VALUES (600, N'Консультация по внедрению ИС', 5000.0000, 1, 500)
INSERT [dbo].[Услуги] ([КодУслуги], [Название], [Стоимость], [ВремяВыполнения], [ВидУслуги]) VALUES (601, N'Инфологическое проектирование БД', 15000.0000, 12, 501)
INSERT [dbo].[Услуги] ([КодУслуги], [Название], [Стоимость], [ВремяВыполнения], [ВидУслуги]) VALUES (602, N'Логическое проектирование БД', 20000.0000, 18, 501)
INSERT [dbo].[Услуги] ([КодУслуги], [Название], [Стоимость], [ВремяВыполнения], [ВидУслуги]) VALUES (603, N'Физическое проектирование БД', 25000.0000, 32, 501)
INSERT [dbo].[Услуги] ([КодУслуги], [Название], [Стоимость], [ВремяВыполнения], [ВидУслуги]) VALUES (604, N'Внедрение конфигурации 1С', 40000.0000, 48, 502)
INSERT [dbo].[Услуги] ([КодУслуги], [Название], [Стоимость], [ВремяВыполнения], [ВидУслуги]) VALUES (605, N'Поддержка конфигурации 1С', 35000.0000, 48, 503)
GO
ALTER TABLE [dbo].[Заказы]  WITH CHECK ADD  CONSTRAINT [FK_Заказы_Клиенты] FOREIGN KEY([Клиент])
REFERENCES [dbo].[Клиенты] ([КодКлиента])
GO
ALTER TABLE [dbo].[Заказы] CHECK CONSTRAINT [FK_Заказы_Клиенты]
GO
ALTER TABLE [dbo].[Заказы]  WITH CHECK ADD  CONSTRAINT [FK_Заказы_Сотрудники] FOREIGN KEY([Сотрудник])
REFERENCES [dbo].[Сотрудники] ([КодСотрудника])
GO
ALTER TABLE [dbo].[Заказы] CHECK CONSTRAINT [FK_Заказы_Сотрудники]
GO
ALTER TABLE [dbo].[Клиенты]  WITH CHECK ADD  CONSTRAINT [FK_Клиенты_ТипКлиентов] FOREIGN KEY([ТипКлиента])
REFERENCES [dbo].[ТипКлиентов] ([КодТипа])
GO
ALTER TABLE [dbo].[Клиенты] CHECK CONSTRAINT [FK_Клиенты_ТипКлиентов]
GO
ALTER TABLE [dbo].[Сотрудники]  WITH CHECK ADD  CONSTRAINT [FK_Сотрудники_Должности] FOREIGN KEY([Должность])
REFERENCES [dbo].[Должности] ([КодДолжности])
GO
ALTER TABLE [dbo].[Сотрудники] CHECK CONSTRAINT [FK_Сотрудники_Должности]
GO
ALTER TABLE [dbo].[Спецификация]  WITH CHECK ADD  CONSTRAINT [FK_Спецификация_Заказы] FOREIGN KEY([Заказ])
REFERENCES [dbo].[Заказы] ([НомерЗаказа])
GO
ALTER TABLE [dbo].[Спецификация] CHECK CONSTRAINT [FK_Спецификация_Заказы]
GO
ALTER TABLE [dbo].[Спецификация]  WITH CHECK ADD  CONSTRAINT [FK_Спецификация_Услуги] FOREIGN KEY([Услуга])
REFERENCES [dbo].[Услуги] ([КодУслуги])
GO
ALTER TABLE [dbo].[Спецификация] CHECK CONSTRAINT [FK_Спецификация_Услуги]
GO
ALTER TABLE [dbo].[Услуги]  WITH CHECK ADD  CONSTRAINT [FK_Услуги_ВидыУслуг] FOREIGN KEY([ВидУслуги])
REFERENCES [dbo].[ВидыУслуг] ([КодВида])
GO
ALTER TABLE [dbo].[Услуги] CHECK CONSTRAINT [FK_Услуги_ВидыУслуг]
GO
USE [master]
GO
ALTER DATABASE [ServiceDep] SET  READ_WRITE 
GO
