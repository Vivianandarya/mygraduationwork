USE [hiyo]
GO
/****** Object:  Table [dbo].[性别]    Script Date: 07/10/2018 18:29:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[性别](
	[sex] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 07/10/2018 18:29:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[userid] [nvarchar](50) NOT NULL,
	[id] [nvarchar](50) NOT NULL,
	[pnumber] [nchar](11) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[sex] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 07/10/2018 18:29:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[ddid] [nvarchar](50) NOT NULL,
	[date] [datetime] NOT NULL,
	[startdate] [date] NOT NULL,
	[enddate] [date] NOT NULL,
	[peoplenumber] [int] NOT NULL,
	[daynumber] [int] NOT NULL,
	[money] [money] NOT NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[ddid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[guide]    Script Date: 07/10/2018 18:29:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[guide](
	[xdid] [nvarchar](50) NOT NULL,
	[id] [nchar](18) NOT NULL,
	[pnumber] [nchar](11) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[sex] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_guide] PRIMARY KEY CLUSTERED 
(
	[xdid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fwinformation]    Script Date: 07/10/2018 18:29:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fwinformation](
	[fwid] [nvarchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[luxian] [nvarchar](50) NOT NULL,
	[money] [money] NOT NULL,
	[information] [nvarchar](50) NULL,
	[city] [nvarchar](50) NOT NULL,
	[xdid] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_fwinformation] PRIMARY KEY CLUSTERED 
(
	[fwid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
