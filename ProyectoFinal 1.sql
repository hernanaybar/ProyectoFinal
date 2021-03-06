
/*(Nombre): Hernan Aybar       (Matricula): 17-EIIT-1-080      (Seccion): 0541*/




USE [master]
GO
/****** Object:  Database [BaseDeDatos1]    Script Date: 20/11/2018 13:22:51 ******/
CREATE DATABASE [BaseDeDatos1]

USE [BaseDeDatos1]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 20/11/2018 13:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[CalificacionEdad] [int] NULL,
 CONSTRAINT [PK_Peliculas] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Salas]    Script Date: 20/11/2018 13:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salas](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Pelicula] [int] NULL,
 CONSTRAINT [PK_Salas] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (1, N'Tuberculo Gourmet', 12)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (2, N'Los Carpinteros', 10)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (3, N'Todos los hombres son iguales', 12)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (4, N'La Familia Reina', 10)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (5, N'Los Paracaidistas', 10)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (6, N'Sanky Panky', 12)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (7, N'Lotoman', 10)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (8, N'La Soga', 12)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (9, N'El Teniente Amado', 12)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [CalificacionEdad]) VALUES (10, N'Colao', 12)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (1, N'Salon 1', 10)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (2, N'Salon 2', 9)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (3, N'Salon 3', 8)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (4, N'Salon 4', 7)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (5, N'Salon 5', 6)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (6, N'Salon 6', 5)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (7, N'Salon 7', 4)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (8, N'Salon 8', 3)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (9, N'Salon 9', 2)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (10, N'Salon 10', 1)
ALTER TABLE [dbo].[Salas]  WITH CHECK ADD  CONSTRAINT [FK_Salas_Peliculas] FOREIGN KEY([Pelicula])
REFERENCES [dbo].[Peliculas] ([Codigo])
GO
ALTER TABLE [dbo].[Salas] CHECK CONSTRAINT [FK_Salas_Peliculas]
GO
USE [master]
GO
ALTER DATABASE [BaseDeDatos1] SET  READ_WRITE 
GO
