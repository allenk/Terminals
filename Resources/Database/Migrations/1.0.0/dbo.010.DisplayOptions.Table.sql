USE [{DATABASE_NAME}]
GO
/****** Object:  Table [dbo].[DisplayOptions]    Script Date: 12/10/2012 22:16:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DisplayOptions](
	[FavoriteId] [int] NOT NULL,
	[Height] [int] NULL,
	[Width] [int] NULL,
	[Size] [tinyint] NULL,
	[Colors] [tinyint] NULL,
 CONSTRAINT [PK_DisplayOptions] PRIMARY KEY CLUSTERED 
(
	[FavoriteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DisplayOptions]  WITH CHECK ADD  CONSTRAINT [FK_DisplayOptions_Favorites] FOREIGN KEY([FavoriteId])
REFERENCES [dbo].[Favorites] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DisplayOptions] CHECK CONSTRAINT [FK_DisplayOptions_Favorites]
GO
