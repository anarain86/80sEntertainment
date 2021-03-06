USE [master]
GO
/****** Object:  Database [80sEntertainment]    Script Date: 5/2/2018 11:17:07 PM ******/
CREATE DATABASE [80sEntertainment]
GO
ALTER DATABASE [80sEntertainment] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [80sEntertainment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [80sEntertainment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [80sEntertainment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [80sEntertainment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [80sEntertainment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [80sEntertainment] SET ARITHABORT OFF 
GO
ALTER DATABASE [80sEntertainment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [80sEntertainment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [80sEntertainment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [80sEntertainment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [80sEntertainment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [80sEntertainment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [80sEntertainment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [80sEntertainment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [80sEntertainment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [80sEntertainment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [80sEntertainment] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [80sEntertainment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [80sEntertainment] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [80sEntertainment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [80sEntertainment] SET  MULTI_USER 
GO
ALTER DATABASE [80sEntertainment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [80sEntertainment] SET ENCRYPTION ON
GO
ALTER DATABASE [80sEntertainment] SET QUERY_STORE = ON
GO
ALTER DATABASE [80sEntertainment] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO)
GO
USE [80sEntertainment]
GO
ALTER DATABASE SCOPED CONFIGURATION SET ELEVATE_ONLINE = OFF TargetReplic;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ELEVATE_RESUMABLE = OFF TargetReplic;
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ISOLATE_SECURITY_POLICY_CARDINALITY = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET OPTIMIZE_FOR_AD_HOC_WORKLOADS = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET XTP_PROCEDURE_EXECUTION_STATISTICS = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET XTP_QUERY_EXECUTION_STATISTICS = OFF;
GO
USE [80sEntertainment]
GO
/****** Object:  Table [dbo].[80sEntertainment]    Script Date: 5/2/2018 11:17:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[80sEntertainment](
	[80sEntertainment_id] [int] IDENTITY(1,1) NOT NULL,
	[80Entertainment_MediaType_id] [int] NOT NULL,
	[80sEntertainment_imagelink] [varchar](500) NULL,
	[80sEntertainment_medialink] [varchar](500) NULL,
	[80sEntertainment_summary] [varchar](max) NULL,
 CONSTRAINT [PK_80sEntertainment] PRIMARY KEY CLUSTERED 
(
	[80sEntertainment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[80sEntertainmentMovies]    Script Date: 5/2/2018 11:17:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[80sEntertainmentMovies](
	[80sEntertainmentMovies_id] [int] IDENTITY(1,1) NOT NULL,
	[80sEntertainmentMovies_name] [varchar](255) NOT NULL,
	[80sEntertainmentMovies_year_id] [int] NOT NULL,
	[80sEntertainmentMovies_genre_id] [int] NOT NULL,
	[80sEntertainmentMovies_staring_actor] [varchar](100) NULL,
	[80sEntertainmentMovies_staring_actress] [varchar](100) NULL,
	[80sEntertainmentMovies_director] [varchar](100) NULL,
	[80sEntertainmentMovies_80sEntId] [int] NOT NULL,
 CONSTRAINT [PK_80sEntertainmentMovies] PRIMARY KEY CLUSTERED 
(
	[80sEntertainmentMovies_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[80sEntertainmentMusic]    Script Date: 5/2/2018 11:17:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[80sEntertainmentMusic](
	[80sEntertainmentMusic_id] [int] IDENTITY(1,1) NOT NULL,
	[80sEntertainmentMusic_songname] [varchar](255) NOT NULL,
	[80sEntertainmentMusic_albumname] [varchar](255) NULL,
	[80sEntertainmentMusic_genre_id] [int] NOT NULL,
	[80sEntertainmentMusic_year_id] [int] NOT NULL,
	[80sEntertainmentMusic_tracknumber] [tinyint] NULL,
	[80sEntertainmentMusic_80sEntId] [int] NOT NULL,
 CONSTRAINT [PK_80sEntertainmentMusic] PRIMARY KEY CLUSTERED 
(
	[80sEntertainmentMusic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[80sEntertainmentTVShows]    Script Date: 5/2/2018 11:17:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[80sEntertainmentTVShows](
	[80sEntertainmentTVShows_id] [int] IDENTITY(1,1) NOT NULL,
	[80sEntertainmentTVShows_showname] [varchar](100) NOT NULL,
	[80sEntertainmentTVShows_genre_id] [int] NOT NULL,
	[80sEntertainmentTVShows_year_id] [int] NOT NULL,
	[80sEntertainmentTVShows_episodename] [varchar](255) NULL,
	[80sEntertainmentTVShows_seasonnum] [int] NULL,
	[80sEntertainmentTVShows_episodenum] [int] NULL,
	[80sEntertainmentTVShows_80sEntId] [int] NOT NULL,
 CONSTRAINT [PK_80sEntertainmentTVShows] PRIMARY KEY CLUSTERED 
(
	[80sEntertainmentTVShows_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LK_Audio_Genre]    Script Date: 5/2/2018 11:17:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LK_Audio_Genre](
	[LK_Audio_Genre_id] [int] IDENTITY(1,1) NOT NULL,
	[LK_Audio_Genre_name] [varchar](30) NOT NULL,
 CONSTRAINT [PK_LK_Audio_Genre] PRIMARY KEY CLUSTERED 
(
	[LK_Audio_Genre_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LK_MediaType]    Script Date: 5/2/2018 11:17:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LK_MediaType](
	[LK_MediaType_id] [int] IDENTITY(1,1) NOT NULL,
	[LK_MediaType_name] [varchar](15) NOT NULL,
 CONSTRAINT [PK_LK_MediaType] PRIMARY KEY CLUSTERED 
(
	[LK_MediaType_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LK_Video_Genre]    Script Date: 5/2/2018 11:17:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LK_Video_Genre](
	[LK_Video_Genre_id] [int] IDENTITY(1,1) NOT NULL,
	[LK_Video_Genre_name] [varchar](20) NOT NULL,
 CONSTRAINT [PK_LK_Genre] PRIMARY KEY CLUSTERED 
(
	[LK_Video_Genre_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LK_Year]    Script Date: 5/2/2018 11:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LK_Year](
	[LK_Year_id] [int] IDENTITY(1,1) NOT NULL,
	[LK_Year_year] [varchar](4) NOT NULL,
 CONSTRAINT [PK_LK_Year] PRIMARY KEY CLUSTERED 
(
	[LK_Year_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[80sEntertainment]  WITH CHECK ADD  CONSTRAINT [FK_80sEntertainment_LK_MediaType] FOREIGN KEY([80sEntertainment_id])
REFERENCES [dbo].[LK_MediaType] ([LK_MediaType_id])
GO
ALTER TABLE [dbo].[80sEntertainment] CHECK CONSTRAINT [FK_80sEntertainment_LK_MediaType]
GO
ALTER TABLE [dbo].[80sEntertainmentMovies]  WITH CHECK ADD  CONSTRAINT [FK_80sEntertainmentMovies_80sEntertainment] FOREIGN KEY([80sEntertainmentMovies_80sEntId])
REFERENCES [dbo].[80sEntertainment] ([80sEntertainment_id])
GO
ALTER TABLE [dbo].[80sEntertainmentMovies] CHECK CONSTRAINT [FK_80sEntertainmentMovies_80sEntertainment]
GO
ALTER TABLE [dbo].[80sEntertainmentMovies]  WITH CHECK ADD  CONSTRAINT [FK_80sEntertainmentMovies_LK_Video_Genre] FOREIGN KEY([80sEntertainmentMovies_genre_id])
REFERENCES [dbo].[LK_Video_Genre] ([LK_Video_Genre_id])
GO
ALTER TABLE [dbo].[80sEntertainmentMovies] CHECK CONSTRAINT [FK_80sEntertainmentMovies_LK_Video_Genre]
GO
ALTER TABLE [dbo].[80sEntertainmentMovies]  WITH CHECK ADD  CONSTRAINT [FK_80sEntertainmentMovies_LK_Year] FOREIGN KEY([80sEntertainmentMovies_year_id])
REFERENCES [dbo].[LK_Year] ([LK_Year_id])
GO
ALTER TABLE [dbo].[80sEntertainmentMovies] CHECK CONSTRAINT [FK_80sEntertainmentMovies_LK_Year]
GO
ALTER TABLE [dbo].[80sEntertainmentMusic]  WITH CHECK ADD  CONSTRAINT [FK_80sEntertainmentMusic_80sEntertainment] FOREIGN KEY([80sEntertainmentMusic_80sEntId])
REFERENCES [dbo].[80sEntertainment] ([80sEntertainment_id])
GO
ALTER TABLE [dbo].[80sEntertainmentMusic] CHECK CONSTRAINT [FK_80sEntertainmentMusic_80sEntertainment]
GO
ALTER TABLE [dbo].[80sEntertainmentMusic]  WITH CHECK ADD  CONSTRAINT [FK_80sEntertainmentMusic_LK_Audio_Genre] FOREIGN KEY([80sEntertainmentMusic_genre_id])
REFERENCES [dbo].[LK_Audio_Genre] ([LK_Audio_Genre_id])
GO
ALTER TABLE [dbo].[80sEntertainmentMusic] CHECK CONSTRAINT [FK_80sEntertainmentMusic_LK_Audio_Genre]
GO
ALTER TABLE [dbo].[80sEntertainmentMusic]  WITH CHECK ADD  CONSTRAINT [FK_80sEntertainmentMusic_LK_Year] FOREIGN KEY([80sEntertainmentMusic_year_id])
REFERENCES [dbo].[LK_Year] ([LK_Year_id])
GO
ALTER TABLE [dbo].[80sEntertainmentMusic] CHECK CONSTRAINT [FK_80sEntertainmentMusic_LK_Year]
GO
ALTER TABLE [dbo].[80sEntertainmentTVShows]  WITH CHECK ADD  CONSTRAINT [FK_80sEntertainmentTVShows_80sEntertainment] FOREIGN KEY([80sEntertainmentTVShows_80sEntId])
REFERENCES [dbo].[80sEntertainment] ([80sEntertainment_id])
GO
ALTER TABLE [dbo].[80sEntertainmentTVShows] CHECK CONSTRAINT [FK_80sEntertainmentTVShows_80sEntertainment]
GO
ALTER TABLE [dbo].[80sEntertainmentTVShows]  WITH CHECK ADD  CONSTRAINT [FK_80sEntertainmentTVShows_LK_Video_Genre] FOREIGN KEY([80sEntertainmentTVShows_genre_id])
REFERENCES [dbo].[LK_Video_Genre] ([LK_Video_Genre_id])
GO
ALTER TABLE [dbo].[80sEntertainmentTVShows] CHECK CONSTRAINT [FK_80sEntertainmentTVShows_LK_Video_Genre]
GO
ALTER TABLE [dbo].[80sEntertainmentTVShows]  WITH CHECK ADD  CONSTRAINT [FK_80sEntertainmentTVShows_LK_Year] FOREIGN KEY([80sEntertainmentTVShows_year_id])
REFERENCES [dbo].[LK_Year] ([LK_Year_id])
GO
ALTER TABLE [dbo].[80sEntertainmentTVShows] CHECK CONSTRAINT [FK_80sEntertainmentTVShows_LK_Year]
GO
/****** Object:  StoredProcedure [dbo].[DeleteTable]    Script Date: 5/2/2018 11:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[DeleteTable]
(@table_name varchar(100),
 @id_field_name varchar(100),
 @id varchar(10) 
)

as 

begin
			declare @sql_stmt varchar(2000)
			set @sql_stmt = 'delete from ' + @table_name + ' where ' + @id_field_name + '=' + @id
			
			--print @sql_stmt
	
			exec(@sql_stmt)
end
GO
/****** Object:  StoredProcedure [dbo].[insert_update_80sEntertainment]    Script Date: 5/2/2018 11:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[insert_update_80sEntertainment]
(
    -- Add the parameters for the stored procedure here
	@id int,
    @mediatype_id int,
    @imagelink varchar(500),
	@medialink varchar(500),
	@summary varchar(max)
)
AS
BEGIN

	IF (@id = -1) 
	BEGIN
		INSERT INTO [dbo].[80sEntertainment]
           ([80Entertainment_MediaType_id]
           ,[80sEntertainment_imagelink]
           ,[80sEntertainment_medialink]
           ,[80sEntertainment_summary])
		 VALUES
			   (@mediatype_id
			   ,@imagelink
			   ,@medialink
			   ,@summary)
	END
	ELSE
	BEGIN
		UPDATE [dbo].[80sEntertainment]
		SET [80Entertainment_MediaType_id] = @mediatype_id
		  ,[80sEntertainment_imagelink] = @imagelink
		  ,[80sEntertainment_medialink] = @medialink
		  ,[80sEntertainment_summary] = @summary
		WHERE [80sEntertainment_id] = @id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[insert_update_80sEntertainmentMovies]    Script Date: 5/2/2018 11:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[insert_update_80sEntertainmentMovies]
(
    -- Add the parameters for the stored procedure here
	@id int,
	@moviename varchar(255),
    @year_id int,
	@genre_id int,
    @star_actor varchar(100),
	@star_actress varchar(100),
	@director varchar(100),
	@80s_entertainment_id int
)
AS
BEGIN

	IF (@id = -1) 
	BEGIN
		INSERT INTO [dbo].[80sEntertainmentMovies]
           ([80sEntertainmentMovies_name]
           ,[80sEntertainmentMovies_year_id]
           ,[80sEntertainmentMovies_genre_id]
		   ,[80sEntertainmentMovies_staring_actor]
		   ,[80sEntertainmentMovies_staring_actress]
           ,[80sEntertainmentMovies_director]
		   ,[80sEntertainmentMovies_80sEntId])
		 VALUES
			   (@moviename
			   ,@year_id
			   ,@genre_id
			   ,@star_actor
			   ,@star_actress
			   ,@director
			   ,@80s_entertainment_id)
	END
	ELSE
	BEGIN
		UPDATE [dbo].[80sEntertainmentMovies]
		SET [80sEntertainmentMovies_name] = @moviename
		  ,[80sEntertainmentMovies_year_id] = @year_id
		  ,[80sEntertainmentMovies_genre_id] = @genre_id
		  ,[80sEntertainmentMovies_staring_actor] = @star_actor
		  ,[80sEntertainmentMovies_staring_actress] = @star_actress
		  ,[80sEntertainmentMovies_director] = @director
		  ,[80sEntertainmentMovies_80sEntId] = @80s_entertainment_id
		WHERE [80sEntertainmentMovies_id] = @id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[insert_update_80sEntertainmentMusic]    Script Date: 5/2/2018 11:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[insert_update_80sEntertainmentMusic]
(
    -- Add the parameters for the stored procedure here
	@id int,
	@songname varchar(255),
    @year_id int,
	@genre_id int,
    @tracknum int,
	@80s_entertainment_id int
)
AS
BEGIN

	IF (@id = -1) 
	BEGIN
		INSERT INTO [dbo].[80sEntertainmentMusic]
           ([80sEntertainmentMusic_songname]
           ,[80sEntertainmentMusic_year_id]
           ,[80sEntertainmentMusic_genre_id]
		   ,[80sEntertainmentMusic_tracknumber]
		   ,[80sEntertainmentMusic_80sEntId])
		 VALUES
			   (@songname
			   ,@year_id
			   ,@genre_id
			   ,@tracknum
			   ,@80s_entertainment_id)
	END
	ELSE
	BEGIN
		UPDATE [dbo].[80sEntertainmentMusic]
		SET [80sEntertainmentMusic_songname] = @songname
		  ,[80sEntertainmentMusic_year_id] = @year_id
		  ,[80sEntertainmentMusic_genre_id] = @genre_id
		  ,[80sEntertainmentMusic_tracknumber] = @tracknum
		  ,[80sEntertainmentMusic_80sEntId] = @80s_entertainment_id
		WHERE [80sEntertainmentMusic_id] = @id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[insert_update_80sEntertainmentTVShows]    Script Date: 5/2/2018 11:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[insert_update_80sEntertainmentTVShows]
(
    -- Add the parameters for the stored procedure here
	@id int,
	@showname varchar(100),
    @year_id int,
	@genre_id int,
    @episodename varchar(255),
	@seasonnum int,
	@episodenum int,
	@80s_entertainment_id int
)
AS
BEGIN

	IF (@id = -1) 
	BEGIN
		INSERT INTO [dbo].[80sEntertainmentTVShows]
           ([80sEntertainmentTVShows_showname]
           ,[80sEntertainmentTVShows_year_id]
           ,[80sEntertainmentTVShows_genre_id]
		   ,[80sEntertainmentTVShows_episodename]
		   ,[80sEntertainmentTVShows_seasonnum]
           ,[80sEntertainmentTVShows_episodenum]
		   ,[80sEntertainmentTVShows_80sEntId])
		 VALUES
			   (@showname
			   ,@year_id
			   ,@genre_id
			   ,@episodename
			   ,@seasonnum
			   ,@episodenum
			   ,@80s_entertainment_id)
	END
	ELSE
	BEGIN
		UPDATE [dbo].[80sEntertainmentTVShows]
		SET [80sEntertainmentTVShows_showname] = @showname
		  ,[80sEntertainmentTVShows_year_id] = @year_id
		  ,[80sEntertainmentTVShows_genre_id] = @genre_id
		  ,[80sEntertainmentTVShows_episodename] = @episodename
		  ,[80sEntertainmentTVShows_seasonnum] = @seasonnum
		  ,[80sEntertainmentTVShows_episodenum] = @episodenum
		  ,[80sEntertainmentTVShows_80sEntId] = @80s_entertainment_id
		WHERE [80sEntertainmentTVShows_id] = @id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[select_80sEntertainment]    Script Date: 5/2/2018 11:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[select_80sEntertainment]
(
	@id int = -1
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
    SELECT [80sEntertainment_id] as Id
      ,[80Entertainment_MediaType_id] as MediaTypeId
      ,[80sEntertainment_imagelink] as ImageLink
      ,[80sEntertainment_medialink] as MediaLink
      ,[80sEntertainment_summary] as Summary
	FROM [dbo].[80sEntertainment]
	WHERE [80sEntertainment_id] =
		CASE WHEN
			@id <> -1
		THEN
			@id
		ELSE
			[80sEntertainment_id]
		END

END
GO
/****** Object:  StoredProcedure [dbo].[select_80sEntertainmentMovies]    Script Date: 5/2/2018 11:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[select_80sEntertainmentMovies]
(
	@id int = -1
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
	SELECT [80sEntertainmentMovies_id] as id
      ,[80sEntertainmentMovies_name] as movieName
      ,[80sEntertainmentMovies_year_id] as yearId
      ,[80sEntertainmentMovies_genre_id] as genreId
      ,[80sEntertainmentMovies_staring_actor] as starringActor
      ,[80sEntertainmentMovies_staring_actress] as starringActress
      ,[80sEntertainmentMovies_director] as director
	  ,[80sEntertainmentMovies_80sEntId] as ent80sId
	FROM [dbo].[80sEntertainmentMovies]
	WHERE [80sEntertainmentMovies_id] =
		CASE WHEN
			@id <> -1
		THEN
			@id
		ELSE
			[80sEntertainmentMovies_id]
		END

END
GO
/****** Object:  StoredProcedure [dbo].[select_80sEntertainmentMusic]    Script Date: 5/2/2018 11:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[select_80sEntertainmentMusic]
(
	@id int = -1
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
	SELECT [80sEntertainmentMusic_id] as id
      ,[80sEntertainmentMusic_songname] as songName
      ,[80sEntertainmentMusic_albumname] as albumName
      ,[80sEntertainmentMusic_genre_id] as genreId
      ,[80sEntertainmentMusic_year_id] as yearId
      ,[80sEntertainmentMusic_tracknumber] as trackNumber
	  ,[80sEntertainmentMusic_80sEntId] as ent80sId
	FROM [dbo].[80sEntertainmentMusic]
	WHERE [80sEntertainmentMusic_id] =
		CASE WHEN
			@id <> -1
		THEN
			@id
		ELSE
			[80sEntertainmentMusic_id]
		END

END
GO
/****** Object:  StoredProcedure [dbo].[select_80sEntertainmentTVShows]    Script Date: 5/2/2018 11:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[select_80sEntertainmentTVShows]
(
	@id int = -1
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
	SELECT [80sEntertainmentTVShows_id] as id
      ,[80sEntertainmentTVShows_showname] as showName
      ,[80sEntertainmentTVShows_genre_id] as genreId
      ,[80sEntertainmentTVShows_year_id] as yearId
      ,[80sEntertainmentTVShows_episodename] as episodeName
      ,[80sEntertainmentTVShows_seasonnum] as seasonNumber
      ,[80sEntertainmentTVShows_episodenum] as episodeNumber
	  ,[80sEntertainmentTVShows_80sEntId] as ent80sId
	FROM [dbo].[80sEntertainmentTVShows]
	WHERE [80sEntertainmentTVShows_id] =
		CASE WHEN
			@id <> -1
		THEN
			@id
		ELSE
			[80sEntertainmentTVShows_id]
		END

END
GO
/****** Object:  StoredProcedure [dbo].[select_LK_Audio_Genre]    Script Date: 5/2/2018 11:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[select_LK_Audio_Genre]
(
	@id int = -1
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
	SELECT [LK_Audio_Genre_id] as lookupAudioGenreId
      ,[LK_Audio_Genre_name] as lookupAudioGenreName
	FROM [dbo].[LK_Audio_Genre]
	WHERE [LK_Audio_Genre_id] =
		CASE WHEN
			@id <> -1
		THEN
			@id
		ELSE
			[LK_Audio_Genre_id]
		END

END
GO
/****** Object:  StoredProcedure [dbo].[select_LK_MediaType]    Script Date: 5/2/2018 11:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[select_LK_MediaType]
(
	@id int = -1
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
	SELECT [LK_MediaType_id] as lookupMediaTypeId
      ,[LK_MediaType_name] as lookupMediaTypeName
	FROM [dbo].[LK_MediaType]
	WHERE [LK_MediaType_id] =
		CASE WHEN
			@id <> -1
		THEN
			@id
		ELSE
			[LK_MediaType_id]
		END

END
GO
/****** Object:  StoredProcedure [dbo].[select_LK_Video_Genre]    Script Date: 5/2/2018 11:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[select_LK_Video_Genre]
(
	@id int = -1
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
	SELECT [LK_Video_Genre_id] as lookupVideoGenreId
      ,[LK_Video_Genre_name] as lookupVideoGenreName
	FROM [dbo].[LK_Video_Genre]
	WHERE [LK_Video_Genre_id] =
		CASE WHEN
			@id <> -1
		THEN
			@id
		ELSE
			[LK_Video_Genre_id]
		END

END
GO
/****** Object:  StoredProcedure [dbo].[select_LK_Year]    Script Date: 5/2/2018 11:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[select_LK_Year]
(
	@id int = -1
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
	SELECT [LK_Year_id] as lookupYearId
		  ,[LK_Year_year] as lookupYear
	FROM [dbo].[LK_Year]
	WHERE [LK_Year_id] =
		CASE WHEN
			@id <> -1
		THEN
			@id
		ELSE
			[LK_Year_id]
		END

END
GO
USE [master]
GO
ALTER DATABASE [80sEntertainment] SET  READ_WRITE 
GO
