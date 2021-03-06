
/*(Nombre): Hernan Aybar       (Matricula): 17-EIIT-1-080      (Seccion): 0541*/



USE [master]
GO
/****** Object:  Database [BaseDeDatos2]    Script Date: 20/11/2018 13:33:30 ******/
CREATE DATABASE [BaseDeDatos2]

USE [BaseDeDatos2]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 20/11/2018 13:33:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Precio] [int] NULL,
	[Fabricante] [int] NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fabricantes]    Script Date: 20/11/2018 13:33:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricantes](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Fabricantes] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (1, N'Nike Air Max', 3500, 1)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (2, N'Tenis', 5000, 2)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (3, N'Basket Ball', 2000, 3)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (4, N'Camiseta', 1500, 4)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (5, N'T-Shirt', 6000, 5)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (6, N'Zapatos', 5200, 6)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (7, N'Gorra', 900, 7)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (8, N'Calsonsillos', 2000, 8)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (9, N'Maquillaje', 8000, 9)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (10, N'Correa', 3000, 10)
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (1, N'Nike')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (2, N'Reebook')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (3, N'Spalding')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (4, N'Jordan')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (5, N'Gucci')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (6, N'Luis Vuitton')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (7, N'Adiddas')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (8, N'Calvin Klain')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (9, N'Victoria''s Secret')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre]) VALUES (10, N'Fendi')
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_Articulos_Fabricantes] FOREIGN KEY([Fabricante])
REFERENCES [dbo].[Fabricantes] ([Codigo])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_Articulos_Fabricantes]
GO
USE [master]
GO
ALTER DATABASE [BaseDeDatos2] SET  READ_WRITE 
GO
