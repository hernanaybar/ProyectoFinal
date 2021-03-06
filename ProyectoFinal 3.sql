
/*(Nombre): Hernan Aybar       (Matricula): 17-EIIT-1-080      (Seccion): 0541*/


USE [master]
GO
/****** Object:  Database [BaseDeDatos3]    Script Date: 20/11/2018 13:43:30 ******/
CREATE DATABASE [BaseDeDatos3]
 
USE [BaseDeDatos3]
GO
/****** Object:  Table [dbo].[Almacenes]    Script Date: 20/11/2018 13:43:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacenes](
	[Codigo] [int] NOT NULL,
	[Lugar] [nvarchar](50) NULL,
	[Capacidad] [int] NULL,
 CONSTRAINT [PK_Almacenes] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cajas]    Script Date: 20/11/2018 13:43:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cajas](
	[NumReferencia] [char](10) NOT NULL,
	[Contenido] [nvarchar](50) NULL,
	[Valor] [int] NULL,
	[Almacen] [int] NULL,
 CONSTRAINT [PK_Cajas] PRIMARY KEY CLUSTERED 
(
	[NumReferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (1, N'Venezuela', 1000000)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (2, N'RD', 2000000)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (3, N'Colombia', 3000000)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (4, N'Puerto Rico', 4000000)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (5, N'Haiti', 5000000)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (6, N'Argentina', 6000000)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (7, N'Guatemala', 7000000)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (8, N'Chile', 8000000)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (9, N'Francia', 9000000)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (10, N'España', 1010101)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'1         ', N'Pescado', 10101010, 10)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'10        ', N'Carne de Pavo', 11111111, 1)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'2         ', N'Habichuelas', 99999999, 9)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'3         ', N'Camarones', 88888888, 8)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'4         ', N'Pollo', 77777777, 7)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'5         ', N'Arroz', 66666666, 6)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'6         ', N'Cerdo', 55555555, 5)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'7         ', N'Carne de Res', 44444444, 4)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'8         ', N'Carne de Chivo', 33333333, 3)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'9         ', N'Maiz', 22222222, 2)
ALTER TABLE [dbo].[Cajas]  WITH CHECK ADD  CONSTRAINT [FK_Cajas_Almacenes] FOREIGN KEY([Almacen])
REFERENCES [dbo].[Almacenes] ([Codigo])
GO
ALTER TABLE [dbo].[Cajas] CHECK CONSTRAINT [FK_Cajas_Almacenes]
GO
USE [master]
GO
ALTER DATABASE [BaseDeDatos3] SET  READ_WRITE 
GO
