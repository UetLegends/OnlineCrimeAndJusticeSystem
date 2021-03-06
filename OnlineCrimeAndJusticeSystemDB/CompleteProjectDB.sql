USE [master]
GO
/****** Object:  Database [DBProject]    Script Date: 8/10/2020 2:05:19 PM ******/
CREATE DATABASE [DBProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBProject] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBProject] SET RECOVERY FULL 
GO
ALTER DATABASE [DBProject] SET  MULTI_USER 
GO
ALTER DATABASE [DBProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBProject] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBProject', N'ON'
GO
ALTER DATABASE [DBProject] SET QUERY_STORE = OFF
GO
USE [DBProject]
GO
/****** Object:  Table [dbo].[Act And Section]    Script Date: 8/10/2020 2:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Act And Section](
	[ComplaintID] [int] NOT NULL,
	[Act] [int] NOT NULL,
	[ActDescription] [varchar](255) NOT NULL,
	[Section] [int] NOT NULL,
	[SectionDescription] [varchar](255) NOT NULL,
	[Grave] [tinyint] NOT NULL,
	[Punishable] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Arrested People]    Script Date: 8/10/2020 2:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arrested People](
	[ComplaintID] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[FatherName] [varchar](100) NOT NULL,
	[CNIC] [int] NOT NULL,
	[imagePath] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Complainer]    Script Date: 8/10/2020 2:05:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complainer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [int] NOT NULL,
	[FatherName] [varchar](50) NOT NULL,
	[Full Name] [varchar](255) NOT NULL,
	[CNIC] [int] NOT NULL,
	[imagePath] [varchar](255) NOT NULL,
	[MobileNumber] [varchar](12) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Complaint]    Script Date: 8/10/2020 2:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complaint](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ComplainerId] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[Investigation OfficerBelt Number] [varchar](50) NOT NULL,
	[Incharge OfficerBelt Number] [varchar](50) NOT NULL,
	[Reporting Time] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Court Information]    Script Date: 8/10/2020 2:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Court Information](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Court Room Number] [int] NOT NULL,
	[Type] [varchar](30) NOT NULL,
	[LocationID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Court Procedure]    Script Date: 8/10/2020 2:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Court Procedure](
	[id] [int] NOT NULL,
	[Firid] [int] NOT NULL,
	[CourtInformationId] [int] NOT NULL,
	[Judgeid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[CourtInformationId] ASC,
	[Judgeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evidence]    Script Date: 8/10/2020 2:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evidence](
	[complaintID] [int] NOT NULL,
	[filePath] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Incharge Officer]    Script Date: 8/10/2020 2:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Incharge Officer](
	[id] [int] NOT NULL,
	[Name] [varbinary](50) NOT NULL,
	[FatherName] [varchar](50) NOT NULL,
	[CNIC] [int] NOT NULL,
	[imagePath] [varchar](255) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Belt Number] [varchar](50) NOT NULL,
	[Rank] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Belt Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Investigation Officer]    Script Date: 8/10/2020 2:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Investigation Officer](
	[id] [int] NOT NULL,
	[Name] [varbinary](50) NOT NULL,
	[FatherName] [varchar](50) NOT NULL,
	[CNIC] [int] NOT NULL,
	[imagePath] [varchar](255) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Belt Number] [varchar](50) NOT NULL,
	[Rank] [varchar](255) NOT NULL,
	[OfficerRank] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Belt Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Judge]    Script Date: 8/10/2020 2:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Judge](
	[ServiceNumber] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[FatherName] [varchar](100) NOT NULL,
	[CNIC] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Known Accused Person]    Script Date: 8/10/2020 2:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Known Accused Person](
	[ComplaintID] [int] NOT NULL,
	[First Name] [varchar](255) NOT NULL,
	[Father Name] [varchar](255) NOT NULL,
	[Cast] [varchar](20) NOT NULL,
	[AddressId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 8/10/2020 2:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[State] [varchar](20) NOT NULL,
	[District] [varchar](50) NOT NULL,
	[Street] [varchar](50) NOT NULL,
	[PostalCode] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Murdered People]    Script Date: 8/10/2020 2:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Murdered People](
	[complaintid] [int] NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[FatherName] [varchar](100) NULL,
	[CNIC] [int] NULL,
	[DateofMurder] [datetime] NOT NULL,
	[MurderLocationId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MurderLocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OccurrenceofOffecne]    Script Date: 8/10/2020 2:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OccurrenceofOffecne](
	[ComplaintID] [int] NOT NULL,
	[DataFrom] [varchar](255) NOT NULL,
	[DateTo] [int] NOT NULL,
	[PlaceofOffenceID] [int] NOT NULL,
	[OffenceDescription] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ComplaintID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Property Details]    Script Date: 8/10/2020 2:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Property Details](
	[ComplaintID] [int] NOT NULL,
	[PropertyDetails] [varchar](255) NOT NULL,
	[Wealth] [int] NOT NULL,
	[LocationID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unknown Accused Person]    Script Date: 8/10/2020 2:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unknown Accused Person](
	[compaintid] [int] NOT NULL,
	[height] [int] NOT NULL,
	[Color] [varchar](20) NOT NULL,
	[Body Language] [varchar](30) NOT NULL,
	[Way of Talking] [varchar](100) NOT NULL,
	[Language] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Witness]    Script Date: 8/10/2020 2:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Witness](
	[complaintID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[FatherName] [varchar](15) NOT NULL,
	[CNIC] [int] NOT NULL,
	[MobileNumber] [int] NOT NULL,
	[Statement] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Complaint] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Act And Section]  WITH CHECK ADD  CONSTRAINT [Have Many] FOREIGN KEY([ComplaintID])
REFERENCES [dbo].[Complaint] ([id])
GO
ALTER TABLE [dbo].[Act And Section] CHECK CONSTRAINT [Have Many]
GO
ALTER TABLE [dbo].[Arrested People]  WITH CHECK ADD  CONSTRAINT [contains one or No Arrested People] FOREIGN KEY([ComplaintID])
REFERENCES [dbo].[Complaint] ([id])
GO
ALTER TABLE [dbo].[Arrested People] CHECK CONSTRAINT [contains one or No Arrested People]
GO
ALTER TABLE [dbo].[Complaint]  WITH CHECK ADD  CONSTRAINT [can add] FOREIGN KEY([ComplainerId])
REFERENCES [dbo].[Complainer] ([id])
GO
ALTER TABLE [dbo].[Complaint] CHECK CONSTRAINT [can add]
GO
ALTER TABLE [dbo].[Complaint]  WITH CHECK ADD  CONSTRAINT [FKComplaint217810] FOREIGN KEY([Investigation OfficerBelt Number])
REFERENCES [dbo].[Investigation Officer] ([Belt Number])
GO
ALTER TABLE [dbo].[Complaint] CHECK CONSTRAINT [FKComplaint217810]
GO
ALTER TABLE [dbo].[Complaint]  WITH CHECK ADD  CONSTRAINT [FKComplaint624298] FOREIGN KEY([Incharge OfficerBelt Number])
REFERENCES [dbo].[Incharge Officer] ([Belt Number])
GO
ALTER TABLE [dbo].[Complaint] CHECK CONSTRAINT [FKComplaint624298]
GO
ALTER TABLE [dbo].[Court Information]  WITH CHECK ADD  CONSTRAINT [FKCourt Info293007] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([id])
GO
ALTER TABLE [dbo].[Court Information] CHECK CONSTRAINT [FKCourt Info293007]
GO
ALTER TABLE [dbo].[Court Procedure]  WITH CHECK ADD  CONSTRAINT [FKCourt Proc575799] FOREIGN KEY([Firid])
REFERENCES [dbo].[Complaint] ([id])
GO
ALTER TABLE [dbo].[Court Procedure] CHECK CONSTRAINT [FKCourt Proc575799]
GO
ALTER TABLE [dbo].[Court Procedure]  WITH CHECK ADD  CONSTRAINT [FKCourt Proc910198] FOREIGN KEY([Judgeid])
REFERENCES [dbo].[Judge] ([ServiceNumber])
GO
ALTER TABLE [dbo].[Court Procedure] CHECK CONSTRAINT [FKCourt Proc910198]
GO
ALTER TABLE [dbo].[Court Procedure]  WITH CHECK ADD  CONSTRAINT [FKCourt Proc949332] FOREIGN KEY([CourtInformationId])
REFERENCES [dbo].[Court Information] ([id])
GO
ALTER TABLE [dbo].[Court Procedure] CHECK CONSTRAINT [FKCourt Proc949332]
GO
ALTER TABLE [dbo].[Evidence]  WITH CHECK ADD  CONSTRAINT [FKEvidence561361] FOREIGN KEY([complaintID])
REFERENCES [dbo].[Complaint] ([id])
GO
ALTER TABLE [dbo].[Evidence] CHECK CONSTRAINT [FKEvidence561361]
GO
ALTER TABLE [dbo].[Known Accused Person]  WITH CHECK ADD  CONSTRAINT [FKKnown Accu220587] FOREIGN KEY([ComplaintID])
REFERENCES [dbo].[Complaint] ([id])
GO
ALTER TABLE [dbo].[Known Accused Person] CHECK CONSTRAINT [FKKnown Accu220587]
GO
ALTER TABLE [dbo].[Known Accused Person]  WITH CHECK ADD  CONSTRAINT [FKKnown Accu363631] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Location] ([id])
GO
ALTER TABLE [dbo].[Known Accused Person] CHECK CONSTRAINT [FKKnown Accu363631]
GO
ALTER TABLE [dbo].[Murdered People]  WITH CHECK ADD  CONSTRAINT [FKMurdered P680766] FOREIGN KEY([MurderLocationId])
REFERENCES [dbo].[Location] ([id])
GO
ALTER TABLE [dbo].[Murdered People] CHECK CONSTRAINT [FKMurdered P680766]
GO
ALTER TABLE [dbo].[Murdered People]  WITH CHECK ADD  CONSTRAINT [FKMurdered P948084] FOREIGN KEY([complaintid])
REFERENCES [dbo].[Complaint] ([id])
GO
ALTER TABLE [dbo].[Murdered People] CHECK CONSTRAINT [FKMurdered P948084]
GO
ALTER TABLE [dbo].[OccurrenceofOffecne]  WITH CHECK ADD  CONSTRAINT [FKOccurrence386737] FOREIGN KEY([PlaceofOffenceID])
REFERENCES [dbo].[Location] ([id])
GO
ALTER TABLE [dbo].[OccurrenceofOffecne] CHECK CONSTRAINT [FKOccurrence386737]
GO
ALTER TABLE [dbo].[OccurrenceofOffecne]  WITH CHECK ADD  CONSTRAINT [Have] FOREIGN KEY([ComplaintID])
REFERENCES [dbo].[Complaint] ([id])
GO
ALTER TABLE [dbo].[OccurrenceofOffecne] CHECK CONSTRAINT [Have]
GO
ALTER TABLE [dbo].[Property Details]  WITH CHECK ADD  CONSTRAINT [FKProperty D816530] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([id])
GO
ALTER TABLE [dbo].[Property Details] CHECK CONSTRAINT [FKProperty D816530]
GO
ALTER TABLE [dbo].[Property Details]  WITH CHECK ADD  CONSTRAINT [May Have] FOREIGN KEY([ComplaintID])
REFERENCES [dbo].[Complaint] ([id])
GO
ALTER TABLE [dbo].[Property Details] CHECK CONSTRAINT [May Have]
GO
ALTER TABLE [dbo].[Unknown Accused Person]  WITH CHECK ADD  CONSTRAINT [FKUnknown Ac89516] FOREIGN KEY([compaintid])
REFERENCES [dbo].[Complaint] ([id])
GO
ALTER TABLE [dbo].[Unknown Accused Person] CHECK CONSTRAINT [FKUnknown Ac89516]
GO
ALTER TABLE [dbo].[Witness]  WITH CHECK ADD  CONSTRAINT [FKWitness43207] FOREIGN KEY([complaintID])
REFERENCES [dbo].[Complaint] ([id])
GO
ALTER TABLE [dbo].[Witness] CHECK CONSTRAINT [FKWitness43207]
GO
USE [master]
GO
ALTER DATABASE [DBProject] SET  READ_WRITE 
GO
