USE [master]
GO
/****** Object:  Database [SIGE_UTN]    Script Date: 01/10/2015 18:59:47 ******/
CREATE DATABASE [SIGE_UTN] ON  PRIMARY 
( NAME = N'SIGE_UTN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\SIGE_UTN.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SIGE_UTN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\SIGE_UTN_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SIGE_UTN] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SIGE_UTN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SIGE_UTN] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [SIGE_UTN] SET ANSI_NULLS OFF
GO
ALTER DATABASE [SIGE_UTN] SET ANSI_PADDING OFF
GO
ALTER DATABASE [SIGE_UTN] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [SIGE_UTN] SET ARITHABORT OFF
GO
ALTER DATABASE [SIGE_UTN] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [SIGE_UTN] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [SIGE_UTN] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [SIGE_UTN] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [SIGE_UTN] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [SIGE_UTN] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [SIGE_UTN] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [SIGE_UTN] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [SIGE_UTN] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [SIGE_UTN] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [SIGE_UTN] SET  DISABLE_BROKER
GO
ALTER DATABASE [SIGE_UTN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [SIGE_UTN] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [SIGE_UTN] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [SIGE_UTN] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [SIGE_UTN] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [SIGE_UTN] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [SIGE_UTN] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [SIGE_UTN] SET  READ_WRITE
GO
ALTER DATABASE [SIGE_UTN] SET RECOVERY FULL
GO
ALTER DATABASE [SIGE_UTN] SET  MULTI_USER
GO
ALTER DATABASE [SIGE_UTN] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [SIGE_UTN] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'SIGE_UTN', N'ON'
GO
USE [SIGE_UTN]
GO
/****** Object:  User [lis.utnfrc]    Script Date: 01/10/2015 18:59:47 ******/
CREATE USER [lis.utnfrc] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado](
	[idEstado] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[ambito] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[idEstado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (1, N'Preinscripto', N'Alumno')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (2, N'Regular', N'Alumno')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (3, N'Becado', N'Alumno')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (4, N'Aprobado', N'Alumno')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (5, N'No Regular', N'Alumno')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (6, N'Condicional', N'Alumno')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (7, N'No Inscripto', N'Alumno')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (8, N'De Baja', N'Alumno')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (9, N'Disponible', N'Aula')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (10, N'No Disponible', N'Aula')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (11, N'Deshabilitada', N'Aula')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (12, N'Sin Horarios', N'Curso')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (13, N'Horario Parcial', N'Curso')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (14, N'Con Horarios', N'Curso')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (15, N'En Actividad', N'Docente')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (16, N'De Licencia', N'Docente')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (17, N'De Baja', N'Docente')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (18, N'En Actividad', N'PersonalMaestranza')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (19, N'De Licencia', N'PersonalMaestranza')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (20, N'De Baja', N'PersonalMaestranza')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (21, N'Soltero/a', N'EstadoCivil')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (22, N'Casado/a', N'EstadoCivil')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (23, N'Divorsiado/a', N'EstadoCivil')
INSERT [dbo].[Estado] ([idEstado], [nombre], [ambito]) VALUES (24, N'Viudo/a', N'EstadoCivil')
/****** Object:  Table [dbo].[Matricula]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matricula](
	[idMatricula] [int] NOT NULL,
	[fechaInicio] [datetime] NOT NULL,
	[fechaFin] [datetime] NULL,
	[importe] [money] NOT NULL,
 CONSTRAINT [PK_Matricula] PRIMARY KEY CLUSTERED 
(
	[idMatricula] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Matricula] ([idMatricula], [fechaInicio], [fechaFin], [importe]) VALUES (1, CAST(0x0000A13900000000 AS DateTime), CAST(0x0000A31900000000 AS DateTime), 150.0000)
INSERT [dbo].[Matricula] ([idMatricula], [fechaInicio], [fechaFin], [importe]) VALUES (2, CAST(0x0000A31900000000 AS DateTime), CAST(0x0000A38200000000 AS DateTime), 165.0000)
INSERT [dbo].[Matricula] ([idMatricula], [fechaInicio], [fechaFin], [importe]) VALUES (3, CAST(0x0000A38200000000 AS DateTime), CAST(0x0000A3F800000000 AS DateTime), 170.0000)
INSERT [dbo].[Matricula] ([idMatricula], [fechaInicio], [fechaFin], [importe]) VALUES (4, CAST(0x0000A3F800000000 AS DateTime), NULL, 170.0000)
/****** Object:  Table [dbo].[CicloLectivo]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CicloLectivo](
	[cicloLectivo] [int] NOT NULL,
 CONSTRAINT [PK_CicloLectivo] PRIMARY KEY CLUSTERED 
(
	[cicloLectivo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CicloLectivo] ([cicloLectivo]) VALUES (2012)
INSERT [dbo].[CicloLectivo] ([cicloLectivo]) VALUES (2013)
INSERT [dbo].[CicloLectivo] ([cicloLectivo]) VALUES (2014)
INSERT [dbo].[CicloLectivo] ([cicloLectivo]) VALUES (2015)
/****** Object:  Table [dbo].[Caja]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Caja](
	[idCaja] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[saldoInicial] [money] NOT NULL,
 CONSTRAINT [PK_Caja] PRIMARY KEY CLUSTERED 
(
	[idCaja] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Caja] ([idCaja], [nombre], [saldoInicial]) VALUES (1, N'Tesorería', 50000.0000)
INSERT [dbo].[Caja] ([idCaja], [nombre], [saldoInicial]) VALUES (2, N'Caja Chica', 1000.0000)
/****** Object:  Table [dbo].[Pais]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pais](
	[idPais] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[idPais] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Pais] ([idPais], [nombre]) VALUES (1, N'Argentina')
INSERT [dbo].[Pais] ([idPais], [nombre]) VALUES (2, N'Brasil')
INSERT [dbo].[Pais] ([idPais], [nombre]) VALUES (3, N'Uruguay')
INSERT [dbo].[Pais] ([idPais], [nombre]) VALUES (4, N'Chile')
INSERT [dbo].[Pais] ([idPais], [nombre]) VALUES (5, N'Paraguay')
INSERT [dbo].[Pais] ([idPais], [nombre]) VALUES (6, N'Bolivia')
/****** Object:  Table [dbo].[NumeroComprobante]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NumeroComprobante](
	[idNroComprobante] [int] NOT NULL,
	[serie] [int] NOT NULL,
	[numero] [int] NOT NULL,
 CONSTRAINT [PK_NumeroComprobante] PRIMARY KEY CLUSTERED 
(
	[idNroComprobante] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NumeroComprobante] ([idNroComprobante], [serie], [numero]) VALUES (1, 0, 26)
/****** Object:  Table [dbo].[Novedad]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Novedad](
	[idNovedad] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[titulo] [varchar](50) NOT NULL,
	[descripcion] [varchar](5000) NOT NULL,
	[rutaArchivo] [varchar](200) NULL,
 CONSTRAINT [PK_Novedad] PRIMARY KEY CLUSTERED 
(
	[idNovedad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NivelEducativo]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NivelEducativo](
	[idNivelEducativo] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[division] [varchar](50) NOT NULL,
	[reconocimientoPedagogico] [varchar](50) NULL,
	[aporteEstatal] [varchar](50) NULL,
 CONSTRAINT [PK_NivelEducativo] PRIMARY KEY CLUSTERED 
(
	[idNivelEducativo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NivelEducativo] ([idNivelEducativo], [nombre], [division], [reconocimientoPedagogico], [aporteEstatal]) VALUES (1, N'Inicial', N'Sala de 3 Años', N'0071 / 02', N'0418 / 10')
INSERT [dbo].[NivelEducativo] ([idNivelEducativo], [nombre], [division], [reconocimientoPedagogico], [aporteEstatal]) VALUES (2, N'Inicial', N'Sala de 4 Años', N'0265 / 91', N'598 / 05')
INSERT [dbo].[NivelEducativo] ([idNivelEducativo], [nombre], [division], [reconocimientoPedagogico], [aporteEstatal]) VALUES (3, N'Inicial', N'Sala de 5 Años', N'769 - 946 / 46', N'769 - 946 / 46')
INSERT [dbo].[NivelEducativo] ([idNivelEducativo], [nombre], [division], [reconocimientoPedagogico], [aporteEstatal]) VALUES (4, N'Primario', N'1° Grado', N'769 - 946 / 46', N'769 - 946 / 46')
INSERT [dbo].[NivelEducativo] ([idNivelEducativo], [nombre], [division], [reconocimientoPedagogico], [aporteEstatal]) VALUES (5, N'Primario', N'2° Grado', N'769 - 946 / 46', N'769 - 946 / 46')
INSERT [dbo].[NivelEducativo] ([idNivelEducativo], [nombre], [division], [reconocimientoPedagogico], [aporteEstatal]) VALUES (6, N'Primario', N'3° Grado', N'769 - 946 / 46', N'769 - 946 / 46')
INSERT [dbo].[NivelEducativo] ([idNivelEducativo], [nombre], [division], [reconocimientoPedagogico], [aporteEstatal]) VALUES (7, N'Primario', N'4° Grado', N'769 - 946 / 46', N'769 - 946 / 46')
INSERT [dbo].[NivelEducativo] ([idNivelEducativo], [nombre], [division], [reconocimientoPedagogico], [aporteEstatal]) VALUES (8, N'Primario', N'5° Grado', N'769 - 946 / 46', N'769 - 946 / 46')
INSERT [dbo].[NivelEducativo] ([idNivelEducativo], [nombre], [division], [reconocimientoPedagogico], [aporteEstatal]) VALUES (9, N'Primario', N'6° Grado', N'769 - 946 / 46', N'769 - 946 / 46')
INSERT [dbo].[NivelEducativo] ([idNivelEducativo], [nombre], [division], [reconocimientoPedagogico], [aporteEstatal]) VALUES (10, N'Secundario', N'1° Año', NULL, NULL)
INSERT [dbo].[NivelEducativo] ([idNivelEducativo], [nombre], [division], [reconocimientoPedagogico], [aporteEstatal]) VALUES (11, N'Secundario', N'2° Año', NULL, NULL)
INSERT [dbo].[NivelEducativo] ([idNivelEducativo], [nombre], [division], [reconocimientoPedagogico], [aporteEstatal]) VALUES (12, N'Secundario', N'3° Año', NULL, NULL)
INSERT [dbo].[NivelEducativo] ([idNivelEducativo], [nombre], [division], [reconocimientoPedagogico], [aporteEstatal]) VALUES (13, N'Secundario', N'4° Año', NULL, NULL)
INSERT [dbo].[NivelEducativo] ([idNivelEducativo], [nombre], [division], [reconocimientoPedagogico], [aporteEstatal]) VALUES (14, N'Secundario', N'5° Año', NULL, NULL)
INSERT [dbo].[NivelEducativo] ([idNivelEducativo], [nombre], [division], [reconocimientoPedagogico], [aporteEstatal]) VALUES (15, N'Secundario', N'6° Año', NULL, NULL)
/****** Object:  Table [dbo].[MovimientoAltaBaja]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovimientoAltaBaja](
	[idMovimientoAltaBaja] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[codigo] [varchar](5) NOT NULL,
	[ausentismo] [int] NOT NULL,
 CONSTRAINT [PK_MovimientoAltaBaja] PRIMARY KEY CLUSTERED 
(
	[idMovimientoAltaBaja] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MovimientoAltaBaja] ([idMovimientoAltaBaja], [nombre], [codigo], [ausentismo]) VALUES (1, N'Licencia p/maternidad', N'123', 1)
INSERT [dbo].[MovimientoAltaBaja] ([idMovimientoAltaBaja], [nombre], [codigo], [ausentismo]) VALUES (2, N'Atencion familiar', N'3543', 1)
/****** Object:  Table [dbo].[Cuota]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuota](
	[idCuota] [int] NOT NULL,
	[alumnosGrupoFamiliar] [int] NOT NULL,
	[fechaInicio] [datetime] NOT NULL,
	[fechaFin] [datetime] NULL,
	[importe] [money] NOT NULL,
 CONSTRAINT [PK_ImporteCuota] PRIMARY KEY CLUSTERED 
(
	[idCuota] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cuota] ([idCuota], [alumnosGrupoFamiliar], [fechaInicio], [fechaFin], [importe]) VALUES (0, 0, CAST(0x0000A13900000000 AS DateTime), NULL, 0.0000)
INSERT [dbo].[Cuota] ([idCuota], [alumnosGrupoFamiliar], [fechaInicio], [fechaFin], [importe]) VALUES (1, 1, CAST(0x0000A13900000000 AS DateTime), NULL, 150.0000)
INSERT [dbo].[Cuota] ([idCuota], [alumnosGrupoFamiliar], [fechaInicio], [fechaFin], [importe]) VALUES (2, 2, CAST(0x0000A13900000000 AS DateTime), CAST(0x0000A31900000000 AS DateTime), 270.0000)
INSERT [dbo].[Cuota] ([idCuota], [alumnosGrupoFamiliar], [fechaInicio], [fechaFin], [importe]) VALUES (3, 3, CAST(0x0000A13900000000 AS DateTime), NULL, 350.0000)
INSERT [dbo].[Cuota] ([idCuota], [alumnosGrupoFamiliar], [fechaInicio], [fechaFin], [importe]) VALUES (4, 2, CAST(0x0000A31900000000 AS DateTime), NULL, 290.0000)
/****** Object:  Table [dbo].[PerfilUsuario]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PerfilUsuario](
	[idPerfilUsuario] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](200) NULL,
 CONSTRAINT [PK_TipoUsuario] PRIMARY KEY CLUSTERED 
(
	[idPerfilUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PerfilUsuario] ([idPerfilUsuario], [nombre], [descripcion]) VALUES (0, N'Invitado', N'Perfil para No Registrados, con los permisos mínimos.')
INSERT [dbo].[PerfilUsuario] ([idPerfilUsuario], [nombre], [descripcion]) VALUES (1, N'Administrador', N'Super Usuario, posee todos los permisos.')
INSERT [dbo].[PerfilUsuario] ([idPerfilUsuario], [nombre], [descripcion]) VALUES (2, N'Alumno', N'Perfil para Alumnos, con permisos apropiados.')
INSERT [dbo].[PerfilUsuario] ([idPerfilUsuario], [nombre], [descripcion]) VALUES (3, N'Docente', N'Perfil para Docentes, con permisos apropiados.')
INSERT [dbo].[PerfilUsuario] ([idPerfilUsuario], [nombre], [descripcion]) VALUES (4, N'PersonalMaestranza', N'Perfil para Personal de Maestranza, con permisos apropiados.')
INSERT [dbo].[PerfilUsuario] ([idPerfilUsuario], [nombre], [descripcion]) VALUES (5, N'Secretaria', N'Perfil para Secretarias, con permisos apropiados.')
INSERT [dbo].[PerfilUsuario] ([idPerfilUsuario], [nombre], [descripcion]) VALUES (6, N'Tesorero', N'Perfil para Tesoreros, con permisos apropiados.')
/****** Object:  Table [dbo].[SituacionRevista]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SituacionRevista](
	[idSituacionRevista] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SituacionRevista] PRIMARY KEY CLUSTERED 
(
	[idSituacionRevista] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SituacionRevista] ([idSituacionRevista], [nombre]) VALUES (1, N'Titular')
INSERT [dbo].[SituacionRevista] ([idSituacionRevista], [nombre]) VALUES (2, N'Interino')
INSERT [dbo].[SituacionRevista] ([idSituacionRevista], [nombre]) VALUES (3, N'Suplente')
/****** Object:  Table [dbo].[Titulo]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Titulo](
	[idTitulo] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Titulo] PRIMARY KEY CLUSTERED 
(
	[idTitulo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (1, N'Contador Público')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (2, N'Abogado')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (3, N'Maestra de Grado')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (4, N'Profesor')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (5, N'Doctor')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (6, N'INGENIERO AGRÓNOMO')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (7, N'Auxiliar Docente')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (8, N'Prof.de 1º y 2º Ciclo EGB')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (9, N'Maestra Superior')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (10, N'Profesor de Educacion Fisica')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (11, N'Profesor de Musica')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (12, N'Prof. de Educación  Inicial')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (13, N'MAESTRA SUPERIOR Y TEC. EN ')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (14, N'HIGIENE Y SEG. ALIMENTARIA')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (15, N'TRAYECTO PEDAGÓGICO')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (16, N'OPERADOR DE PC')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (17, N'BACHILLER MERCANTIL')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (18, N'PROF.EN CS. ECONÓMICAS')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (19, N'PROF. DE EGB ')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (20, N'PROF.SUP.CS. SAGRADAS Y FILOSOFIA')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (21, N'M.CATEQUISTA')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (22, N'PROFESORA')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (23, N'PROFESOR CIENCIAS ECONÓMICAS')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (25, N'PROF MATEMATICA Y FÍSICA')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (26, N'PROFESORA DE LENGUA Y LIT.CAST')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (27, N'TECNICA EN ADMIN. DE EMPRESAS')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (28, N'LIC. EN PSICOLGIA')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (29, N'PROF. EN  BIOLOGÍA')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (30, N'PROF. DE MATEMÁTICA')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (31, N'LIC. EN NUTRICIÓN')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (32, N'TÉCNICO NACIONAL')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (33, N'PROF. DE INGLÉS')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (34, N'FARMACÉUTICA')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (35, N'LIC.EN BIODIVERSIDAD')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (36, N'PROF EN GEOGRAFIA')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (37, N'LICENC. EN BIOQUÍMICA CLÍNICA')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (38, N'PROF. EGB III Y POLIMODAL EN HISTORIA')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (39, N'TEC.EN HIGIENE Y SEG.INDUSTRIAL')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (40, N'PROFESORA DE HISTORIA')
INSERT [dbo].[Titulo] ([idTitulo], [nombre]) VALUES (41, N'LIC.EN CS.DE LA COMUNIC. SOCIAL')
/****** Object:  Table [dbo].[PuestoTrabajo]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PuestoTrabajo](
	[idPuestoTrabajo] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](200) NULL,
 CONSTRAINT [PK_PuestoTrabajo] PRIMARY KEY CLUSTERED 
(
	[idPuestoTrabajo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PuestoTrabajo] ([idPuestoTrabajo], [nombre], [descripcion]) VALUES (1, N'Operario de Limpieza', N'Encargado de limpiar, ordenar y sacar la basura para mantener la higiene del instituto.')
INSERT [dbo].[PuestoTrabajo] ([idPuestoTrabajo], [nombre], [descripcion]) VALUES (2, N'Bedel', N'Encargado de tomar asistencia y controlar la conducta de alumnos en el instituto.')
INSERT [dbo].[PuestoTrabajo] ([idPuestoTrabajo], [nombre], [descripcion]) VALUES (3, N'Secretaria', N'Encargada de todas las tareas administrativas del instituto.')
INSERT [dbo].[PuestoTrabajo] ([idPuestoTrabajo], [nombre], [descripcion]) VALUES (4, N'Bibliotecaria', N'Encargada de gestionar la biblioteca del instituto.')
INSERT [dbo].[PuestoTrabajo] ([idPuestoTrabajo], [nombre], [descripcion]) VALUES (5, N'Portero', N'Encargado de controlar el ingreso de personas y cerrar las puertas de instituto.')
INSERT [dbo].[PuestoTrabajo] ([idPuestoTrabajo], [nombre], [descripcion]) VALUES (6, N'Tesorero', N'Encargado de cobrar, pagar y controlar todos los movimientos de fondos del instituto.')
INSERT [dbo].[PuestoTrabajo] ([idPuestoTrabajo], [nombre], [descripcion]) VALUES (7, N'Cocinera', N'Encargada de preparar la comida en la cantina del instituto.')
INSERT [dbo].[PuestoTrabajo] ([idPuestoTrabajo], [nombre], [descripcion]) VALUES (8, N'Maestranza', N'')
/****** Object:  Table [dbo].[Turno]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Turno](
	[idTurno] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[horaInicio] [datetime] NULL,
	[horaFin] [datetime] NULL,
 CONSTRAINT [PK_Turno] PRIMARY KEY CLUSTERED 
(
	[idTurno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Turno] ([idTurno], [nombre], [horaInicio], [horaFin]) VALUES (1, N'Mañana', CAST(0x00009FCB007A3910 AS DateTime), CAST(0x00009FCB00D8FAE0 AS DateTime))
INSERT [dbo].[Turno] ([idTurno], [nombre], [horaInicio], [horaFin]) VALUES (2, N'Tarde', CAST(0x00009FCB00DE7920 AS DateTime), CAST(0x00009FCB01206420 AS DateTime))
/****** Object:  Table [dbo].[Usuario]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[contraseña] [varchar](50) NULL,
	[idPerfilUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (1, N'1', N'1', 1)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (1001, N'Jaime', N'11894426', 4)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (1002, N'Ortiz', N'17583126', 4)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (1003, N'Martín', N'20531541', 4)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10001, N'Montivero', N'16733835', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10002, N'Abratte', N'13510210', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10003, N'Brandolini', N'13054048', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10004, N'Vittore', N'23582528', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10005, N'Perlo', N'13964602', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10006, N'Ludueña', N'31278502', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10007, N'Picco', N'26602785', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10008, N'Montivero ', N'14878599', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10009, N'Chiaretta ', N'23582531', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10010, N'Pellegrini', N'23255363', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10011, N'Gallo', N'17974227', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10012, N'Del Valle Ayala', N'28548680', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10013, N'Nieto', N'26612282', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10014, N'Acosta ', N'34684943', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10015, N'Beltramo', N'32139827', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10016, N'Pérez', N'22159665', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10017, N'Pezzano', N'27423020', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10018, N'Platé', N'31837962', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10019, N'Platé', N'32396690', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10020, N'Podio', N'28582414', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10021, N'Podio', N'24037854', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10022, N'Quaglia', N'30623743', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10023, N'Rosmari', N'16733889', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10024, N'Ruiz', N'23062403', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10025, N'Tonini', N'24883130', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10026, N'Villegas', N'26089048', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10027, N'Fierro', N'27869070', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10028, N'López', N'17445804', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10029, N'Peiretti', N'20541335', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10030, N'Bruno', N'23582536', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10031, N'Chiaretta', N'30623729', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10032, N'Bearzzi', N'25752016', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10033, N'Cicaré', N'21019923', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10034, N'Mapelli', N'16687960', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10035, N'Ludueña', N'16632717', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10036, N'Benvidez', N'35675385', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10037, N'Merke', N'10561456', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10038, N'Almada', N'20402061', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10039, N'Casinerio', N'31837917', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10040, N'Furrer', N'25309595', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10041, N'Magliano', N'28582497', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (10042, N'Grudina', N'30623759', 3)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100001, N'Pontoni', N'44975795', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100002, N'Bertuzzi', N'44432853', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100003, N'Borsi', N'44472148', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100004, N'Castillo', N'44296507', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100005, N'Demaria', N'44551516', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100007, N'Monteverdi', N'44296510', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100008, N'Pagnucco', N'44076536', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100009, N'Pellegrini', N'44783076', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100011, N'Acosta', N'44296529', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100012, N'Leiva Mendez', N'47913037', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100013, N'Macagno', N'50033690', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100014, N'Maurer', N'50696556', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100015, N'Meia', N'50523251', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100016, N'Monteverdi', N'50523254', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100017, N'Quinteros', N'50523280', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100018, N'Quiñones', N'51037217', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100019, N'Rupil ', N'51033682', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100020, N'Sartori', N'50523261', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100021, N'Scalerandi', N'50931628', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100022, N'Valenti', N'50523263', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100023, N'Andretich', N'51017300', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100024, N'Aguero', N'50091376', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100025, N'Barretta', N'49322614', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100026, N'Bertorello Boco', N'49079082', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100027, N'Brunetti', N'49322616', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100028, N'Collino', N'48670349', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100029, N'Fierro', N'49079071', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100030, N'Maurer', N'48755511', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100031, N'Mendiolaza', N'48537549', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100032, N'Moglia Leiva', N'47910216', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100033, N'Monteverdi', N'48072945', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100034, N'Moya', N'48755506', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100035, N'Acosta', N'45483995', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100036, N'Betuzzi', N'45154870', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100037, N'Cabrale', N'44899483', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100038, N'Callieri', N'45482162', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100039, N'Carignano', N'46995801', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100040, N'Gaviglio', N'45093297', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100041, N'Albertengo', N'45700376', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100042, N'Barcellini', N'45700382', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100043, N'Bosco ', N'45700375', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100044, N'Caceres', N'3', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100045, N'Cordoba ', N'46036783', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100046, N'Chiaretta', N'46036786', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100047, N'Acosta', N'46770659', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100048, N'Andretich', N'47363061', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100049, N'Baretta', N'46452863', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100050, N'Bersano', N'46306589', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100051, N'Brizuela', N'46770687', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100052, N'Carignano ', N'46659992', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100053, N'Castellano', N'47824075', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100054, N'Corvera', N'47714709', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100055, N'Elesner', N'47363100', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100056, N'Krampanis', N'47824087', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100057, N'Ludueña', N'47363085', 2)
GO
print 'Processed 100 total records'
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100058, N'Molina ', N'47913010', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100059, N'Aguirre ', N'43603221', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100060, N'Corigliani', N'44076187', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100061, N'Esposito Gaviglio ', N'43136163', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100062, N'Ferreyra', N'43610506', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100063, N'Grosso', N'43609250', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100064, N'Grosso ', N'42892678', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100065, N'Lerda', N'43884776', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100066, N'Lopez ', N'43609239', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100067, N'Lorenzati', N'43884758', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100068, N'Luna', N'43882949', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100069, N'Aguirre ', N'40928887', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100070, N'Bergia', N'43060932', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100071, N'Chiaretta', N'43060950', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100072, N'Correa', N'42050136', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100073, N'Ferrer', N'43060960', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100074, N'Maidana', N'42217556', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100075, N'Mendoza', N'42443219', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100076, N'Piovano', N'42892693', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100077, N'Reynoso', N'41813601', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100078, N'Barretta', N'43317747', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100079, N'Lorenzatti', N'40050127', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100080, N'Monteverdi', N'42513808', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100081, N'Pizarro', N'42048066', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100082, N'Arce', N'42513818', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100083, N'Arguello', N'40574935', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100084, N'Bazán', N'41769393', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100085, N'Corigliani', N'42696537', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100086, N'Díaz ', N'42441032', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100087, N'Ferreyra', N'39733894', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100088, N'Mercado', N'40574124', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100089, N'De Maria', N'41225833', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100090, N'Ñañez', N'40928898', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100091, N'Paz', N'41225874', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100092, N'Pinto', N'41225850', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100093, N'Putero', N'41225831', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100094, N'Tesio', N'41769390', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100095, N'Veronese', N'40928900', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100096, N'Zin', N'41280679', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100097, N'Cabrale', N'40928867', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100098, N'Franzini', N'40574946', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100099, N'Marchetti', N'40574108', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100100, N'Salde', N'39557107', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100101, N'Abratte ', N'40574988', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100102, N'Alessandria', N'39423833', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100103, N'Benavidez', N'40574976', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100104, N'Bessone', N'40200982', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100105, N'Gorgerino', N'40574965', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100106, N'ISleño', N'40575000', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100107, N'Aguirre', N'40574947', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100108, N'Alfonso', N'37814618', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100109, N'Ayala', N'39543845', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100110, N'Gorgerino', N'39543895', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100111, N'Grosso ', N'40200922', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100112, N'Krampanis', N'40200929', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100113, N'Luna', N'38730084', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100114, N'Mercado', N'38418929', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100115, N'Putero', N'39543894', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100116, N'Ruiz', N'40200925', 2)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [contraseña], [idPerfilUsuario]) VALUES (100117, N'Lourdes', N'43884779', 2)
/****** Object:  Table [dbo].[ProvinciaEstado]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProvinciaEstado](
	[idProvinciaEstado] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[idPais] [int] NOT NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[idProvinciaEstado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (1, N'Córdoba', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (2, N'Buenos Aires', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (3, N'Santa Fe', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (4, N'Mendoza', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (5, N'Neuquén', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (6, N'La Pampa', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (7, N'Santiago del Estero', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (8, N'Catamarca', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (9, N'Misiones', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (10, N'Chubut', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (11, N'Salta', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (12, N'La Rioja', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (13, N'San Luis', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (14, N'Río Negro', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (15, N'Formosa', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (16, N'Entre Ríos', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (17, N'Corrientes', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (18, N'Chaco', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (19, N'Jujuy', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (20, N'Santa Cruz', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (21, N'Tucumán', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (22, N'San Juan', 1)
INSERT [dbo].[ProvinciaEstado] ([idProvinciaEstado], [nombre], [idPais]) VALUES (23, N'Tierra del Fuego', 1)
/****** Object:  Table [dbo].[Asignatura]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Asignatura](
	[idAsignatura] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[idNivelEducativo] [int] NOT NULL,
	[tipo] [varchar](50) NOT NULL,
	[cargaHoraria] [float] NULL,
	[programa] [varchar](200) NULL,
	[reconocimientoPedagogico] [varchar](50) NULL,
	[aporteEstatal] [varchar](50) NULL,
 CONSTRAINT [PK_Asignatura] PRIMARY KEY CLUSTERED 
(
	[idAsignatura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (1, N'Matemática', 4, N'Básica', 6, N'...\Asignatura 1.jpg', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (2, N'Lengua', 4, N'Básica', 6, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (6, N'Educación Física', 4, N'Especial', 2, N'', N'769 - 946 / 46', N'769 - 946 / 46')
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (7, N'Química', 11, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (8, N'Biología', 11, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (10, N'Experiencia en Conjunto', 3, N'Básica', 40, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (14, N'Geografia', 10, N'Básica', 4, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (17, N'Ciencias Sociales', 4, N'Básica', 2, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (18, N'Educ Musical', 4, N'Especial', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (19, N'ID y Convivencia', 4, N'Básica', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (20, N'Educ Plastica', 4, N'Especial', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (21, N'Catequesis', 4, N'Básica', 0, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (22, N'Juego de Trabajo', 1, N'Básica', 40, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (24, N'Higiene y Merienda', 1, N'Básica', 25, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (25, N'Momento literario', 1, N'Básica', 30, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (26, N'Experiencia en Conjunto', 1, N'Básica', 25, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (30, N'Juego de Trabajo', 2, N'Básica', 30, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (31, N'Juego de Trabajo', 3, N'Básica', 40, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (32, N'Higiene y Merienda', 2, N'Básica', 30, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (33, N'Higiene y Merienda', 3, N'Básica', 20, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (34, N'Experiencia en Conjunto', 2, N'Básica', 40, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (35, N'Momento literario', 2, N'Básica', 25, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (36, N'Momento literario', 3, N'Básica', 25, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (37, N'Musica', 1, N'Especial', 50, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (38, N'Musica', 2, N'Especial', 50, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (39, N'Musica', 3, N'Especial', 50, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (40, N'Educ Fisica', 1, N'Especial', 50, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (41, N'Educ Fisica', 2, N'Especial', 50, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (42, N'Educ Fisica', 3, N'Especial', 50, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (43, N'Matemática', 5, N'Básica', 6, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (44, N'Matemática', 6, N'Básica', 6, N'...\Asignatura 44.pdf', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (45, N'Matemática', 7, N'Básica', 5, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (46, N'Matemática', 8, N'Básica', 5, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (47, N'Matemática', 9, N'Básica', 5, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (48, N'Lengua', 5, N'Básica', 6, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (49, N'Lengua', 6, N'Básica', 6, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (50, N'Lengua', 7, N'Básica', 5, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (51, N'Lengua', 8, N'Básica', 5, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (52, N'Lengua', 9, N'Básica', 5, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (53, N'Ciencias Sociales', 5, N'Básica', 2, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (54, N'Ciencias Sociales', 6, N'Básica', 2, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (55, N'Ciencias Sociales', 7, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (56, N'Ciencias Sociales', 8, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (57, N'Ciencias Sociales', 9, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (58, N'Ciencias Naturales', 4, N'Básica', 2, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (59, N'Ciencias Naturales', 5, N'Básica', 2, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (60, N'Ciencias Naturales', 6, N'Básica', 2, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (61, N'Ciencias Naturales', 7, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (62, N'Ciencias Naturales', 8, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (63, N'Ciencias Naturales', 9, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (64, N'Educ Tecnologica', 7, N'Básica', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (65, N'Educ Tecnologica', 8, N'Básica', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (66, N'Educ Tecnologica', 9, N'Básica', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (67, N'ID y Convivencia', 5, N'Básica', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (68, N'ID y Convivencia', 6, N'Básica', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (69, N'Educ Fisica', 4, N'Especial', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (70, N'Educ Fisica', 5, N'Especial', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (71, N'Educ Fisica', 6, N'Especial', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (72, N'Educ Fisica', 7, N'Especial', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (73, N'Educ Fisica', 8, N'Especial', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (74, N'Educ Fisica', 9, N'Especial', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (78, N'Educ Musical', 8, N'Especial', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (79, N'Educ Musical', 9, N'Especial', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (80, N'Educ Plastica', 5, N'Especial', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (81, N'Educ Plastica', 6, N'Especial', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (82, N'Educ Plastica', 7, N'Especial', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (83, N'Educ Plastica', 8, N'Especial', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (84, N'Educ Plastica', 9, N'Especial', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (85, N'Catequesis', 5, N'Básica', 0, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (86, N'Catequesis', 6, N'Básica', 0, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (87, N'Catequesis', 7, N'Básica', 0, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (88, N'Catequesis', 8, N'Básica', 0, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (89, N'Catequesis', 9, N'Básica', 0, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (90, N'Geografía', 12, N'Básica', 4, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (91, N'Geografía', 13, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (92, N'Geografía', 14, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (93, N'Matemática', 10, N'Básica', 5, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (94, N'Matemática', 11, N'Básica', 5, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (95, N'Matemática', 12, N'Básica', 5, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (96, N'Matemática', 13, N'Básica', 4, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (97, N'Matemática', 14, N'Básica', 4, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (98, N'Educación Tecnológica', 10, N'Básica', 4, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (100, N'Matemática', 15, N'Básica', 4, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (101, N'Biología', 10, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (102, N'Biología', 13, N'Básica', 5, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (103, N'Inglés', 10, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (104, N'Inglés', 11, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (105, N'Inglés', 12, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (106, N'Inglés', 13, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (107, N'Inglés', 14, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (108, N'Inglés', 15, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (109, N'Artes Visuales', 10, N'Especial', 0, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (110, N'Artes Visuales', 13, N'Especial', 0, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (111, N'Ciudadanía y Participacion', 10, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (112, N'Ciudadanía y Participacion', 11, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (113, N'Ciudadanía y Política', 15, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (114, N'Lengua y Literatura', 10, N'Básica', 5, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (115, N'Lengua y Literatura', 11, N'Básica', 5, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (116, N'Lengua y Literatura', 12, N'Básica', 5, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (117, N'Lengua y Literatura', 13, N'Básica', 4, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (118, N'Lengua y Literatura', 14, N'Básica', 4, N'', NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (119, N'Lengua y Literatura', 15, N'Básica', 4, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (120, N'Física', 10, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (121, N'Física', 12, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (122, N'Física', 14, N'Básica', 5, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (123, N'Catequesis', 10, N'Básica', 2, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (124, N'Catequesis', 11, N'Básica', 2, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (125, N'Catequesis', 12, N'Básica', 2, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (126, N'Educación Física ', 10, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (127, N'Educación Física ', 11, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (128, N'Educación Física ', 12, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (129, N'Educación Física ', 13, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (130, N'Educación Física ', 14, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (131, N'Educación Física ', 15, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (132, N'Historia', 11, N'Básica', 5, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (133, N'Historia', 12, N'Básica', 4, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (134, N'Historia', 13, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (135, N'Historia', 14, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (136, N'Música', 11, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (137, N'Música', 12, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (138, N'Música', 14, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (139, N'Química', 12, N'Básica', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (140, N'Química', 15, N'Básica', 5, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (141, N'Proyecto Pastoral', 13, N'Especial', 2, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (142, N'Sistemas Agro Ambientales', 13, N'Especial', 6, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (143, N'Administración de las Organización Agro Ambientale', 13, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (144, N'Ecología', 13, N'Especial', 2, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (145, N'Ecología', 14, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (146, N'Ciencias de la Tierra', 14, N'Especial', 4, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (147, N'Psicología', 14, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (148, N'Filosofía', 15, N'Especial', 0, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (149, N'Teatro', 15, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (150, N'Biotecnologia', 15, N'Especial', 0, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (151, N'Ambiente y desarrollo Social', 15, N'Especial', 4, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (152, N'Plástica', 10, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (153, N'Plástica', 12, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (154, N'Educación Tecnológica', 11, N'Básica', 4, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (155, N'Educación Tecnológica', 12, N'Básica', 4, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (156, N'Plástica', 13, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (157, N'Sistemas Agro Ambientales', 14, N'Básica', 6, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (158, N'Sistemas Agro Ambientales', 15, N'Básica', 6, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (159, N'Proyecto Pastoral', 14, N'Básica', 2, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (160, N'Proyecto Pastoral', 15, N'Básica', 2, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (161, N'Economía y Gestión Agro Ambiental', 15, N'Especial', 4, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (162, N'Formación para la Vida y el Trabajo', 13, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (163, N'Formación para la Vida y el Trabajo', 14, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (164, N'Formación para la Vida y el Trabajo', 15, N'Especial', 3, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (165, N'Catequesis', 1, N'Básica', 0, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (166, N'Catequesis', 2, N'Básica', 0, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (167, N'Catequesis', 3, N'Básica', 0, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (168, N'Educ Musical', 5, N'Especial', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (169, N'Educ Musical', 6, N'Especial', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (170, N'Educ Musical', 7, N'Especial', 1, N'', NULL, NULL)
INSERT [dbo].[Asignatura] ([idAsignatura], [nombre], [idNivelEducativo], [tipo], [cargaHoraria], [programa], [reconocimientoPedagogico], [aporteEstatal]) VALUES (172, N'Formación para la Vida y el Trabajo', 12, N'Básica', 3, N'', NULL, NULL)
/****** Object:  Table [dbo].[Cargo]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cargo](
	[idCargo] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[codigo] [varchar](20) NULL,
	[nivelEducativo] [varchar](50) NOT NULL,
	[idNivelEducativo] [int] NULL,
	[reconocimientoPedagogico] [varchar](50) NULL,
	[aporteEstatal] [varchar](50) NULL,
 CONSTRAINT [PK_Cargo] PRIMARY KEY CLUSTERED 
(
	[idCargo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (1, N'Director', N'1ra Cat. 13 255', N'Inicial', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (2, N'Director', N'2da Cat. 13 260', N'Inicial', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (3, N'Director', N'3ra Cat. 13 265', N'Inicial', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (4, N'Maestro de Sala', N'13 480', N'Inicial', 1, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (5, N'Maestro de Ed. Física', N'13 515', N'Inicial', 1, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (6, N'Maestro de Ed. Musical', N'13 515', N'Inicial', 1, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (7, N'Maestro de Sala', N'13 480', N'Inicial', 2, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (8, N'Maestro de Ed. Física', N'13 515', N'Inicial', 2, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (9, N'Maestro de Ed. Musical', N'13 515', N'Inicial', 2, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (10, N'Maestro de Sala', N'13 480', N'Inicial', 3, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (11, N'Maestro de Ed. Física', N'13 515', N'Inicial', 3, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (12, N'Maestro de Ed. Musical', N'13 515', N'Inicial', 3, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (13, N'Director', N'1ra Cat. 13 255', N'Primario', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (14, N'Director', N'2da Cat. 13 260', N'Primario', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (15, N'Director', N'3ra Cat. 13 265', N'Primario', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (16, N'Vicedirector', N'13 270', N'Primario', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (17, N'Secretaria/o Docente', N'', N'Primario', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (18, N'Maestro de Grado', N'13 475', N'Primario', 4, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (19, N'Maestro de Ed. Física', N'13 515', N'Primario', 4, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (20, N'Maestro de Ed. Musical', N'13 515', N'Primario', 4, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (21, N'Maestro de Ed. Plástica', N'13 515', N'Primario', 4, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (22, N'Maestro de Grado', N'13 475', N'Primario', 5, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (23, N'Maestro de Ed. Física', N'13 515', N'Primario', 5, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (24, N'Maestro de Ed. Musical', N'13 515', N'Primario', 5, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (25, N'Maestro de Ed. Plástica', N'13 515', N'Primario', 5, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (26, N'Maestro de Grado', N'13 475', N'Primario', 6, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (27, N'Maestro de Ed. Física', N'13 515', N'Primario', 6, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (28, N'Maestro de Ed. Musical', N'13 515', N'Primario', 6, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (29, N'Maestro de Ed. Plástica', N'13 515', N'Primario', 6, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (30, N'Maestro de Grado', N'13 475', N'Primario', 7, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (31, N'Maestro de Ed. Física', N'13 515', N'Primario', 7, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (32, N'Maestro de Ed. Musical', N'13 515', N'Primario', 7, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (33, N'Maestro de Ed. Plástica', N'13 515', N'Primario', 7, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (34, N'Maestro de Grado', N'13 475', N'Primario', 8, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (35, N'Maestro de Ed. Física', N'13 515', N'Primario', 8, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (36, N'Maestro de Ed. Musical', N'13 515', N'Primario', 8, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (37, N'Maestro de Ed. Plástica', N'13 515', N'Primario', 8, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (38, N'Maestro de Grado', N'13 475', N'Primario', 9, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (39, N'Maestro de Ed. Física', N'13 515', N'Primario', 9, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (40, N'Maestro de Ed. Musical', N'13 515', N'Primario', 9, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (41, N'Maestro de Ed. Plástica', N'13 515', N'Primario', 9, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (42, N'Maestra de Ed Tecnologica', N'13 515', N'Primario', 4, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (43, N'Maestro de Ed Tecnologica', N'13515', N'Primario', 7, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (44, N'Maestro de Ed Tecnologica', N'13515', N'Primario', 8, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (45, N'Maestro de Ed Tecnologica', N'13515', N'Primario', 9, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (46, N'Vicedirector', N'13270', N'Inicial', 1, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (47, N'Vicedirector', N'13270', N'Inicial', 2, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (48, N'Vicedirector', N'13270', N'Inicial', 3, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (49, N'DIRECTORA', N'13160', N'Secundario', NULL, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (50, N'Maestro de Secundario', N'13910', N'Secundario', 10, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (51, N'Maestro de Secundario', N'13910', N'Secundario', 15, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (52, N'Maestro de Secundario', N'13910', N'Secundario', 13, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (53, N'Maestro de Secundario', N'13910', N'Secundario', 14, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (54, N'Maestro de Secundario', N'13910', N'Secundario', 11, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (55, N'Maestro de Secundario', N'13910', N'Secundario', 12, NULL, NULL)
INSERT [dbo].[Cargo] ([idCargo], [nombre], [codigo], [nivelEducativo], [idNivelEducativo], [reconocimientoPedagogico], [aporteEstatal]) VALUES (56, N'Preceptora', N'13520', N'Secundario', 10, NULL, NULL)
/****** Object:  Table [dbo].[Aula]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aula](
	[idAula] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[capacidad] [int] NOT NULL,
	[idEstado] [int] NOT NULL,
 CONSTRAINT [PK_Aula] PRIMARY KEY CLUSTERED 
(
	[idAula] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Aula] ([idAula], [nombre], [capacidad], [idEstado]) VALUES (1, N'007', 30, 9)
INSERT [dbo].[Aula] ([idAula], [nombre], [capacidad], [idEstado]) VALUES (2, N'008', 30, 9)
INSERT [dbo].[Aula] ([idAula], [nombre], [capacidad], [idEstado]) VALUES (3, N'009', 30, 9)
INSERT [dbo].[Aula] ([idAula], [nombre], [capacidad], [idEstado]) VALUES (4, N'011', 45, 9)
INSERT [dbo].[Aula] ([idAula], [nombre], [capacidad], [idEstado]) VALUES (5, N'012', 45, 9)
INSERT [dbo].[Aula] ([idAula], [nombre], [capacidad], [idEstado]) VALUES (7, N'001', 50, 9)
INSERT [dbo].[Aula] ([idAula], [nombre], [capacidad], [idEstado]) VALUES (8, N'002', 15, 9)
INSERT [dbo].[Aula] ([idAula], [nombre], [capacidad], [idEstado]) VALUES (9, N'003', 20, 9)
INSERT [dbo].[Aula] ([idAula], [nombre], [capacidad], [idEstado]) VALUES (11, N'013', 50, 9)
INSERT [dbo].[Aula] ([idAula], [nombre], [capacidad], [idEstado]) VALUES (13, N'010', 20, 9)
INSERT [dbo].[Aula] ([idAula], [nombre], [capacidad], [idEstado]) VALUES (17, N'004', 50, 9)
INSERT [dbo].[Aula] ([idAula], [nombre], [capacidad], [idEstado]) VALUES (18, N'005', 50, 9)
INSERT [dbo].[Aula] ([idAula], [nombre], [capacidad], [idEstado]) VALUES (19, N'006', 50, 9)
/****** Object:  Table [dbo].[Curso]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Curso](
	[idCurso] [int] NOT NULL,
	[cicloLectivo] [int] NOT NULL,
	[idNivelEducativo] [int] NOT NULL,
	[seccion] [varchar](10) NULL,
	[idTurno] [int] NOT NULL,
	[idAula] [int] NOT NULL,
	[idEstado] [int] NOT NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[idCurso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Curso] ([idCurso], [cicloLectivo], [idNivelEducativo], [seccion], [idTurno], [idAula], [idEstado]) VALUES (1, 2014, 1, N'A', 2, 7, 12)
INSERT [dbo].[Curso] ([idCurso], [cicloLectivo], [idNivelEducativo], [seccion], [idTurno], [idAula], [idEstado]) VALUES (2, 2014, 2, N'A', 2, 8, 12)
INSERT [dbo].[Curso] ([idCurso], [cicloLectivo], [idNivelEducativo], [seccion], [idTurno], [idAula], [idEstado]) VALUES (3, 2014, 3, N'A', 2, 9, 12)
INSERT [dbo].[Curso] ([idCurso], [cicloLectivo], [idNivelEducativo], [seccion], [idTurno], [idAula], [idEstado]) VALUES (4, 2014, 4, N'U', 2, 17, 12)
INSERT [dbo].[Curso] ([idCurso], [cicloLectivo], [idNivelEducativo], [seccion], [idTurno], [idAula], [idEstado]) VALUES (7, 2014, 5, N'U', 2, 1, 12)
INSERT [dbo].[Curso] ([idCurso], [cicloLectivo], [idNivelEducativo], [seccion], [idTurno], [idAula], [idEstado]) VALUES (9, 2014, 6, N'U', 2, 3, 12)
INSERT [dbo].[Curso] ([idCurso], [cicloLectivo], [idNivelEducativo], [seccion], [idTurno], [idAula], [idEstado]) VALUES (10, 2014, 7, N'U', 2, 13, 12)
INSERT [dbo].[Curso] ([idCurso], [cicloLectivo], [idNivelEducativo], [seccion], [idTurno], [idAula], [idEstado]) VALUES (11, 2014, 8, N'U', 2, 4, 12)
INSERT [dbo].[Curso] ([idCurso], [cicloLectivo], [idNivelEducativo], [seccion], [idTurno], [idAula], [idEstado]) VALUES (13, 2014, 10, N'U', 1, 7, 12)
INSERT [dbo].[Curso] ([idCurso], [cicloLectivo], [idNivelEducativo], [seccion], [idTurno], [idAula], [idEstado]) VALUES (16, 2014, 11, N'U', 1, 8, 12)
INSERT [dbo].[Curso] ([idCurso], [cicloLectivo], [idNivelEducativo], [seccion], [idTurno], [idAula], [idEstado]) VALUES (18, 2014, 12, N'U', 1, 9, 12)
INSERT [dbo].[Curso] ([idCurso], [cicloLectivo], [idNivelEducativo], [seccion], [idTurno], [idAula], [idEstado]) VALUES (19, 2014, 13, N'U', 1, 17, 12)
INSERT [dbo].[Curso] ([idCurso], [cicloLectivo], [idNivelEducativo], [seccion], [idTurno], [idAula], [idEstado]) VALUES (20, 2014, 14, N'U', 1, 18, 12)
INSERT [dbo].[Curso] ([idCurso], [cicloLectivo], [idNivelEducativo], [seccion], [idTurno], [idAula], [idEstado]) VALUES (22, 2013, 4, N'A', 1, 1, 12)
INSERT [dbo].[Curso] ([idCurso], [cicloLectivo], [idNivelEducativo], [seccion], [idTurno], [idAula], [idEstado]) VALUES (23, 2013, 11, N'C', 2, 13, 12)
INSERT [dbo].[Curso] ([idCurso], [cicloLectivo], [idNivelEducativo], [seccion], [idTurno], [idAula], [idEstado]) VALUES (27, 2014, 9, N'U', 2, 5, 12)
INSERT [dbo].[Curso] ([idCurso], [cicloLectivo], [idNivelEducativo], [seccion], [idTurno], [idAula], [idEstado]) VALUES (28, 2014, 15, N'U', 1, 19, 12)
/****** Object:  Table [dbo].[Localidad]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Localidad](
	[idLocalidad] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[idProvinciaEstado] [int] NULL,
 CONSTRAINT [PK_Localidad] PRIMARY KEY CLUSTERED 
(
	[idLocalidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvinciaEstado]) VALUES (1, N'Córdoba', 1)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvinciaEstado]) VALUES (2, N'Balnearia', 1)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvinciaEstado]) VALUES (3, N'Villa Carlos Paz', 1)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvinciaEstado]) VALUES (4, N'Villa María', 1)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvinciaEstado]) VALUES (5, N'Capilla del Monte', 1)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvinciaEstado]) VALUES (6, N'Mina Clavero', 1)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvinciaEstado]) VALUES (7, N'Etruria', 1)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvinciaEstado]) VALUES (8, N'Los Cocos', 1)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvinciaEstado]) VALUES (9, N'Santa Rosa de Rio Primero', 1)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvinciaEstado]) VALUES (10, N'Miramar', 1)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvinciaEstado]) VALUES (11, N'Marull', 1)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvinciaEstado]) VALUES (12, N'La Para', 1)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvinciaEstado]) VALUES (13, N'Altos de Chipion', 1)
INSERT [dbo].[Localidad] ([idLocalidad], [nombre], [idProvinciaEstado]) VALUES (14, N'Venado Tuerto', 3)
/****** Object:  Table [dbo].[Barrio]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Barrio](
	[idBarrio] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[codigoPostal] [varchar](50) NOT NULL,
	[idLocalidad] [int] NOT NULL,
 CONSTRAINT [PK_Barrio] PRIMARY KEY CLUSTERED 
(
	[idBarrio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (1, N'Nueva Córdoba', N'5000', 1)
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (3, N'Alta Córdoba', N'5000', 1)
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (4, N'Centro', N'5000', 1)
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (5, N'Cerro de las Rosas', N'5000', 1)
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (6, N'Jardín', N'5000', 1)
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (7, N'General Bustos', N'5001', 1)
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (8, N'Los Gigantes', N'5002', 1)
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (9, N'Villa Cabrera', N'5000', 1)
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (10, N'Villa Belgrano', N'5147', 1)
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (11, N'Lomas de San Martin', N'5008', 1)
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (12, N'Costa Sur', N'5152', 3)
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (14, N'Balnearia', N'5141', 2)
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (15, N'Centro', N'0', 9)
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (16, N'Centro', N'0', 10)
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (17, N'Otro', N'0', 11)
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (18, N'Centro', N'0', 12)
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (19, N'otro', N'0', 13)
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (20, N'Zona Rural', N'0', 2)
INSERT [dbo].[Barrio] ([idBarrio], [nombre], [codigoPostal], [idLocalidad]) VALUES (21, N'Zona Rural', N'0', 14)
/****** Object:  Table [dbo].[Domicilio]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Domicilio](
	[idDomicilio] [int] NOT NULL,
	[calle] [varchar](50) NOT NULL,
	[numero] [varchar](10) NOT NULL,
	[piso] [varchar](10) NULL,
	[departamento] [varchar](10) NULL,
	[idBarrio] [int] NOT NULL,
 CONSTRAINT [PK_Domicilio] PRIMARY KEY CLUSTERED 
(
	[idDomicilio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (3, N'Velez Sarfield', N'663', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (4, N'E. Franchin', N'153', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (5, N'L.M. Alem', N'739', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (6, N'Velez Sarfield', N'303', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (7, N'Buenos Aires y Ameghino', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (8, N'Amadeo Sabatiini', N'610', N'', N'', 16)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (9, N'9 de Julio ', N'263', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (10, N'R. Nuñez', N'350', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (11, N'Cordoba', N'124', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (12, N'Zona Rural', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (13, N'E. Frachin', N'153', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (14, N'L.M Alem', N'739', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (15, N'Velez Sarfield', N'303', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (16, N'Buenos Aires y Ameghino', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (17, N'Amadeo Sabattini', N'610', N'', N'', 16)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (18, N'9 De Julio ', N'263', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (19, N'Rafael Nuñez', N'350', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (20, N'Cordoba', N'124', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (21, N'Zona Rural', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (22, N'J.M. Estrada', N'220', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (23, N'J.M. Estrada', N'220', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (24, N'Rivadavia', N'343', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (25, N'Florentino Ameghino ', N'286', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (26, N'Av. Vaca Narvaja ', N'267', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (27, N'F. Ameghino', N'11', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (28, N'Alem y S. Peña', N'0', N'', N'', 17)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (29, N'Rivera Indarte', N'364', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (30, N'S. Tarditti', N'165', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (31, N'J.M. Estrada', N'140', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (32, N'Sarmineto ', N'265', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (33, N'Bv. Belgrano', N'687', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (34, N'Ruta Pcial3 ', N'KM1', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (35, N'Ruta Prov. 3 Km1', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (36, N'Mar chiquita', N'317', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (37, N'Av. T Cornejo', N'782', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (38, N'V. Sarfield', N'643', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (39, N'Buenos Aires', N'357', N'', N'', 16)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (40, N'Rivadavia ', N'425', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (41, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (42, N'Villa maine', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (43, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (44, N'Alvear', N'166', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (45, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (46, N'A. Soria', N'31', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (47, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (48, N'Sarmiento ', N'399', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (49, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (50, N'Rivera Indarte', N'245', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (51, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (52, N'R. Nuñez ', N'388', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (53, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (54, N'Las heras ', N'660', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (55, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (56, N'E. Franchin', N'73', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (57, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (58, N'Urquiza ', N'531', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (59, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (60, N'Mar chiquita ', N'399566', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (61, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (62, N'San martin ', N'450', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (63, N'Las Heras', N'879', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (64, N'Gral Paz', N'498', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (65, N'BV. A. Maine', N'250', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (66, N'Av. Tristan Cornejo', N'192', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (67, N'Velez Sarfield y N. Peña', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (68, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (69, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (70, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (71, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (72, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (73, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (74, N'J.M. Estrada', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (75, N'Lamadrid ', N'381', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (76, N'Los Flamencos', N'642', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (77, N'9 de Julio ', N'263', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (78, N'Mar chiquita', N'233', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (79, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (80, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (81, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (82, N'J.M. Estrada', N'220', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (83, N'Las Heras ', N'426', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (84, N'Mar chiquita ', N'265', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (85, N'Congreso', N'172', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (86, N'Maipu', N'280', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (87, N'San Jose', N'173', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (88, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (89, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (90, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (91, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (92, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (93, N'Buenos Aires', N'255', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (94, N'E. Franchin', N'43', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (95, N'Bolivar', N'48', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (96, N'Dr. Gomez de la F. ', N'493', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (97, N'Belgrano', N'434', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (98, N'Jose Ingenieros', N'174', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (99, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (100, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (101, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (102, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (103, N'0', N'0', N'', N'', 14)
GO
print 'Processed 100 total records'
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (104, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (105, N'Jorge Bosco', N'315', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (106, N'Mar Chiquita', N'566', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (107, N'Las Heras', N'879', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (108, N'Zona Rural', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (109, N'Ruta 3 Km 1', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (110, N'Maipu', N'280', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (111, N'0', N'0', N'0', N'0', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (112, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (113, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (114, N'V Sarfield', N'605', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (115, N'Sto. Cabrera', N'133', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (116, N'Falucho', N'81', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (117, N'Rambla', N'24', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (118, N'V Sarfield ', N'479', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (119, N'San Jose', N'530', N'', N'3', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (120, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (121, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (122, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (123, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (124, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (125, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (126, N'0', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (127, N'asdsad', N'1', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (128, N'Estrada Jose Manuel ', N'484', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (129, N'Quinta', N'68', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (130, N'España', N'240', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (131, N'Sarmiento', N'252', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (132, N'Las Moras', N'435', N'', N'', 16)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (133, N'Urquiza', N'70', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (134, N'Urquiza', N'70', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (135, N'Av. Tristán Cornejo ', N'314', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (136, N'Av.Tris.Cornejo ', N'314', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (137, N'Av. Tristán Cornejo ', N'362', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (138, N'Velez Sarsfield ', N'105', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (139, N'Buenos Aires', N'287', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (140, N'Rivadavia', N'498', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (141, N'Zona Rural ', N'0', N'', N'', 17)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (142, N'25 de Mayo ', N'48', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (143, N'Mar Chiquita ', N'265', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (144, N'Alvear ', N'166', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (145, N'Buenos Aires ', N'287', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (146, N'José Ingenieros ', N'295', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (147, N'Dalla Fontana', N'500', N'', N'', 19)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (148, N'Córdoba ', N'341', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (149, N'Urquiza ', N'70', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (150, N'Mar Chiquita ', N'265', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (151, N'Av. Vaca Narvaja ', N'267', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (152, N'Velez Sarsfield', N'184', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (153, N'Bv. Antonio Maine', N'366', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (154, N'Rivadavia ', N'365', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (155, N'Mar Chiquita ', N'233', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (156, N'25 de Mayo', N'366', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (157, N'Av. Tristán Cornejo ', N'470', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (158, N'Maipu ', N'170', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (159, N'Av. Libertad ', N'485', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (160, N'San lorenzo ', N'435', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (161, N'San Juan ', N'296', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (162, N'Urquiza', N'533', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (163, N'Jose Ingenieros ', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (164, N'Velez Sarfield ', N'374', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (165, N'España', N'95', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (166, N'Las Heras', N'702', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (167, N'Jose Hernandez', N'51', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (168, N'Maiup', N'170', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (169, N'Jose Ingenieros', N'195', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (170, N'Jose Ingenieros', N'174', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (171, N'Jose Manuel Estrada', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (172, N'Rivadavia', N'430', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (173, N'Jose Ingenieros', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (174, N'Bv. Jorge Bosco', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (175, N'Rivera Indarte ', N'58', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (176, N'Villa Maine', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (177, N'Las Heraas', N'879', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (178, N'Las Heras', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (179, N'Guido Arias', N'291', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (180, N'Quinta', N'68', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (181, N'Velez Sarfield', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (182, N'España', N'240', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (183, N'Calle Publica -  Villa Maine', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (184, N'Tristan Cornejo', N'485', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (185, N'Jeronimo Cortez', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (186, N'San Juan', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (187, N'Misiones', N'173', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (188, N'Jose Ingenieros', N'184', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (189, N'Mitre', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (190, N'9 de Julio', N'101', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (191, N'Cordoba', N'10', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (192, N'25 de Mayo', N'', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (193, N'Jose Manuel Estrada', N'373', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (194, N'Las Heras', N'583', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (195, N'Cordoba', N'395', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (196, N'Mar Chiquita', N'265', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (197, N'Sarmiento', N'187', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (198, N'Juan B. Justo', N'385', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (199, N'', N'', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (200, N'Las Heras', N'178', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (201, N'', N'', N'', N'', 20)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (202, N'', N'', N'', N'', 20)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (203, N'Sarmiento', N'48', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (204, N'Mar Chiquita bis', N'22', N'', N'', 14)
GO
print 'Processed 200 total records'
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (205, N'Dr. Jose Nieto Peña', N'46', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (206, N'Velez Sarfield', N'230', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (207, N'', N'', N'', N'', 21)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (208, N'Jose Manuel Estrada', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (209, N'Mar Chiquita bis', N'22', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (210, N'Urquiza', N'533', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (211, N'Rambla', N'24', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (212, N'San Jeronimo', N'0', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (213, N'Misiones', N'173', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (214, N'25 ed Mayo', N'56', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (215, N'9 de Julio', N'346', N'', N'', 14)
INSERT [dbo].[Domicilio] ([idDomicilio], [calle], [numero], [piso], [departamento], [idBarrio]) VALUES (216, N'Nieto Peña y Velez Sarfield ', N'0', N'', N'', 14)
/****** Object:  Table [dbo].[PersonalMaestranza]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PersonalMaestranza](
	[legajoPersonalMaestranza] [int] NOT NULL,
	[nroDocumento] [int] NOT NULL,
	[sexo] [varchar](50) NOT NULL,
	[idEstadoCivil] [int] NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[lugarNacimiento] [varchar](50) NULL,
	[fechaNacimiento] [datetime] NOT NULL,
	[nacionalidad] [varchar](50) NULL,
	[observaciones] [varchar](200) NULL,
	[idDomicilio] [int] NOT NULL,
	[telefonoFijo] [varchar](50) NULL,
	[telefonoMovil] [varchar](50) NULL,
	[correoElectronico] [varchar](50) NULL,
	[fechaInicioActividad] [datetime] NOT NULL,
	[fechaFinActividad] [datetime] NULL,
	[cuil] [varchar](15) NOT NULL,
	[idPuestoTrabajo] [int] NOT NULL,
	[curriculumVitae] [varchar](200) NULL,
	[idEstado] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
 CONSTRAINT [PK_NoDocente] PRIMARY KEY CLUSTERED 
(
	[legajoPersonalMaestranza] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PersonalMaestranza] ([legajoPersonalMaestranza], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idPuestoTrabajo], [curriculumVitae], [idEstado], [idUsuario]) VALUES (1001, 11894426, N'Femenino', 22, N'Jaime', N'Alcira Belinda ', N'Villa concepción del tío', CAST(0x00004F2A00000000 AS DateTime), N'', N'', 128, N'03563-421074', N'03563-15400814', N'', CAST(0x0000865800000000 AS DateTime), NULL, N'27-11894426', 8, N'', 18, 1001)
INSERT [dbo].[PersonalMaestranza] ([legajoPersonalMaestranza], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idPuestoTrabajo], [curriculumVitae], [idEstado], [idUsuario]) VALUES (1002, 17583126, N'Femenino', 21, N'Ortiz', N'Adriana maría del valle', N'Cordoba', CAST(0x00005DEC00000000 AS DateTime), N'', N'', 129, N'', N'03563-15407317', N'', CAST(0x00009D4B00000000 AS DateTime), NULL, N'27-17583126', 8, N'', 18, 1002)
INSERT [dbo].[PersonalMaestranza] ([legajoPersonalMaestranza], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idPuestoTrabajo], [curriculumVitae], [idEstado], [idUsuario]) VALUES (1003, 20531541, N'Femenino', 21, N'Martín', N'Marcela adriana', N'Balnearia', CAST(0x000061FE00000000 AS DateTime), N'Argentina', N'', 130, N'', N'0356315410417', N'', CAST(0x00009ED700000000 AS DateTime), NULL, N'27-20531541', 8, N'', 18, 1003)
/****** Object:  Table [dbo].[Tutor]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tutor](
	[idTutor] [int] NOT NULL,
	[nroDocumento] [int] NOT NULL,
	[sexo] [varchar](50) NOT NULL,
	[idEstadoCivil] [int] NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[lugarNacimiento] [varchar](50) NULL,
	[fechaNacimiento] [datetime] NOT NULL,
	[nacionalidad] [varchar](50) NULL,
	[ocupacion] [varchar](100) NOT NULL,
	[observaciones] [varchar](200) NULL,
	[idDomicilio] [int] NOT NULL,
	[telefonoFijo] [varchar](50) NULL,
	[telefonoMovil] [varchar](50) NULL,
	[correoElectronico] [varchar](50) NULL,
 CONSTRAINT [PK_Tutor] PRIMARY KEY CLUSTERED 
(
	[idTutor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (2, 17974261, N'Femenino', 21, N'Maidana', N'Marcela', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Docente', N'', 13, N'420956', N'15409155', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (3, 26816945, N'Masculino', 21, N'Borsi', N'German', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Docente', N'', 14, N'', N'15408384', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (4, 27869097, N'Femenino', 21, N'Gonzalez', N'Silvana', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Docente', N'', 15, N'', N'15402540', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (5, 22248876, N'Femenino', 21, N'Murature', N'Laura Rosana', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Empelada', N'', 16, N'420047', N'15407206', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (6, 18535380, N'Femenino', 21, N'Monesterolo', N'Mariela', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Docente', N'', 17, N'493225', N'15408668', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (7, 20541354, N'Masculino', 21, N'Monteverdi', N'Fabian', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Apicultor', N'', 18, N'', N'15563001', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (8, 21693276, N'Masculino', 21, N'Pagnuco', N'Mario', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Empleado', N'', 19, N'421508', N'15492453', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (9, 25633389, N'Femenino', 21, N'Gabrielloni', N'Romina R', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Ama de Casa', N'', 20, N'421314', N'15491239', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (10, 23731891, N'Masculino', 21, N'Pontoni', N'Oscar', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Comerciante', N'', 21, N'', N'15409328', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (11, 23062436, N'Femenino', 21, N'Carnero', N'Elvira Esther', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Docente', N'', 23, N'', N'15408468', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (12, 26129990, N'Femenino', 21, N'Mendez', N'Cecilia', N'', CAST(0x00006DDC00000000 AS DateTime), N'Argentina', N'Contadora', N'', 35, N'', N'15491412', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (13, 29607407, N'Femenino', 21, N'Calloni', N'Salome', N'', CAST(0x0000A13900000000 AS DateTime), N'Argentina', N'Ama de casa', N'', 41, N'', N'15404571', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (14, 36366211, N'Femenino', 21, N'Cichero', N'Stefania Vanesa', N'', CAST(0x0000A13900000000 AS DateTime), N'Argentina', N'Ama de casa', N'', 43, N'', N'15408536', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (15, 20541335, N'Femenino', 21, N'Peiretti', N'Mariela Esther', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Docente', N'', 45, N'', N'15411183', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (16, 28525986, N'Femenino', 21, N'Arborio', N'Maria Florencia', N'', CAST(0x0000A13900000000 AS DateTime), N'Argentina', N'Ama de casa', N'', 47, N'', N'15563445', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (17, 34970150, N'Femenino', 21, N'Quinteros ', N'Rodrigo Gonzalo', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Empleado', N'', 49, N'', N'15412141', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (18, 24653553, N'Masculino', 21, N'Quiñones', N'Miguel Angel', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Empleado', N'', 51, N'', N'15407277', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (19, 29921707, N'Femenino', 21, N'Godoy', N'Alicia Maria', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Empleada', N'', 53, N'', N'15494048', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (20, 30112766, N'Femenino', 21, N'Contrera', N'Maria Sol', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Empleada', N'', 55, N'', N'15407445', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (21, 30332446, N'Femenino', 21, N'Herrera', N'Maria Jose', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Profesora', N'', 57, N'', N'15403981', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (22, 22995188, N'Femenino', 21, N'Grazini ', N'Monica Analia', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Ama de casa', N'', 59, N'', N'15405645', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (23, 24037854, N'Femenino', 21, N'Podio ', N'Julieta Soledad', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Contadora', N'', 61, N'', N'15404892', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (24, 24653562, N'Femenino', 21, N'Peralta', N'Miriam', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Empleada domestica', N'', 68, N'', N'15403427', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (25, 24040410, N'Femenino', 21, N'Añaños', N'Maria de los Angeles', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Ama de casa', N'', 69, N'427058', N'', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (26, 29883082, N'Masculino', 21, N'Bertorello', N'Damian', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Mecanico', N'', 70, N'', N'15407185', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (27, 1, N'Femenino', 21, N'Bernardini', N'Paola', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'nada', N'', 71, N'421275', N'', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (28, 30623728, N'Femenino', 21, N'Salusso ', N'Mariana', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Ama de casa', N'', 72, N'420257', N'', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (29, 27869070, N'Femenino', 21, N'Fierro', N'Jorge', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Empleado', N'', 73, N'', N'15402671', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (30, 27954827, N'Femenino', 21, N'Munighini', N'Julia', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Empleada', N'', 79, N'', N'15403294', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (31, 16079977, N'Femenino', 21, N'Toldo', N'Ines', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Docente', N'', 80, N'', N'15400841', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (32, 25309595, N'Femenino', 21, N'Furrer', N'Mariela', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Docente', N'', 81, N'', N'0356215516204', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (33, 16733871, N'Masculino', 21, N'Bertuzzi', N'Luis', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Chapista', N'', 88, N'420784', N'', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (34, 24037864, N'Masculino', 21, N'Cabrale', N'Juan', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Martillero Publico', N'', 89, N'431367', N'15406513', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (35, 27869037, N'Femenino', 21, N'Ludueña', N'Maria Laura', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Empleada', N'', 90, N'420854', N'15408798', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (36, 21693254, N'Femenino', 21, N'Delgado ', N'Maria de los Angeles', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Empleada', N'', 91, N'', N'15412724', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (37, 24772416, N'Femenino', 21, N'Bacile', N'Ana Maria', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Docente', N'', 92, N'', N'15403196', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (38, 26655071, N'Femenino', 21, N'Maidana', N'Patricia', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Ama de casa', N'', 99, N'420714', N'15402345', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (39, 24037888, N'Femenino', 21, N'Andreotto', N'Karina', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Empleada', N'', 100, N'', N'15491221', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (40, 24037882, N'Masculino', 21, N'Bosco', N'Flavio', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Empleado', N'', 101, N'', N'15400974', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (41, 24883115, N'Femenino', 21, N'Caceres', N'Fernanda', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Docente', N'', 102, N'', N'15406231', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (42, 26693767, N'Femenino', 21, N'Listelo', N'Marisel', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Empleada', N'', 103, N'', N'15404845', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (43, 4, N'Masculino', 21, N'Chiaretta', N'Marcelo', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Empleado', N'', 104, N'420981', N'15405622', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (44, 36366243, N'Femenino', 22, N'Romero ', N'Dayna Silvana', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Ama de casa', N'', 111, N'', N'15406229', N'dayanaRomero@gmail.com')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (45, 16073642, N'Femenino', 21, N'Tarditti', N'Elena', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Docente', N'', 112, N'', N'15412919', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (46, 31268173, N'Femenino', 21, N'Tarditti', N'Mariana', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Docente', N'', 113, N'', N'15404598', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (47, 28582488, N'Femenino', 21, N'Peyronel', N'Marilina', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Ama de casa', N'', 120, N'', N'15408401', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (48, 21019447, N'Masculino', 21, N'Castellano', N'Silvio', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Empleado', N'', 121, N'', N'15413736', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (49, 20075392, N'Masculino', 21, N'Corvera', N'Marcelo', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Emopleado Rural', N'', 122, N'', N'15401706', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (50, 24691498, N'Femenino', 21, N'Monsalvo', N'Maria de los Angeles', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Ama de casa', N'', 123, N'', N'15494952', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (51, 25545034, N'Femenino', 21, N'Grant', N'Romina', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Docente', N'', 124, N'420968', N'15410907', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (52, 26816931, N'Masculino', 21, N'Ludueña', N'Mario', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Pintor', N'', 125, N'', N'15403020', N'')
INSERT [dbo].[Tutor] ([idTutor], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [ocupacion], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico]) VALUES (53, 31837989, N'Femenino', 21, N'Sartoris', N'Andrea', N'', CAST(0x0000A13900000000 AS DateTime), N'', N'Ama de casa', N'', 126, N'421193', N'15406913', N'')
/****** Object:  Table [dbo].[Alumno]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumno](
	[legajoAlumno] [int] NOT NULL,
	[nroDocumento] [int] NOT NULL,
	[sexo] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[lugarNacimiento] [varchar](50) NULL,
	[fechaNacimiento] [datetime] NOT NULL,
	[nacionalidad] [varchar](50) NULL,
	[observaciones] [varchar](200) NULL,
	[idDomicilio] [int] NOT NULL,
	[telefonoFijo] [varchar](50) NULL,
	[telefonoMovil] [varchar](50) NULL,
	[correoElectronico] [varchar](50) NULL,
	[idEstado] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[legajoAlumno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100002, 44432853, N'Masculino', N'Bertuzzi', N'Lautaro Joaquin', N'', CAST(0x000092A600000000 AS DateTime), N'', N'', 4, N'', N'', N'', 2, 100002)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100003, 44472148, N'Masculino', N'Borsi', N'Joaquin German', N'Santa Rosa de Rio Primero', CAST(0x000092FB00000000 AS DateTime), N'', N'', 5, N'', N'', N'', 2, 100003)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100004, 44296507, N'Masculino', N'Castillo', N'Lucian Joel', N'Balnearia', CAST(0x0000925600000000 AS DateTime), N'', N'', 6, N'', N'', N'', 2, 100004)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100005, 44551516, N'Masculino', N'Demaria', N'Gaston Nicolas', N'Balnearia ', CAST(0x000092F600000000 AS DateTime), N'', N'', 7, N'', N'', N'', 2, 100005)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100007, 44296510, N'Masculino', N'Monteverdi', N'Facundo', N'Balnearia', CAST(0x0000926A00000000 AS DateTime), N'', N'', 9, N'', N'', N'', 2, 100007)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100008, 44076536, N'Masculino', N'Pagnucco', N'Joaquin Aurelio ', N'Morteros', CAST(0x0000923E00000000 AS DateTime), N'', N'', 10, N'', N'', N'', 2, 100008)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100009, 44783076, N'Masculino', N'Pellegrini', N'Agustin', N'', CAST(0x0000937A00000000 AS DateTime), N'Rafaela', N'', 11, N'', N'', N'', 2, 100009)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100010, 44975795, N'Masculino', N'Pontoni', N'Federico', N'San Fransisco', CAST(0x0000938D00000000 AS DateTime), N'', N'', 12, N'', N'', N'', 2, 100001)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100011, 44296529, N'Masculino', N'Acosta', N'Mariano Paulino', N'Santa Rosa de Rio Primero', CAST(0x0000929000000000 AS DateTime), N'', N'', 22, N'', N'', N'', 2, 100011)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100012, 47913037, N'Masculino', N'Leiva Mendez', N'Bautista', N'Morteros', CAST(0x0000998500000000 AS DateTime), N'Argentino', N'', 34, N'', N'', N'', 2, 100012)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100013, 50033690, N'Masculino', N'Macagno', N' Federico', N'Cordoba', CAST(0x00009EDE00000000 AS DateTime), N'Argentino', N'', 40, N'', N'', N'', 2, 100013)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100014, 50696556, N'Masculino', N'Maurer', N'Benjamin', N'Balnearia', CAST(0x00009E1300000000 AS DateTime), N'Argentino', N'', 42, N'', N'', N'', 2, 100014)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100015, 50523251, N'Masculino', N'Meia', N'Francisco', N'La Para', CAST(0x00009DCD00000000 AS DateTime), N'Argentino', N'', 44, N'', N'', N'', 2, 100015)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100016, 50523254, N'Masculino', N'Monteverdi', N'Santino', N'Arroyito', CAST(0x00009E1100000000 AS DateTime), N'', N'', 46, N'', N'', N'', 2, 100016)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100017, 50523280, N'Masculino', N'Quinteros', N'Rodrigo Gonzalo', N'La Para', CAST(0x00009E1100000000 AS DateTime), N'', N'', 48, N'', N'', N'', 2, 100017)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100018, 51037217, N'Masculino', N'Quiñones', N'Benjamin Tomas', N'Balnearia', CAST(0x00009EE900000000 AS DateTime), N'', N'', 50, N'', N'', N'', 2, 100018)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100019, 51033682, N'Masculino', N'Rupil ', N'Valentino', N'Cordoba', CAST(0x00009ED100000000 AS DateTime), N'', N'', 52, N'', N'', N'', 2, 100019)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100020, 50523261, N'Masculino', N'Sartoris', N'Felipe', N'San Franciso', CAST(0x00009DE400000000 AS DateTime), N'', N'', 54, N'', N'', N'', 2, 100020)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100021, 50931628, N'Masculino', N'Scalerandi', N'Milo Yuthiel', N'Cordoba', CAST(0x00009EAF00000000 AS DateTime), N'', N'', 56, N'', N'', N'', 2, 100021)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100022, 50523263, N'Masculino', N'Valenti', N'Geronimo', N'Brinkman', CAST(0x00009DE300000000 AS DateTime), N'', N'', 58, N'', N'', N'', 2, 100022)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100023, 51017300, N'Femenino', N'Andretich', N'Pilar', N'Cordoba', CAST(0x00009ECA00000000 AS DateTime), N'', N'', 60, N'', N'', N'', 2, 100023)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100024, 49768794, N'Masculino', N'Aguero', N'Thiago Gustavo', N'Balnearia', CAST(0x00009C3300000000 AS DateTime), N'', N'', 62, N'', N'', N'', 2, 100024)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100025, 49322614, N'Masculino', N'Barretta', N'Lucio Valentin', N'Cordoba', CAST(0x00009BD600000000 AS DateTime), N'', N'', 63, N'', N'', N'', 2, 100025)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100026, 49079082, N'Masculino', N'Bertorello Boco', N'Francisco', N'Cordoba', CAST(0x00009B9700000000 AS DateTime), N'', N'', 64, N'', N'', N'', 2, 100026)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100027, 49322616, N'Masculino', N'Brunetti', N'Emiliano Raul', N'San Francisco', CAST(0x00009BE100000000 AS DateTime), N'', N'', 65, N'', N'', N'', 2, 100027)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100028, 48670349, N'Masculino', N'Collino', N'Juan Andres', N'Cordoba', CAST(0x00009B4B00000000 AS DateTime), N'', N'', 66, N'', N'', N'', 2, 100028)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100029, 49079071, N'Masculino', N'Fierro', N'Jeremias', N'Balnearia', CAST(0x00009B6C00000000 AS DateTime), N'', N'', 67, N'', N'', N'', 2, 100029)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100030, 48755511, N'Masculino', N'Maurer', N'Ian Lucas', N'Brinkman', CAST(0x00009AB600000000 AS DateTime), N'', N'', 74, N'', N'', N'', 2, 100030)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100031, 48537549, N'Masculino', N'Mendiolaza', N'Pablo Agustin', N'San Francisco', CAST(0x00009AB200000000 AS DateTime), N'', N'', 75, N'', N'', N'', 2, 100031)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100032, 47910216, N'Masculino', N'Moglia Leiva', N'Valentin Ezequiel', N'Balnearia', CAST(0x000099B000000000 AS DateTime), N'', N'', 76, N'', N'', N'', 2, 100032)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100033, 48072945, N'Masculino', N'Monteverdi', N'Nicolas', N'San Francisco', CAST(0x000098CB00000000 AS DateTime), N'', N'', 77, N'', N'', N'', 2, 100033)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100034, 48755506, N'Masculino', N'Moya', N'Santino', N'Morteros', CAST(0x00009AC900000000 AS DateTime), N'', N'', 78, N'', N'', N'', 2, 100034)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100035, 45483995, N'Masculino', N'Acosta', N'Emiliano Oscar', N'Balnearia', CAST(0x000094E800000000 AS DateTime), N'', N'', 82, N'', N'', N'', 2, 100035)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100036, 45154870, N'Masculino', N'Betuzzi', N'Valentin', N'Cordoba', CAST(0x0000946E00000000 AS DateTime), N'', N'', 83, N'', N'', N'', 2, 100036)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100037, 44899483, N'Masculino', N'Cabrale', N'Dylan Adriel', N'Cordoba', CAST(0x000093B400000000 AS DateTime), N'', N'', 84, N'', N'', N'', 2, 100037)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100038, 45482162, N'Masculino', N'Callieri', N'Felipe Cesar', N'Balnearia', CAST(0x000094A700000000 AS DateTime), N'', N'', 85, N'', N'', N'', 2, 100038)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100039, 46995801, N'Masculino', N'Carignano', N'Santiago', N'Rafaela', CAST(0x0000931400000000 AS DateTime), N'', N'', 86, N'', N'', N'', 2, 100039)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100040, 45093297, N'Masculino', N'Gaviglio', N'Patricio Nahuel', N'Villa Concepcion del Tio', CAST(0x0000946300000000 AS DateTime), N'', N'', 87, N'', N'', N'', 2, 100040)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100041, 45700376, N'Masculino', N'Albertengo', N'Ivo Nazareno', N'Balnearia', CAST(0x0000951800000000 AS DateTime), N'', N'', 93, N'', N'', N'', 1, 100041)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100042, 45700382, N'Masculino', N'Barcellini', N'Emanuel Antonio', N'Balnearia', CAST(0x0000952C00000000 AS DateTime), N'', N'', 94, N'', N'', N'', 2, 100042)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100043, 45700375, N'Masculino', N'Bosco ', N'Lautaro', N'La Para', CAST(0x0000951700000000 AS DateTime), N'', N'', 95, N'', N'', N'', 2, 100043)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100044, 3, N'Masculino', N'Caceres', N'Luciano', N'Balnearia', CAST(0x000095FE00000000 AS DateTime), N'', N'', 96, N'', N'', N'', 2, 100044)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100045, 46036783, N'Masculino', N'Cordoba ', N'Santiago', N'Balnearia', CAST(0x000095BF00000000 AS DateTime), N'', N'', 97, N'', N'', N'', 2, 100045)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100046, 46036786, N'Masculino', N'Chiaretta', N'Alejo Marcelo', N'Balnearia', CAST(0x000095C900000000 AS DateTime), N'', N'', 98, N'', N'', N'', 2, 100046)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100047, 46770659, N'Masculino', N'Acosta', N'Santino Juan', N'San Francisco', CAST(0x0000976900000000 AS DateTime), N'', N'', 105, N'', N'', N'', 2, 100047)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100048, 47363061, N'Masculino', N'Andretich', N'Felipe', N'Cordoba', CAST(0x000097E600000000 AS DateTime), N'', N'', 106, N'', N'', N'', 2, 100048)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100049, 46452863, N'Masculino', N'Baretta', N'Agustin Cesar', N'', CAST(0x0000971200000000 AS DateTime), N'', N'', 107, N'', N'', N'', 2, 100049)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100050, 46306589, N'Masculino', N'Bersano', N'Valentin', N'Cordoba', CAST(0x0000969200000000 AS DateTime), N'', N'', 108, N'', N'', N'', 2, 100050)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100051, 46770687, N'Masculino', N'Brizuela', N'Martin Tomas', N'Cordoba', CAST(0x000097CD00000000 AS DateTime), N'', N'', 109, N'', N'', N'', 2, 100051)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100052, 46659992, N'Masculino', N'Carignano ', N'Lautaro Yamil', N'Jesus Maria', CAST(0x000096E400000000 AS DateTime), N'', N'', 110, N'', N'', N'', 2, 100052)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100053, 47824075, N'Masculino', N'Castellano', N'Mariano Valentin', N'Brinkman', CAST(0x000098D400000000 AS DateTime), N'', N'', 114, N'', N'', N'', 2, 100053)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100054, 47714709, N'Masculino', N'Corvera', N'Brian Ezequiel', N'Balnearia', CAST(0x0000989F00000000 AS DateTime), N'', N'', 115, N'', N'', N'', 2, 100054)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100055, 47363100, N'Masculino', N'Elesner', N'Juan Cruz', N'Balnearia', CAST(0x0000988700000000 AS DateTime), N'', N'', 116, N'', N'', N'', 2, 100055)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100056, 47824087, N'Masculino', N'Krampanis', N'Benjamin Andres', N'Brinkman', CAST(0x0000A1FC00000000 AS DateTime), N'', N'', 117, N'', N'', N'', 2, 100056)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100057, 47363085, N'Masculino', N'Ludueña', N'Valentin', N'', CAST(0x0000986400000000 AS DateTime), N'', N'', 118, N'', N'', N'', 2, 100057)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100058, 47913010, N'Masculino', N'Molina ', N'Nahuel', N'Balnearia', CAST(0x0000993E00000000 AS DateTime), N'', N'', 119, N'', N'', N'', 2, 100058)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100059, 43603221, N'Masculino', N'Aguirre ', N'Martin Ignacio', N'Balnearia', CAST(0x0000911800000000 AS DateTime), N'Argentino', N'', 158, N'', N'', N'', 1, 100059)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100060, 44076187, N'Femenino', N'Corigliani', N'Santiago Gaston ', N'Morteros', CAST(0x000091EA00000000 AS DateTime), N'', N'', 159, N'', N'', N'', 1, 100060)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100061, 43136163, N'Masculino', N'Esposito Gaviglio ', N'Agustin', N'Balnearia', CAST(0x0000911200000000 AS DateTime), N'Argentino', N'', 160, N'', N'', N'', 1, 100061)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100062, 43610506, N'Masculino', N'Ferreyra', N'Axel Oscar', N'', CAST(0x000091AA00000000 AS DateTime), N'Balnearia', N'', 161, N'', N'', N'', 1, 100062)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100063, 43609250, N'Masculino', N'Grosso', N'Facundo Ezequiel', N'Brinkman', CAST(0x0000916600000000 AS DateTime), N'', N'', 162, N'', N'', N'', 1, 100063)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100064, 42892678, N'Masculino', N'Grosso ', N'Lautaro Martin', N'', CAST(0x00008FB500000000 AS DateTime), N'Balnearia', N'', 163, N'', N'', N'', 1, 100064)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100065, 43884776, N'Masculino', N'Lerda', N'Valentin Marcos', N'Morteros', CAST(0x000091EA00000000 AS DateTime), N'', N'', 164, N'', N'', N'', 1, 100065)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100066, 43609239, N'Masculino', N'Lopez ', N'Imanol', N'Balnearia', CAST(0x0000914300000000 AS DateTime), N'Argentino', N'', 165, N'', N'', N'', 1, 100066)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100067, 43884758, N'Masculino', N'Lorenzati', N'Agustin Javier', N'Balnearia', CAST(0x000091B200000000 AS DateTime), N'', N'', 166, N'', N'', N'', 1, 100067)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100068, 43882949, N'Masculino', N'Luna', N'Angel Ezequiel', N'Cordoba', CAST(0x0000918900000000 AS DateTime), N'Argentino', N'', 167, N'', N'', N'', 1, 100068)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100069, 40928887, N'Masculino', N'Aguirre ', N'Nahuel Alejandro', N'Balnearia', CAST(0x00008C7400000000 AS DateTime), N'', N'', 168, N'', N'', N'', 1, 100069)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100070, 43060932, N'Masculino', N'Bergia', N'Erian Horacio', N'Villa Carlos Paz', CAST(0x0000901B00000000 AS DateTime), N'Argentino', N'', 169, N'', N'', N'', 1, 100070)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100071, 43060950, N'Masculino', N'Chiaretta', N'Gonzalo Marcelo', N'Balnearia', CAST(0x0000906100000000 AS DateTime), N'', N'', 170, N'', N'', N'', 1, 100071)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100072, 42050136, N'Masculino', N'Correa', N'Hecto Emilio', N'Balnearia', CAST(0x00008EBF00000000 AS DateTime), N'Argentino', N'', 171, N'', N'', N'', 1, 100072)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100073, 43060960, N'Masculino', N'Ferrer', N'Matias', N'La Para', CAST(0x0000906400000000 AS DateTime), N'', N'', 172, N'', N'', N'', 1, 100073)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100074, 42217556, N'Masculino', N'Maidana', N'David Dario', N'Cordoba', CAST(0x0000A13900000000 AS DateTime), N'', N'', 173, N'', N'', N'', 1, 100074)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100075, 42443219, N'Masculino', N'Mendoza', N'Lautaro Victor', N'Balnearia', CAST(0x00008E2800000000 AS DateTime), N'', N'', 174, N'', N'', N'', 1, 100075)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100076, 42892693, N'Masculino', N'Piovano', N'Joaquin Daniel', N'Cordoba', CAST(0x00008FEE00000000 AS DateTime), N'', N'', 175, N'', N'', N'', 1, 100076)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100077, 41813601, N'Masculino', N'Reynoso', N'Nahuel Alejandro', N'Arroyito', CAST(0x00008DCF00000000 AS DateTime), N'', N'', 176, N'', N'', N'', 1, 100077)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100078, 43317747, N'Femenino', N'Barretta', N'Maria Valentina', N'La Plata', CAST(0x0000909B00000000 AS DateTime), N'Argentina', N'', 177, N'', N'', N'', 1, 100078)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100079, 40050127, N'Masculino', N'Lorenzatti', N'Pablo Sergio', N'Cordoba', CAST(0x00008EC000000000 AS DateTime), N'', N'', 178, N'', N'', N'', 1, 100079)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100080, 42513808, N'Masculino', N'Monteverdi', N'Martin', N'Balnearia', CAST(0x00008F3E00000000 AS DateTime), N'', N'', 179, N'', N'', N'', 1, 100080)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100081, 42048066, N'Masculino', N'Pizarro', N'Sergio', N'Balnearia', CAST(0x00008E0C00000000 AS DateTime), N'', N'', 180, N'', N'', N'', 1, 100081)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100082, 42513818, N'Femenino', N'Arce', N'Macarena', N'Balnearia', CAST(0x00008F5A00000000 AS DateTime), N'', N'', 181, N'', N'', N'', 1, 100082)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100083, 40574935, N'Femenino', N'Arguello', N'Shirley Antonella', N'Balnearia', CAST(0x00008B6200000000 AS DateTime), N'', N'', 182, N'', N'', N'', 1, 100083)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100084, 41769393, N'Femenino', N'Bazán', N'Monica Fernanda', N'Cordoba', CAST(0x00008DF000000000 AS DateTime), N'Argentina', N'', 183, N'', N'', N'', 1, 100084)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100085, 42696537, N'Femenino', N'Corigliani', N'Maria Victoria', N'Morteros', CAST(0x00008F5700000000 AS DateTime), N'', N'', 184, N'', N'', N'', 1, 100085)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100086, 42441032, N'Femenino', N'Díaz ', N'Fátima Romina', N'Morteros', CAST(0x00008EF000000000 AS DateTime), N'', N'', 185, N'', N'', N'', 1, 100086)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100087, 39733894, N'Femenino', N'Ferreyra', N'Dalma Lisana', N'Balnearia', CAST(0x00008B2B00000000 AS DateTime), N'', N'', 186, N'', N'', N'', 1, 100087)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100088, 40574124, N'Femenino', N'Mercado', N'María Luz', N'Morteros', CAST(0x00008C3B00000000 AS DateTime), N'', N'', 187, N'', N'', N'', 1, 100088)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100089, 41225833, N'Femenino', N'De Maria', N'Natali Del Rosario', N'Balnearia', CAST(0x00008CE700000000 AS DateTime), N'', N'', 188, N'', N'', N'', 1, 100089)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100090, 40928898, N'Femenino', N'Ñañez', N'Milagros', N'Balnearia', CAST(0x0000A13900000000 AS DateTime), N'', N'', 189, N'', N'', N'', 1, 100090)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100091, 41225874, N'Femenino', N'Paz', N'Teresita del Valle', N'Balnearia', CAST(0x0000A50700000000 AS DateTime), N'', N'', 190, N'', N'', N'', 1, 100091)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100092, 41225850, N'Femenino', N'Pinto', N'Vanesa Alejandra', N'Balnearia', CAST(0x00008D2800000000 AS DateTime), N'', N'', 191, N'', N'', N'', 1, 100092)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100093, 41225831, N'Femenino', N'Putero', N'Karen', N'Brinkman', CAST(0x00008CD900000000 AS DateTime), N'', N'', 192, N'', N'', N'', 1, 100093)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100094, 41769390, N'Femenino', N'Tesio', N'Rocio del Milagro', N'Balnearia', CAST(0x00008DE600000000 AS DateTime), N'', N'', 193, N'', N'', N'', 1, 100094)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100095, 40928900, N'Femenino', N'Veronese', N'Brenda', N'Balnearia', CAST(0x00008CD100000000 AS DateTime), N'', N'', 194, N'', N'', N'', 1, 100095)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100096, 41280679, N'Femenino', N'Zin', N'Costanza Nahir', N'San Francisco', CAST(0x00008D2000000000 AS DateTime), N'', N'', 195, N'', N'', N'', 1, 100096)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100097, 40928867, N'Masculino', N'Cabrale', N'Lenadro David', N'Balnearia', CAST(0x00008BEC00000000 AS DateTime), N'', N'', 196, N'', N'', N'', 1, 100097)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100098, 40574946, N'Masculino', N'Franzini', N'Tomas', N'Balnearia', CAST(0x00008BA100000000 AS DateTime), N'', N'', 197, N'', N'', N'', 1, 100098)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100099, 40574108, N'Masculino', N'Marchetti', N'Manuel', N'Balnearia', CAST(0x00008BAC00000000 AS DateTime), N'', N'', 198, N'', N'', N'', 1, 100099)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100100, 39557107, N'Masculino', N'Salde', N'Brian Steven', N'Capital Federal', CAST(0x0000893000000000 AS DateTime), N'', N'', 199, N'', N'', N'', 1, 100100)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100101, 40574988, N'Femenino', N'Abratte ', N'Rocio', N'Balnearia', CAST(0x00008C1E00000000 AS DateTime), N'', N'', 200, N'', N'', N'', 1, 100101)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100102, 39423833, N'Femenino', N'Alessandria', N'Macarena', N'Porteña', CAST(0x00008B5300000000 AS DateTime), N'', N'', 201, N'', N'', N'', 1, 100102)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100103, 40574976, N'Femenino', N'Benavidez', N'Lucula Nahir', N'Balnearia', CAST(0x00008BF300000000 AS DateTime), N'', N'', 202, N'', N'', N'', 1, 100103)
GO
print 'Processed 100 total records'
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100104, 40200982, N'Femenino', N'Bessone', N'María Pía', N'Balnearia', CAST(0x00008B1F00000000 AS DateTime), N'', N'', 203, N'', N'', N'', 1, 100104)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100105, 40574965, N'Femenino', N'Gorgerino', N'Melani Belen', N'Cordob', CAST(0x00008BC900000000 AS DateTime), N'', N'', 204, N'', N'', N'', 1, 100105)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100106, 40575000, N'Femenino', N'Isleño', N'Andrea Micaela', N'Balnearia', CAST(0x00008C1D00000000 AS DateTime), N'', N'', 205, N'', N'', N'', 1, 100106)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100107, 40574947, N'Masculino', N'Aguirre', N'Damian', N'Balnearia', CAST(0x00008A0400000000 AS DateTime), N'', N'', 206, N'', N'', N'', 1, 100107)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100108, 37814618, N'Masculino', N'Alfonso', N'Nelson Fabian', N'Reconquista', CAST(0x0000864200000000 AS DateTime), N'', N'', 207, N'', N'', N'', 1, 100108)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100109, 39543845, N'Masculino', N'Ayala', N'Jose Alberto', N'San Francisco', CAST(0x0000899200000000 AS DateTime), N'', N'', 208, N'', N'', N'', 1, 100109)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100110, 39543895, N'Femenino', N'Gorgerino', N'Cristian Luis', N'Cordob', CAST(0x00008A4B00000000 AS DateTime), N'', N'', 209, N'', N'', N'', 1, 100110)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100111, 40200922, N'Masculino', N'Grosso ', N'Franco Emanuel', N'Balnearia', CAST(0x00008A9C00000000 AS DateTime), N'', N'', 210, N'', N'', N'', 1, 100111)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100112, 40200929, N'Masculino', N'Krampanis', N'Julian Agustin', N'Balnearia', CAST(0x00008AAE00000000 AS DateTime), N'', N'', 211, N'', N'', N'', 1, 100112)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100113, 38730084, N'Masculino', N'Luna', N'Gonzalo Maximiliano', N'Balnearia', CAST(0x0000907800000000 AS DateTime), N'', N'', 212, N'', N'', N'', 1, 100113)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100114, 38418929, N'Masculino', N'Mercado', N'Kevin Fabrizio', N'Balnearia', CAST(0x000087FD00000000 AS DateTime), N'', N'', 213, N'', N'', N'', 1, 100114)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100115, 39543894, N'Masculino', N'Putero', N'Nicolas ', N'Balnearia', CAST(0x00008A4B00000000 AS DateTime), N'', N'', 214, N'', N'', N'', 1, 100115)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100116, 40200925, N'Masculino', N'Ruiz', N'Luciano Francisco', N'Balnearia', CAST(0x00008AAD00000000 AS DateTime), N'', N'', 215, N'', N'', N'', 1, 100116)
INSERT [dbo].[Alumno] ([legajoAlumno], [nroDocumento], [sexo], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [idEstado], [idUsuario]) VALUES (100117, 43884779, N'Femenino', N'Lourdes', N'Lourdes', N'Balnearia', CAST(0x000091FF00000000 AS DateTime), N'', N'', 216, N'', N'', N'', 1, 100117)
/****** Object:  Table [dbo].[Docente]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Docente](
	[legajoDocente] [int] NOT NULL,
	[nroDocumento] [int] NOT NULL,
	[sexo] [varchar](50) NOT NULL,
	[idEstadoCivil] [int] NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[lugarNacimiento] [varchar](50) NULL,
	[fechaNacimiento] [datetime] NOT NULL,
	[nacionalidad] [varchar](50) NULL,
	[observaciones] [varchar](200) NULL,
	[idDomicilio] [int] NOT NULL,
	[telefonoFijo] [varchar](50) NULL,
	[telefonoMovil] [varchar](50) NULL,
	[correoElectronico] [varchar](50) NULL,
	[fechaInicioActividad] [datetime] NOT NULL,
	[fechaFinActividad] [datetime] NULL,
	[cuil] [varchar](11) NOT NULL,
	[idSituacionRevista] [int] NOT NULL,
	[curriculumVitae] [varchar](50) NULL,
	[idEstado] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[legajoDocente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10001, 16733835, N'Femenino', 21, N'Montivero', N'Estela Marys', N'', CAST(0x00005C2900000000 AS DateTime), N'Argentina', N'', 3, N'', N'0356315402169', N'litamontivero@live.com', CAST(0x0000A3C600000000 AS DateTime), NULL, N'27167338351', 1, N'', 15, 10001)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10002, 13510210, N'Femenino', 21, N'Abratte', N'Adriana del Carmen', N'', CAST(0x000054D300000000 AS DateTime), N'Argentina', N'', 24, N'03563420141', N'15403933', N'adriana.abratte@hotmail.com', CAST(0x0000A3CC00000000 AS DateTime), NULL, N'27135102100', 1, N'', 15, 10002)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10003, 13054048, N'Femenino', 21, N'Brandolini', N'Maria Cristina', N'', CAST(0x000054D700000000 AS DateTime), N'Argentina', N'', 25, N'035634203118', N'15401464', N'crisbrandolini@hotmail.com', CAST(0x0000A3CC00000000 AS DateTime), NULL, N'27130540487', 1, N'...\Docente 10003.pdf', 15, 10003)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10004, 23582528, N'Femenino', 21, N'Vittore', N'Monica Alejandra', N'', CAST(0x0000695400000000 AS DateTime), N'Argentina', N'', 26, N'03563420498', N'15405064', N'monicavittore@hotmail.com', CAST(0x0000A3CE00000000 AS DateTime), NULL, N'27235825282', 1, N'', 15, 10004)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10005, 13964602, N'Femenino', 21, N'Perlo', N'Maria Cristina', N'', CAST(0x000055E000000000 AS DateTime), N'Argentina', N'', 27, N'03563420036', N'15408325', N'cristperlo@hotmail.com', CAST(0x0000A3CE00000000 AS DateTime), NULL, N'27139646024', 1, N'', 15, 10005)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10006, 31278502, N'Masculino', 21, N'Ludueña', N'Lucas Matias ', N'', CAST(0x000078F700000000 AS DateTime), N'Argentino', N'', 28, N'', N'15403513', N'lucaslu18@hotmail.com', CAST(0x0000A3CE00000000 AS DateTime), NULL, N'20312785022', 1, N'', 15, 10006)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10007, 26602785, N'Femenino', 21, N'Picco', N'Mariana Patricia', N'', CAST(0x0000704D00000000 AS DateTime), N'Argentina', N'', 29, N'03563421129', N'15494657', N'', CAST(0x0000A3CE00000000 AS DateTime), NULL, N'27266027856', 1, N'', 15, 10007)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10008, 14878599, N'Femenino', 21, N'Montivero ', N'Maria Rosa ', N'', CAST(0x000058F700000000 AS DateTime), N'Argentina', N'', 30, N'03563421014', N'15401750', N'mary_montiver@hotmail.com', CAST(0x0000A3CE00000000 AS DateTime), NULL, N'27148785991', 1, N'', 15, 10008)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10009, 23582531, N'Femenino', 21, N'Chiaretta ', N'Lilina Nelly', N'', CAST(0x0000695C00000000 AS DateTime), N'Argentina', N'', 31, N'03563420753', N'15412488', N'lilichiaretta@hotmail.com', CAST(0x0000A3CE00000000 AS DateTime), NULL, N'27235825312', 1, N'', 15, 10009)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10010, 23255363, N'Femenino', 21, N'Pellegrini', N'Karina Rita', N'', CAST(0x0000685C00000000 AS DateTime), N'Agentina', N'', 32, N'03563421152', N'15402737', N'', CAST(0x0000A3CE00000000 AS DateTime), NULL, N'23232553634', 1, N'', 15, 10010)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10011, 17974227, N'Femenino', 21, N'Gallo', N'Analia Beatriz', N'', CAST(0x00005F2A00000000 AS DateTime), N'Argentina', N'', 33, N'03563420473', N'15401280', N'', CAST(0x0000A3CE00000000 AS DateTime), NULL, N'27179742271', 1, N'', 15, 10011)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10012, 28548680, N'Femenino', 21, N'Del Valle Ayala ', N'Gabriela', N'', CAST(0x000073A600000000 AS DateTime), N'Argentina', N'', 36, N'03563420360', N'15401255', N'gdelvalleayala680@hotmail.com.ar', CAST(0x0000A3D200000000 AS DateTime), NULL, N'27285486802', 1, N'', 15, 10012)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10013, 26612282, N'Femenino', 21, N'Nieto', N'Claudia del Valle', N'Balnearia', CAST(0x00006FC100000000 AS DateTime), N'Argentina', N'', 37, N'', N'15400671', N'Claudianieto35@hotmail.com', CAST(0x0000A3D200000000 AS DateTime), NULL, N'27266122829', 1, N'', 15, 10013)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10014, 34684943, N'Femenino', 21, N'Acosta ', N'Evely Janet', N'', CAST(0x0000804100000000 AS DateTime), N'Argentina', N'', 38, N'', N'15402520', N'even23_11@hotmail.com', CAST(0x0000A3D200000000 AS DateTime), NULL, N'27346849432', 1, N'', 15, 10014)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10015, 32139827, N'Femenino', 21, N'Beltramo', N'Florencia Yanina', N'', CAST(0x00007B0100000000 AS DateTime), N'Argentina', N'', 39, N'', N'15410623', N'florenciabeltramo35@hotmail.com', CAST(0x0000A3D200000000 AS DateTime), NULL, N'27321398273', 1, N'', 15, 10015)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10016, 22159665, N'Femenino', 21, N'PÉREZ', N'MÓNICA RITA', N'', CAST(0x0000666E00000000 AS DateTime), N'', N'', 131, N'420959', N'', N'moni_perez247@hotmail.com', CAST(0x0000A3EA00000000 AS DateTime), NULL, N'27221596656', 1, N'', 15, 10016)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10017, 27423020, N'Masculino', 21, N'PEZZANO ', N'Diego Raúl', N'', CAST(0x0000712D00000000 AS DateTime), N'', N'', 132, N'', N'15412595', N'diego_pezzano@yahoo.com.ar', CAST(0x0000A3EA00000000 AS DateTime), NULL, N'20274230208', 1, N'', 15, 10017)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10018, 31837962, N'Masculino', 21, N'PLATÉ', N' MATÍAS DANIEL', N'', CAST(0x00007AE100000000 AS DateTime), N'', N'', 133, N'420737              ', N'', N'matiasplate@live.com.ar', CAST(0x0000A3EA00000000 AS DateTime), NULL, N'23318379629', 1, N'', 15, 10018)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10019, 32396690, N'Femenino', 21, N'PLATÉ', N'VANESA SOLEDAD', N'', CAST(0x00007C4F00000000 AS DateTime), N'', N'', 134, N'420153  ', N'15402706', N'vanesplate@hotmail.com ', CAST(0x0000A3EA00000000 AS DateTime), NULL, N'27323966902', 1, N'', 15, 10019)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10020, 28582414, N'Femenino', 21, N'PODIO', N'Evangelina María', N'', CAST(0x0000741E00000000 AS DateTime), N'', N'', 135, N'', N'  15491205        ', N'evangepo@hotmail.com', CAST(0x0000A3EA00000000 AS DateTime), NULL, N'27285824147', 1, N'', 15, 10020)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10021, 24037854, N'Femenino', 21, N'Podio', N'Julieta', N'', CAST(0x00006AB700000000 AS DateTime), N'', N'', 136, N'420201', N'15404892', N'', CAST(0x0000A3EA00000000 AS DateTime), NULL, N'27240378545', 1, N'', 15, 10021)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10022, 30623743, N'Femenino', 21, N'QUAGLIA', N'SILVINA BEATRIZ', N'', CAST(0x0000782D00000000 AS DateTime), N'', N'', 137, N'15491918', N'', N'15491918', CAST(0x0000A3EA00000000 AS DateTime), NULL, N'27306237433', 1, N'', 15, 10022)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10023, 16733889, N'Femenino', 21, N'ROSMARI', N'Claudia Beatriz', N'', CAST(0x00005CF900000000 AS DateTime), N'', N'', 138, N'', N'15491260', N'', CAST(0x0000A3EA00000000 AS DateTime), NULL, N'27-67338890', 1, N'', 15, 10023)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10024, 23062403, N'Masculino', 21, N'RUIZ', N'Pablo Nazareno', N'', CAST(0x000067B600000000 AS DateTime), N'', N'', 139, N'421033     ', N' 15406176     ', N'pablo.ruiz@yahoo.com.ar', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'20230624039', 1, N'', 15, 10024)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10025, 24883130, N'Femenino', 21, N'TONINI', N'PAOLA', N'', CAST(0x00006C4D00000000 AS DateTime), N'', N'', 140, N'420459', N' 15404091', N'paotonini@yahoo.com.ar', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'27248831303', 1, N'', 15, 10025)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10026, 26089048, N'Femenino', 21, N'VILLEGAS', N'ELIZABETH', N'', CAST(0x00006E9B00000000 AS DateTime), N'', N'', 141, N'', N'15668915', N'elivillegas@hotmail.com', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'23260890484', 1, N'', 15, 10026)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10027, 27869070, N'Masculino', 21, N'FIERRO', N'JORGE LUIS', N'', CAST(0x0000734400000000 AS DateTime), N'', N'', 142, N'', N'15402671', N'cokefierro2@hotmail.com', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'23278690709', 1, N'', 15, 10027)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10028, 17445804, N'Femenino', 21, N'LÓPEZ', N'MARÍA DEL ROSARIO', N'', CAST(0x00005D1500000000 AS DateTime), N'', N'', 143, N'421367      ', N'     15406513', N'mamamarilynlopez@gmail.com', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'27174458044', 1, N'', 15, 10028)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10029, 20541335, N'Femenino', 21, N'PEIRETTI', N'MARIELA E.', N'', CAST(0x0000626700000000 AS DateTime), N'', N'', 144, N'420573  ', N'15400893', N'mepeiretti@redcoop.com.ar', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'27205413354', 1, N'', 15, 10029)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10030, 23582536, N'Femenino', 21, N'BRUNO', N'Claudia Carina', N'', CAST(0x0000694800000000 AS DateTime), N'', N'', 145, N'421033   ', N'15406176    ', N'clau.bruno@yahoo.com', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'27235825363', 1, N'', 15, 10030)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10031, 30623729, N'Femenino', 21, N'CHIARETTA', N' Luciana Rocio', N'', CAST(0x0000781600000000 AS DateTime), N'', N'', 146, N'420203    ', N'15401448', N'lurochi@hotmail.com', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'27306237298', 1, N'', 15, 10031)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10032, 25752016, N'Masculino', 21, N'BEARZZI', N'Gonzalo David', N'', CAST(0x00006DD800000000 AS DateTime), N'', N'', 147, N'03562-493018       ', N'   03562-15438314', N'gbearzzi@yahoo.com.ar', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'20257520162', 1, N'', 15, 10032)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10033, 21019923, N'Femenino', 21, N'CICARÉ', N'Silvia Alejandra', N'', CAST(0x0000636600000000 AS DateTime), N'', N'', 148, N'420728 ', N'15412535', N'silvia_cicare@hotmail.com', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'27210199239', 1, N'', 15, 10033)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10034, 16687960, N'Femenino', 21, N'MAPELLI', N'Asucena del Valle', N'', CAST(0x00005B3000000000 AS DateTime), N'', N'', 149, N'420153    ', N'     15403799 ', N'asucenamapelli@hotmail.com', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'23166879604', 1, N'', 15, 10034)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10035, 16632717, N'Femenino', 21, N'LUDUEÑA', N'María de los Ángeles', N'', CAST(0x0000617400000000 AS DateTime), N'', N'', 150, N'420727 ', N'15400892', N'lazona@redcoop.com.ar', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'27166327178', 1, N'', 15, 10035)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10036, 35675385, N'Femenino', 21, N'BENAVIDEZ ', N'Yamila Soledad ', N'', CAST(0x0000821600000000 AS DateTime), N'', N'', 151, N'420498', N' 15405063', N'yamila-benavidez@hotmail.com', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'27356753858', 1, N'', 15, 10036)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10037, 10561456, N'Femenino', 21, N'MERKE', N' Ana María', N'', CAST(0x00004BF200000000 AS DateTime), N'', N'', 152, N'420838       ', N'', N'ferluluna@hotmail.com', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'27105614565', 1, N'', 15, 10037)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10038, 20402061, N'Femenino', 21, N'ALMADA', N'Mariela Concepción', N'', CAST(0x000061D400000000 AS DateTime), N'', N'', 153, N'420875       ', N'15400997      ', N'marualmada2008@hotmail.com', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'27204020618', 1, N'', 15, 10038)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10039, 31837917, N'Femenino', 21, N'CASINERIO', N'Vanesa Gisele', N'', CAST(0x00007A4C00000000 AS DateTime), N'', N'', 154, N'420349  ', N'15407013', N'vane_casinerio@hotmail.com', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'27318379179', 1, N'', 15, 10039)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10040, 25309595, N'Femenino', 21, N'FURRER', N'Mariela Rosana', N'', CAST(0x00006D8E00000000 AS DateTime), N'', N'', 155, N'', N'03562-15504304', N'lulimoya@hotmail.com', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'23253095954', 1, N'', 15, 10040)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10041, 28582497, N'Femenino', 21, N'MAGLIANO', N'María Laura', N'', CAST(0x0000753C00000000 AS DateTime), N'', N'', 156, N'420584        ', N'15409783', N'lauramagliano_1982@hotmail.com', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'23285824974', 1, N'', 15, 10041)
INSERT [dbo].[Docente] ([legajoDocente], [nroDocumento], [sexo], [idEstadoCivil], [apellido], [nombre], [lugarNacimiento], [fechaNacimiento], [nacionalidad], [observaciones], [idDomicilio], [telefonoFijo], [telefonoMovil], [correoElectronico], [fechaInicioActividad], [fechaFinActividad], [cuil], [idSituacionRevista], [curriculumVitae], [idEstado], [idUsuario]) VALUES (10042, 30623759, N'Femenino', 21, N'GRUDINA', N'Yanina Griselda', N'', CAST(0x0000A1C000000000 AS DateTime), N'', N'', 157, N'', N'0351-153251410', N'yaninagrudina@hotmail.com', CAST(0x0000A3EE00000000 AS DateTime), NULL, N'20306237590', 1, N'', 15, 10042)
/****** Object:  Table [dbo].[LicenciaPersonalMaestranza]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LicenciaPersonalMaestranza](
	[legajoPersonalMaestranza] [int] NOT NULL,
	[fechaInicio] [datetime] NOT NULL,
	[fechaFin] [datetime] NOT NULL,
	[motivo] [varchar](200) NOT NULL,
 CONSTRAINT [PK_LicenciaNoDocente] PRIMARY KEY CLUSTERED 
(
	[legajoPersonalMaestranza] ASC,
	[fechaInicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicenciaDocente]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenciaDocente](
	[legajoDocente] [int] NOT NULL,
	[fechaInicio] [datetime] NOT NULL,
	[fechaFin] [datetime] NOT NULL,
	[idMovimientoAltaBaja] [int] NOT NULL,
 CONSTRAINT [PK_Licencia] PRIMARY KEY CLUSTERED 
(
	[legajoDocente] ASC,
	[fechaInicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inscripcion]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inscripcion](
	[idCurso] [int] NOT NULL,
	[legajoAlumno] [int] NOT NULL,
	[fecha] [datetime] NULL,
 CONSTRAINT [PK_Inscripcion] PRIMARY KEY CLUSTERED 
(
	[legajoAlumno] ASC,
	[idCurso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (27, 100002, CAST(0x0000A3CD01563692 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (27, 100003, CAST(0x0000A3CD015631A6 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (27, 100004, CAST(0x0000A3CD01562490 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (27, 100005, CAST(0x0000A3CD01561DD7 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (27, 100007, CAST(0x0000A3CD01560D26 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (27, 100008, CAST(0x0000A3CD0156052A AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (27, 100009, CAST(0x0000A3CD0155FC3E AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (27, 100010, CAST(0x0000A3CD0155F5C9 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (27, 100011, CAST(0x0000A3CD0155DDA8 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (4, 100012, CAST(0x0000A3D1017F3E26 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (1, 100013, CAST(0x0000A2E500B37C8F AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (1, 100014, CAST(0x0000A2E500B38CD4 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (1, 100015, CAST(0x0000A2E500B3A106 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (1, 100016, CAST(0x0000A2E500B3AC3B AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (1, 100017, CAST(0x0000A2E500B3B7F1 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (1, 100018, CAST(0x0000A2E500B3BEE1 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (1, 100019, CAST(0x0000A2E500B3CC0E AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (1, 100020, CAST(0x0000A2E500B3D590 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (1, 100021, CAST(0x0000A2E500B3E1EC AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (1, 100022, CAST(0x0000A2E500B3F17F AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (1, 100023, CAST(0x0000A2E500B3FBDC AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (3, 100024, CAST(0x0000A2E500C0CC9E AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (3, 100025, CAST(0x0000A2E500C0D836 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (3, 100026, CAST(0x0000A2E500C0FA42 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (3, 100027, CAST(0x0000A2E500C0E920 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (3, 100028, CAST(0x0000A2E500C1037C AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (3, 100029, CAST(0x0000A2E500C10FC1 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (4, 100030, CAST(0x0000A3D400D2061D AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (4, 100031, CAST(0x0000A3D400D15EAB AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (4, 100032, CAST(0x0000A3D400D169BF AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (4, 100033, CAST(0x0000A3D400D173B0 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (4, 100034, CAST(0x0000A3D400D17BB8 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (11, 100035, CAST(0x0000A3D401078CAC AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (11, 100036, CAST(0x0000A3D40107964C AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (11, 100037, CAST(0x0000A3D401079F4A AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (11, 100038, CAST(0x0000A3D40107A7C2 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (11, 100039, CAST(0x0000A3D40107B100 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (11, 100040, CAST(0x0000A3D40107CC94 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (10, 100042, CAST(0x0000A2E5010D5D79 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (10, 100043, CAST(0x0000A2E5010D6759 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (10, 100044, CAST(0x0000A2E5010D7166 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (10, 100045, CAST(0x0000A2E5010D87DE AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (10, 100046, CAST(0x0000A2E5010D92A9 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (9, 100047, CAST(0x0000A3D401167AEF AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (9, 100048, CAST(0x0000A3D40116864D AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (9, 100049, CAST(0x0000A3D4011690D6 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (9, 100050, CAST(0x0000A3D40116AB9C AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (9, 100051, CAST(0x0000A3D40116B670 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (9, 100052, CAST(0x0000A3D40116FEA2 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (7, 100053, CAST(0x0000A3D40120F812 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (7, 100054, CAST(0x0000A3D401212C51 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (7, 100055, CAST(0x0000A3D401214A5A AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (7, 100056, CAST(0x0000A3D401216FBF AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (7, 100057, CAST(0x0000A3D401218FA2 AS DateTime))
INSERT [dbo].[Inscripcion] ([idCurso], [legajoAlumno], [fecha]) VALUES (7, 100058, CAST(0x0000A3D40121B070 AS DateTime))
/****** Object:  Table [dbo].[HorarioPersonalMaestranza]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HorarioPersonalMaestranza](
	[legajoPersonalMaestranza] [int] NOT NULL,
	[cicloLectivo] [int] NOT NULL,
	[diaSemana] [varchar](50) NOT NULL,
	[horaInicio] [datetime] NOT NULL,
	[horaFin] [datetime] NOT NULL,
 CONSTRAINT [PK_HorarioPersonalMaestranza] PRIMARY KEY CLUSTERED 
(
	[legajoPersonalMaestranza] ASC,
	[cicloLectivo] ASC,
	[diaSemana] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[HorarioPersonalMaestranza] ([legajoPersonalMaestranza], [cicloLectivo], [diaSemana], [horaInicio], [horaFin]) VALUES (1001, 2014, N'Jueves', CAST(0x0000A13900735B40 AS DateTime), CAST(0x0000A139009450C0 AS DateTime))
INSERT [dbo].[HorarioPersonalMaestranza] ([legajoPersonalMaestranza], [cicloLectivo], [diaSemana], [horaInicio], [horaFin]) VALUES (1001, 2014, N'Lunes', CAST(0x0000A13900735B40 AS DateTime), CAST(0x0000A139009450C0 AS DateTime))
INSERT [dbo].[HorarioPersonalMaestranza] ([legajoPersonalMaestranza], [cicloLectivo], [diaSemana], [horaInicio], [horaFin]) VALUES (1001, 2014, N'Martes', CAST(0x0000A13900735B40 AS DateTime), CAST(0x0000A139009450C0 AS DateTime))
INSERT [dbo].[HorarioPersonalMaestranza] ([legajoPersonalMaestranza], [cicloLectivo], [diaSemana], [horaInicio], [horaFin]) VALUES (1001, 2014, N'Miércoles', CAST(0x0000A13900735B40 AS DateTime), CAST(0x0000A139009450C0 AS DateTime))
INSERT [dbo].[HorarioPersonalMaestranza] ([legajoPersonalMaestranza], [cicloLectivo], [diaSemana], [horaInicio], [horaFin]) VALUES (1001, 2014, N'Viernes', CAST(0x0000A13900735B40 AS DateTime), CAST(0x0000A139009450C0 AS DateTime))
INSERT [dbo].[HorarioPersonalMaestranza] ([legajoPersonalMaestranza], [cicloLectivo], [diaSemana], [horaInicio], [horaFin]) VALUES (1002, 2014, N'Jueves', CAST(0x0000A13900F73140 AS DateTime), CAST(0x0000A13901391C40 AS DateTime))
INSERT [dbo].[HorarioPersonalMaestranza] ([legajoPersonalMaestranza], [cicloLectivo], [diaSemana], [horaInicio], [horaFin]) VALUES (1002, 2014, N'Lunes', CAST(0x0000A13900F73140 AS DateTime), CAST(0x0000A13901391C40 AS DateTime))
INSERT [dbo].[HorarioPersonalMaestranza] ([legajoPersonalMaestranza], [cicloLectivo], [diaSemana], [horaInicio], [horaFin]) VALUES (1002, 2014, N'Martes', CAST(0x0000A13900F73140 AS DateTime), CAST(0x0000A13901391C40 AS DateTime))
INSERT [dbo].[HorarioPersonalMaestranza] ([legajoPersonalMaestranza], [cicloLectivo], [diaSemana], [horaInicio], [horaFin]) VALUES (1002, 2014, N'Miércoles', CAST(0x0000A13900F73140 AS DateTime), CAST(0x0000A13901391C40 AS DateTime))
INSERT [dbo].[HorarioPersonalMaestranza] ([legajoPersonalMaestranza], [cicloLectivo], [diaSemana], [horaInicio], [horaFin]) VALUES (1002, 2014, N'Viernes', CAST(0x0000A13900F73140 AS DateTime), CAST(0x0000A13901391C40 AS DateTime))
INSERT [dbo].[HorarioPersonalMaestranza] ([legajoPersonalMaestranza], [cicloLectivo], [diaSemana], [horaInicio], [horaFin]) VALUES (1003, 2014, N'Jueves', CAST(0x0000A1390107AC00 AS DateTime), CAST(0x0000A13901391C40 AS DateTime))
INSERT [dbo].[HorarioPersonalMaestranza] ([legajoPersonalMaestranza], [cicloLectivo], [diaSemana], [horaInicio], [horaFin]) VALUES (1003, 2014, N'Lunes', CAST(0x0000A1390107AC00 AS DateTime), CAST(0x0000A13901391C40 AS DateTime))
INSERT [dbo].[HorarioPersonalMaestranza] ([legajoPersonalMaestranza], [cicloLectivo], [diaSemana], [horaInicio], [horaFin]) VALUES (1003, 2014, N'Martes', CAST(0x0000A1390107AC00 AS DateTime), CAST(0x0000A13901391C40 AS DateTime))
INSERT [dbo].[HorarioPersonalMaestranza] ([legajoPersonalMaestranza], [cicloLectivo], [diaSemana], [horaInicio], [horaFin]) VALUES (1003, 2014, N'Miércoles', CAST(0x0000A1390107AC00 AS DateTime), CAST(0x0000A13901391C40 AS DateTime))
INSERT [dbo].[HorarioPersonalMaestranza] ([legajoPersonalMaestranza], [cicloLectivo], [diaSemana], [horaInicio], [horaFin]) VALUES (1003, 2014, N'Viernes', CAST(0x0000A1390107AC00 AS DateTime), CAST(0x0000A13901391C40 AS DateTime))
/****** Object:  Table [dbo].[HorarioCurso]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HorarioCurso](
	[idCurso] [int] NOT NULL,
	[idAsignatura] [int] NOT NULL,
	[diaSemana] [varchar](50) NOT NULL,
	[horaInicio] [datetime] NOT NULL,
	[horaFin] [datetime] NOT NULL,
	[legajoDocente] [int] NULL,
 CONSTRAINT [PK_AsignaturasPorCurso] PRIMARY KEY CLUSTERED 
(
	[idCurso] ASC,
	[idAsignatura] ASC,
	[diaSemana] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 22, N'Jueves', CAST(0x0000A13900EAD530 AS DateTime), CAST(0x0000A13900F31290 AS DateTime), 10012)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 22, N'Lunes', CAST(0x0000A13900EAD530 AS DateTime), CAST(0x0000A13900F31290 AS DateTime), 10012)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 22, N'Martes', CAST(0x0000A13900EAD530 AS DateTime), CAST(0x0000A13900F31290 AS DateTime), 10012)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 22, N'Miércoles', CAST(0x0000A13900EAD530 AS DateTime), CAST(0x0000A13900F31290 AS DateTime), 10012)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 22, N'Viernes', CAST(0x0000A13901027410 AS DateTime), CAST(0x0000A139010A6B20 AS DateTime), 10012)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 24, N'Jueves', CAST(0x0000A13900F73140 AS DateTime), CAST(0x0000A13900FF6EA0 AS DateTime), 10012)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 24, N'Lunes', CAST(0x0000A13900F73140 AS DateTime), CAST(0x0000A13900FF6EA0 AS DateTime), 10012)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 24, N'Miércoles', CAST(0x0000A13900F73140 AS DateTime), CAST(0x0000A13900FF6EA0 AS DateTime), 10012)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 24, N'Viernes', CAST(0x0000A13900F9F060 AS DateTime), CAST(0x0000A13901022DC0 AS DateTime), 10012)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 25, N'Jueves', CAST(0x0000A139010D2A40 AS DateTime), CAST(0x0000A13901140810 AS DateTime), 10012)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 25, N'Lunes', CAST(0x0000A139010D2A40 AS DateTime), CAST(0x0000A13901140810 AS DateTime), 10012)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 25, N'Martes', CAST(0x0000A139010D2A40 AS DateTime), CAST(0x0000A13901140810 AS DateTime), 10012)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 25, N'Miércoles', CAST(0x0000A139010D2A40 AS DateTime), CAST(0x0000A13901140810 AS DateTime), 10012)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 25, N'Viernes', CAST(0x0000A139010D2A40 AS DateTime), CAST(0x0000A13901140810 AS DateTime), 10012)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 26, N'Lunes', CAST(0x0000A13900FFB4F0 AS DateTime), CAST(0x0000A139010A6B20 AS DateTime), 10012)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 26, N'Miércoles', CAST(0x0000A13900FFB4F0 AS DateTime), CAST(0x0000A139010A6B20 AS DateTime), 10012)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 26, N'Viernes', CAST(0x0000A13900EAD530 AS DateTime), CAST(0x0000A13900F5D1B0 AS DateTime), 10012)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 37, N'Martes', CAST(0x0000A13900F5D1B0 AS DateTime), CAST(0x0000A1390100CE30 AS DateTime), 10006)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 40, N'Jueves', CAST(0x0000A13900FFB4F0 AS DateTime), CAST(0x0000A139010A6B20 AS DateTime), 10015)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (1, 40, N'Martes', CAST(0x0000A13901011480 AS DateTime), CAST(0x0000A13901090B90 AS DateTime), 10015)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 30, N'Jueves', CAST(0x0000A13901027410 AS DateTime), CAST(0x0000A139010A6B20 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 30, N'Lunes', CAST(0x0000A13900EAD530 AS DateTime), CAST(0x0000A13900F31290 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 30, N'Martes', CAST(0x0000A13901027410 AS DateTime), CAST(0x0000A139010A6B20 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 30, N'Miércoles', CAST(0x0000A13900EAD530 AS DateTime), CAST(0x0000A13900F31290 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 30, N'Viernes', CAST(0x0000A13900EAD530 AS DateTime), CAST(0x0000A13900F31290 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 32, N'Jueves', CAST(0x0000A13900F9F060 AS DateTime), CAST(0x0000A13901022DC0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 32, N'Lunes', CAST(0x0000A13900F73140 AS DateTime), CAST(0x0000A13900FF6EA0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 32, N'Martes', CAST(0x0000A13900F9F060 AS DateTime), CAST(0x0000A13901022DC0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 32, N'Miércoles', CAST(0x0000A13900F73140 AS DateTime), CAST(0x0000A13900FF6EA0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 32, N'Viernes', CAST(0x0000A13900F73140 AS DateTime), CAST(0x0000A13900FF6EA0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 34, N'Lunes', CAST(0x0000A13900FFB4F0 AS DateTime), CAST(0x0000A139010A6B20 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 34, N'Miércoles', CAST(0x0000A13900FFB4F0 AS DateTime), CAST(0x0000A139010A6B20 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 35, N'Jueves', CAST(0x0000A139010D2A40 AS DateTime), CAST(0x0000A13901140810 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 35, N'Lunes', CAST(0x0000A139010D2A40 AS DateTime), CAST(0x0000A13901140810 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 35, N'Martes', CAST(0x0000A139010D2A40 AS DateTime), CAST(0x0000A13901140810 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 35, N'Miércoles', CAST(0x0000A139010D2A40 AS DateTime), CAST(0x0000A13901140810 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 35, N'Viernes', CAST(0x0000A139010D2A40 AS DateTime), CAST(0x0000A13901140810 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 38, N'Martes', CAST(0x0000A13900EAD530 AS DateTime), CAST(0x0000A13900F5D1B0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 41, N'Viernes', CAST(0x0000A13900FFB4F0 AS DateTime), CAST(0x0000A139010A6B20 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (2, 166, N'Jueves', CAST(0x0000A13900EAD530 AS DateTime), CAST(0x0000A13900F5D1B0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 10, N'Martes', CAST(0x0000A13900EC34C0 AS DateTime), CAST(0x0000A13900F73140 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 31, N'Jueves', CAST(0x0000A13901011480 AS DateTime), CAST(0x0000A139010BCAB0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 31, N'Lunes', CAST(0x0000A13900EC34C0 AS DateTime), CAST(0x0000A13900F73140 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 31, N'Martes', CAST(0x0000A13901011480 AS DateTime), CAST(0x0000A139010BCAB0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 31, N'Miércoles', CAST(0x0000A13901011480 AS DateTime), CAST(0x0000A139010BCAB0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 31, N'Viernes', CAST(0x0000A13900EC34C0 AS DateTime), CAST(0x0000A13900F73140 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 33, N'Jueves', CAST(0x0000A13900FB4FF0 AS DateTime), CAST(0x0000A1390100CE30 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 33, N'Lunes', CAST(0x0000A13900FB4FF0 AS DateTime), CAST(0x0000A1390100CE30 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 33, N'Martes', CAST(0x0000A13900FB4FF0 AS DateTime), CAST(0x0000A1390100CE30 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 33, N'Miércoles', CAST(0x0000A13900FB4FF0 AS DateTime), CAST(0x0000A1390100CE30 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 33, N'Sábado', CAST(0x0000A13900FB4FF0 AS DateTime), CAST(0x0000A1390100CE30 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 36, N'Jueves', CAST(0x0000A139010E89D0 AS DateTime), CAST(0x0000A139011567A0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 36, N'Lunes', CAST(0x0000A139010E89D0 AS DateTime), CAST(0x0000A139011567A0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 36, N'Martes', CAST(0x0000A139010E89D0 AS DateTime), CAST(0x0000A139011567A0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 36, N'Miércoles', CAST(0x0000A139010E89D0 AS DateTime), CAST(0x0000A139011567A0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 36, N'Viernes', CAST(0x0000A139010E89D0 AS DateTime), CAST(0x0000A139011567A0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 39, N'Lunes', CAST(0x0000A13901011480 AS DateTime), CAST(0x0000A139010BCAB0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 39, N'Miércoles', CAST(0x0000A13900EC34C0 AS DateTime), CAST(0x0000A13900F73140 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 42, N'Viernes', CAST(0x0000A1390100CE30 AS DateTime), CAST(0x0000A139010BCAB0 AS DateTime), 10003)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (3, 167, N'Jueves', CAST(0x0000A13900EC34C0 AS DateTime), CAST(0x0000A13900F73140 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (4, 1, N'Jueves', CAST(0x0000A13900F05370 AS DateTime), CAST(0x0000A139010E89D0 AS DateTime), 10007)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (4, 1, N'Lunes', CAST(0x0000A1390100CE30 AS DateTime), CAST(0x0000A139010E89D0 AS DateTime), 10007)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (4, 1, N'Martes', CAST(0x0000A1390100CE30 AS DateTime), CAST(0x0000A139010E89D0 AS DateTime), 10007)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (4, 1, N'Miércoles', CAST(0x0000A13900F05370 AS DateTime), CAST(0x0000A13900FE0F10 AS DateTime), 10007)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (4, 1, N'Viernes', CAST(0x0000A13900F05370 AS DateTime), CAST(0x0000A13900FE0F10 AS DateTime), 10007)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (4, 2, N'Jueves', CAST(0x0000A13900DFD8B0 AS DateTime), CAST(0x0000A13900ED9450 AS DateTime), 10007)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (4, 2, N'Lunes', CAST(0x0000A13900DFD8B0 AS DateTime), CAST(0x0000A13900FE0F10 AS DateTime), 10007)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (4, 2, N'Martes', CAST(0x0000A13900F05370 AS DateTime), CAST(0x0000A13900FE0F10 AS DateTime), 10007)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (4, 2, N'Miércoles', CAST(0x0000A13900DFD8B0 AS DateTime), CAST(0x0000A13900ED9450 AS DateTime), 10007)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (4, 2, N'Viernes', CAST(0x0000A13900DFD8B0 AS DateTime), CAST(0x0000A13900ED9450 AS DateTime), 10007)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (4, 6, N'Miércoles', CAST(0x0000A1390100CE30 AS DateTime), CAST(0x0000A139010E89D0 AS DateTime), 10005)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (4, 17, N'Lunes', CAST(0x0000A139010FE960 AS DateTime), CAST(0x0000A139011DA500 AS DateTime), 10007)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (4, 17, N'Miércoles', CAST(0x0000A139010FE960 AS DateTime), CAST(0x0000A139011DA500 AS DateTime), 10007)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (4, 17, N'Viernes', CAST(0x0000A1390100CE30 AS DateTime), CAST(0x0000A139010E89D0 AS DateTime), 10007)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (4, 18, N'Martes', CAST(0x0000A139010FE960 AS DateTime), CAST(0x0000A139011DA500 AS DateTime), 10006)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (4, 19, N'Jueves', CAST(0x0000A139010FE960 AS DateTime), CAST(0x0000A139011DA500 AS DateTime), 10007)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (4, 20, N'Viernes', CAST(0x0000A139010FE960 AS DateTime), CAST(0x0000A139011DA500 AS DateTime), 10004)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (4, 21, N'Martes', CAST(0x0000A13900DFD8B0 AS DateTime), CAST(0x0000A13900ED9450 AS DateTime), 10007)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (9, 44, N'Jueves', CAST(0x0000A1390100CE30 AS DateTime), CAST(0x0000A139010E89D0 AS DateTime), 10003)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (9, 44, N'Lunes', CAST(0x0000A1390100CE30 AS DateTime), CAST(0x0000A139010E89D0 AS DateTime), 10003)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (9, 44, N'Martes', CAST(0x0000A13900F05370 AS DateTime), CAST(0x0000A13900FE0F10 AS DateTime), 10003)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (9, 44, N'Miércoles', CAST(0x0000A13900F05370 AS DateTime), CAST(0x0000A13900FE0F10 AS DateTime), 10003)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (9, 44, N'Viernes', CAST(0x0000A13900F05370 AS DateTime), CAST(0x0000A139010E89D0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (9, 49, N'Lunes', CAST(0x0000A13900DFD8B0 AS DateTime), CAST(0x0000A13900FE0F10 AS DateTime), 10003)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (9, 49, N'Martes', CAST(0x0000A13900DFD8B0 AS DateTime), CAST(0x0000A13900ED9450 AS DateTime), 10003)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (9, 49, N'Miércoles', CAST(0x0000A13900DFD8B0 AS DateTime), CAST(0x0000A13900ED9450 AS DateTime), 10003)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (9, 49, N'Viernes', CAST(0x0000A13900DFD8B0 AS DateTime), CAST(0x0000A13900ED9450 AS DateTime), 10003)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (9, 54, N'Miércoles', CAST(0x0000A1390100CE30 AS DateTime), CAST(0x0000A139011DA500 AS DateTime), 10003)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (9, 54, N'Viernes', CAST(0x0000A139010FE960 AS DateTime), CAST(0x0000A139011DA500 AS DateTime), 10003)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (9, 68, N'Martes', CAST(0x0000A139010FE960 AS DateTime), CAST(0x0000A139011DA500 AS DateTime), 10003)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (9, 71, N'Martes', CAST(0x0000A1390100CE30 AS DateTime), CAST(0x0000A139010E89D0 AS DateTime), 10005)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (9, 81, N'Jueves', CAST(0x0000A139010FE960 AS DateTime), CAST(0x0000A139011DA500 AS DateTime), 10004)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (9, 169, N'Lunes', CAST(0x0000A139010FE960 AS DateTime), CAST(0x0000A139011DA500 AS DateTime), 10006)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (10, 45, N'Lunes', CAST(0x0000A13901011480 AS DateTime), CAST(0x0000A139010E89D0 AS DateTime), 10009)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (10, 45, N'Martes', CAST(0x0000A13900DFD8B0 AS DateTime), CAST(0x0000A13900FE0F10 AS DateTime), 10009)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (10, 45, N'Miércoles', CAST(0x0000A13901011480 AS DateTime), CAST(0x0000A139010E89D0 AS DateTime), 10009)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (10, 45, N'Viernes', CAST(0x0000A13900F05370 AS DateTime), CAST(0x0000A13900FE0F10 AS DateTime), 10009)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (10, 50, N'Jueves', CAST(0x0000A1390100CE30 AS DateTime), CAST(0x0000A139010E89D0 AS DateTime), 10009)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (10, 50, N'Martes', CAST(0x0000A139010FE960 AS DateTime), CAST(0x0000A139011DA500 AS DateTime), 10009)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (10, 50, N'Miércoles', CAST(0x0000A13900DFD8B0 AS DateTime), CAST(0x0000A13900FE0F10 AS DateTime), 10009)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (10, 50, N'Viernes', CAST(0x0000A1390100CE30 AS DateTime), CAST(0x0000A139010E89D0 AS DateTime), 10009)
GO
print 'Processed 100 total records'
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (10, 55, N'Lunes', CAST(0x0000A13900DFD8B0 AS DateTime), CAST(0x0000A13900FE0F10 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (10, 55, N'Martes', CAST(0x0000A1390100CE30 AS DateTime), CAST(0x0000A139010E89D0 AS DateTime), 10009)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (10, 55, N'Viernes', CAST(0x0000A139010FE960 AS DateTime), CAST(0x0000A139011F0490 AS DateTime), 10009)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (10, 64, N'Lunes', CAST(0x0000A139010FE960 AS DateTime), CAST(0x0000A139011DA500 AS DateTime), 10011)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (10, 72, N'Jueves', CAST(0x0000A139010FE960 AS DateTime), CAST(0x0000A139011DA500 AS DateTime), 10005)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (10, 82, N'Viernes', CAST(0x0000A13900DFD8B0 AS DateTime), CAST(0x0000A13900ED9450 AS DateTime), 10004)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (10, 87, N'Jueves', CAST(0x0000A13900DFD8B0 AS DateTime), CAST(0x0000A13900ED9450 AS DateTime), 10009)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (10, 170, N'Miércoles', CAST(0x0000A139010FE960 AS DateTime), CAST(0x0000A139011DA500 AS DateTime), 10006)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 14, N'Jueves', CAST(0x0000A13900C46170 AS DateTime), CAST(0x0000A13900CDFE60 AS DateTime), 10028)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 14, N'Lunes', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), 10028)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 14, N'Martes', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), 10028)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 93, N'Lunes', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900A8EA30 AS DateTime), 10026)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 93, N'Miércoles', CAST(0x0000A139009E3400 AS DateTime), CAST(0x0000A13900C1A250 AS DateTime), 10026)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 98, N'Lunes', CAST(0x0000A13900ABA950 AS DateTime), CAST(0x0000A13900C1A250 AS DateTime), 10027)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 98, N'Miércoles', CAST(0x0000A13900C46170 AS DateTime), CAST(0x0000A13900D8FAE0 AS DateTime), 10027)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 101, N'Lunes', CAST(0x0000A13900C46170 AS DateTime), CAST(0x0000A13900D37CA0 AS DateTime), 10034)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 101, N'Viernes', CAST(0x0000A13900ABA950 AS DateTime), CAST(0x0000A13900C1A250 AS DateTime), 10034)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 103, N'Jueves', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A139009DEDB0 AS DateTime), 10029)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 103, N'Martes', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900A8EA30 AS DateTime), 10029)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 109, N'Martes', CAST(0x0000A13900B6EC20 AS DateTime), CAST(0x0000A13900D8FAE0 AS DateTime), 10030)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 111, N'Jueves', CAST(0x0000A13900ABA950 AS DateTime), CAST(0x0000A13900C1A250 AS DateTime), 10022)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 111, N'Martes', CAST(0x0000A13900ABA950 AS DateTime), CAST(0x0000A13900B6A5D0 AS DateTime), 10022)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 114, N'Miércoles', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A139009DEDB0 AS DateTime), 10035)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 114, N'Viernes', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), 10035)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 120, N'Jueves', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), 10027)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 123, N'Viernes', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900A8EA30 AS DateTime), 10014)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 126, N'Jueves', CAST(0x0000A1390107AC00 AS DateTime), CAST(0x0000A139011826C0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 126, N'Lunes', CAST(0x0000A1390107AC00 AS DateTime), CAST(0x0000A139011826C0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 126, N'Martes', CAST(0x0000A1390107AC00 AS DateTime), CAST(0x0000A139011826C0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (13, 126, N'Viernes', CAST(0x0000A13900E6B680 AS DateTime), CAST(0x0000A13900F73140 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 7, N'Jueves', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900A8EA30 AS DateTime), 10016)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 7, N'Viernes', CAST(0x0000A139009E3400 AS DateTime), CAST(0x0000A13900A8EA30 AS DateTime), 10016)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 8, N'Miércoles', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900B6A5D0 AS DateTime), 10037)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 94, N'Lunes', CAST(0x0000A13900B6EC20 AS DateTime), CAST(0x0000A13900CDFE60 AS DateTime), 10026)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 94, N'Martes', CAST(0x0000A13900ABA950 AS DateTime), CAST(0x0000A13900CDFE60 AS DateTime), 10026)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 104, N'Lunes', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A139009DEDB0 AS DateTime), 10029)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 112, N'Martes', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900853590 AS DateTime), 10022)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 112, N'Miércoles', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), 10022)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 115, N'Lunes', CAST(0x0000A139009E3400 AS DateTime), CAST(0x0000A13900B6A5D0 AS DateTime), 10036)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 115, N'Viernes', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A139009DEDB0 AS DateTime), 10036)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 124, N'Jueves', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), 10014)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 127, N'Jueves', CAST(0x0000A1390107AC00 AS DateTime), CAST(0x0000A139011826C0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 127, N'Lunes', CAST(0x0000A1390107AC00 AS DateTime), CAST(0x0000A139011826C0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 127, N'Martes', CAST(0x0000A1390107AC00 AS DateTime), CAST(0x0000A139011826C0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 127, N'Viernes', CAST(0x0000A13900E6B680 AS DateTime), CAST(0x0000A13900F73140 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 132, N'Jueves', CAST(0x0000A13900ABA950 AS DateTime), CAST(0x0000A13900C1A250 AS DateTime), 10025)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 132, N'Martes', CAST(0x0000A13900857BE0 AS DateTime), CAST(0x0000A13900A8EA30 AS DateTime), 10025)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 136, N'Miércoles', CAST(0x0000A13900B6EC20 AS DateTime), CAST(0x0000A13900D8FAE0 AS DateTime), 10023)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 154, N'Jueves', CAST(0x0000A13900C46170 AS DateTime), CAST(0x0000A13900D8FAE0 AS DateTime), 10027)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (16, 154, N'Viernes', CAST(0x0000A13900ABA950 AS DateTime), CAST(0x0000A13900C1A250 AS DateTime), 10038)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 90, N'Lunes', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900A8EA30 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 90, N'Martes', CAST(0x0000A13900ABA950 AS DateTime), CAST(0x0000A13900C1A250 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 95, N'Martes', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900A8EA30 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 95, N'Miércoles', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 105, N'Jueves', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 105, N'Lunes', CAST(0x0000A13900B6EC20 AS DateTime), CAST(0x0000A13900C1A250 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 116, N'Miércoles', CAST(0x0000A13900C4A7C0 AS DateTime), CAST(0x0000A13900D8FAE0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 116, N'Viernes', CAST(0x0000A139009E3400 AS DateTime), CAST(0x0000A13900B6A5D0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 121, N'Jueves', CAST(0x0000A13900C46170 AS DateTime), CAST(0x0000A13900D8FAE0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 121, N'Lunes', CAST(0x0000A13900ABA950 AS DateTime), CAST(0x0000A13900B6A5D0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 125, N'Martes', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 128, N'Jueves', CAST(0x0000A1390107AC00 AS DateTime), CAST(0x0000A139011826C0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 128, N'Lunes', CAST(0x0000A13900F890D0 AS DateTime), CAST(0x0000A13901090B90 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 128, N'Martes', CAST(0x0000A1390107AC00 AS DateTime), CAST(0x0000A139011826C0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 128, N'Viernes', CAST(0x0000A13900F73140 AS DateTime), CAST(0x0000A1390107AC00 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 133, N'Jueves', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900A8EA30 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 133, N'Lunes', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 137, N'Viernes', CAST(0x0000A13900C46170 AS DateTime), CAST(0x0000A13900D8FAE0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 139, N'Viernes', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A139009DEDB0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 155, N'Martes', CAST(0x0000A13900C46170 AS DateTime), CAST(0x0000A13900CDFE60 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 155, N'Miércoles', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900C46170 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (18, 172, N'Lunes', CAST(0x0000A13900C46170 AS DateTime), CAST(0x0000A13900CDFE60 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 91, N'Martes', CAST(0x0000A139009E3400 AS DateTime), CAST(0x0000A13900A8EA30 AS DateTime), 10028)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 91, N'Viernes', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900A8EA30 AS DateTime), 10028)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 96, N'Miércoles', CAST(0x0000A13900ABA950 AS DateTime), CAST(0x0000A13900C1A250 AS DateTime), 10041)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 96, N'Viernes', CAST(0x0000A13900C46170 AS DateTime), CAST(0x0000A13900CDFE60 AS DateTime), 10041)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 102, N'Miércoles', CAST(0x0000A13900C46170 AS DateTime), CAST(0x0000A13900D8FAE0 AS DateTime), 10020)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 106, N'Lunes', CAST(0x0000A139009E3400 AS DateTime), CAST(0x0000A13900B6A5D0 AS DateTime), 10029)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 106, N'Martes', CAST(0x0000A13900B6EC20 AS DateTime), CAST(0x0000A13900C1A250 AS DateTime), 10029)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 110, N'Lunes', CAST(0x0000A13900B6EC20 AS DateTime), CAST(0x0000A13900D8FAE0 AS DateTime), 10030)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 117, N'Jueves', CAST(0x0000A139009E3400 AS DateTime), CAST(0x0000A13900B6A5D0 AS DateTime), 10031)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 117, N'Miércoles', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), 10031)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 129, N'Jueves', CAST(0x0000A13901198650 AS DateTime), CAST(0x0000A139012A0110 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 129, N'Lunes', CAST(0x0000A13900F890D0 AS DateTime), CAST(0x0000A13901090B90 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 129, N'Martes', CAST(0x0000A13901198650 AS DateTime), CAST(0x0000A139012A0110 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 129, N'Viernes', CAST(0x0000A13900F73140 AS DateTime), CAST(0x0000A1390107AC00 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 141, N'Miércoles', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900A8EA30 AS DateTime), 10032)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 142, N'Jueves', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A139009DEDB0 AS DateTime), 10018)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 142, N'Lunes', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A139009DEDB0 AS DateTime), 10018)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 143, N'Viernes', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), 10030)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 144, N'Jueves', CAST(0x0000A13900B6EC20 AS DateTime), CAST(0x0000A13900D8FAE0 AS DateTime), 10017)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (19, 162, N'Martes', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A139009DEDB0 AS DateTime), 10021)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 92, N'Lunes', CAST(0x0000A13900ABA950 AS DateTime), CAST(0x0000A13900C1A250 AS DateTime), 10028)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 92, N'Viernes', CAST(0x0000A13900ABA950 AS DateTime), CAST(0x0000A13900B6A5D0 AS DateTime), 10028)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 97, N'Miércoles', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), 10041)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 97, N'Viernes', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900A8EA30 AS DateTime), 10026)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 107, N'Jueves', CAST(0x0000A139009E3400 AS DateTime), CAST(0x0000A13900A8EA30 AS DateTime), 10029)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 107, N'Martes', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), 10029)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 118, N'Jueves', CAST(0x0000A13900C46170 AS DateTime), CAST(0x0000A13900D8FAE0 AS DateTime), 10031)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 118, N'Viernes', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), 10031)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 122, N'Jueves', CAST(0x0000A13900ABA950 AS DateTime), CAST(0x0000A13900C1A250 AS DateTime), 10039)
GO
print 'Processed 200 total records'
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 122, N'Viernes', CAST(0x0000A13900B6EC20 AS DateTime), CAST(0x0000A13900D8FAE0 AS DateTime), 10039)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 130, N'Jueves', CAST(0x0000A13901198650 AS DateTime), CAST(0x0000A139012A0110 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 130, N'Lunes', CAST(0x0000A139011826C0 AS DateTime), CAST(0x0000A1390128A180 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 130, N'Martes', CAST(0x0000A13901198650 AS DateTime), CAST(0x0000A139012A0110 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 130, N'Viernes', CAST(0x0000A139011826C0 AS DateTime), CAST(0x0000A1390128A180 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 135, N'Jueves', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A139009DEDB0 AS DateTime), 10025)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 138, N'Lunes', CAST(0x0000A13900C46170 AS DateTime), CAST(0x0000A13900D8FAE0 AS DateTime), 10023)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 138, N'Miércoles', CAST(0x0000A13900ABA950 AS DateTime), CAST(0x0000A13900B6A5D0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 145, N'Martes', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900B6A5D0 AS DateTime), 10019)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 146, N'Lunes', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), 10016)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 146, N'Miércoles', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900A8EA30 AS DateTime), 10016)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 147, N'Martes', CAST(0x0000A13900B6EC20 AS DateTime), CAST(0x0000A13900D8FAE0 AS DateTime), 10042)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (20, 159, N'Lunes', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900A8EA30 AS DateTime), 10039)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 100, N'Lunes', CAST(0x0000A13900853590 AS DateTime), CAST(0x0000A13900903210 AS DateTime), 10026)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 100, N'Martes', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), 10026)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 108, N'Jueves', CAST(0x0000A13900B6EC20 AS DateTime), CAST(0x0000A13900CDFE60 AS DateTime), 10029)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 108, N'Martes', CAST(0x0000A13900ABA950 AS DateTime), CAST(0x0000A13900B6A5D0 AS DateTime), 10029)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 113, N'Lunes', CAST(0x0000A13900B6EC20 AS DateTime), CAST(0x0000A13900D8FAE0 AS DateTime), 10025)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 119, N'Miércoles', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900B6A5D0 AS DateTime), 10031)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 119, N'Viernes', CAST(0x0000A13900C46170 AS DateTime), CAST(0x0000A13900CDFE60 AS DateTime), 10031)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 131, N'Jueves', CAST(0x0000A13901198650 AS DateTime), CAST(0x0000A139012A0110 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 131, N'Lunes', CAST(0x0000A139011826C0 AS DateTime), CAST(0x0000A1390128A180 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 131, N'Martes', CAST(0x0000A13901198650 AS DateTime), CAST(0x0000A139012A0110 AS DateTime), 10005)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 131, N'Viernes', CAST(0x0000A1390107AC00 AS DateTime), CAST(0x0000A139011826C0 AS DateTime), NULL)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 140, N'Jueves', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), 10016)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 140, N'Miércoles', CAST(0x0000A139007A3910 AS DateTime), CAST(0x0000A13900903210 AS DateTime), 10016)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 148, N'Miércoles', CAST(0x0000A13900B6EC20 AS DateTime), CAST(0x0000A13900D8FAE0 AS DateTime), 10032)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 149, N'Martes', CAST(0x0000A13900B6EC20 AS DateTime), CAST(0x0000A13900D8FAE0 AS DateTime), 10031)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 150, N'Jueves', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900B6A5D0 AS DateTime), 10017)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 151, N'Viernes', CAST(0x0000A13900ABA950 AS DateTime), CAST(0x0000A13900C1A250 AS DateTime), 10033)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 161, N'Martes', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900A8EA30 AS DateTime), 10030)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 161, N'Viernes', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900A8EA30 AS DateTime), 10030)
INSERT [dbo].[HorarioCurso] ([idCurso], [idAsignatura], [diaSemana], [horaInicio], [horaFin], [legajoDocente]) VALUES (28, 164, N'Lunes', CAST(0x0000A1390092F130 AS DateTime), CAST(0x0000A13900B6A5D0 AS DateTime), 10019)
/****** Object:  Table [dbo].[GrupoFamiliar]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoFamiliar](
	[idTutor] [int] NOT NULL,
	[legajoAlumno] [int] NOT NULL,
 CONSTRAINT [PK_TutorPorAlumno] PRIMARY KEY CLUSTERED 
(
	[legajoAlumno] ASC,
	[idTutor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (2, 100002)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (3, 100003)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (4, 100004)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (5, 100005)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (7, 100007)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (8, 100008)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (9, 100009)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (10, 100010)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (11, 100011)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (12, 100012)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (13, 100013)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (14, 100014)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (15, 100015)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (16, 100016)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (17, 100017)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (18, 100018)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (19, 100019)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (20, 100020)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (21, 100021)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (22, 100022)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (23, 100023)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (24, 100024)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (25, 100025)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (26, 100026)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (27, 100027)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (28, 100028)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (29, 100029)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (14, 100030)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (30, 100031)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (31, 100032)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (7, 100033)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (32, 100034)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (11, 100035)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (33, 100036)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (34, 100037)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (35, 100038)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (36, 100039)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (37, 100040)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (38, 100041)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (39, 100042)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (40, 100043)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (41, 100044)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (42, 100045)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (43, 100046)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (44, 100047)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (23, 100048)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (25, 100049)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (45, 100050)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (46, 100051)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (36, 100052)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (48, 100053)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (49, 100054)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (50, 100055)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (51, 100056)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (52, 100057)
INSERT [dbo].[GrupoFamiliar] ([idTutor], [legajoAlumno]) VALUES (53, 100058)
/****** Object:  Table [dbo].[CuotaGrupoFamiliar]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CuotaGrupoFamiliar](
	[idCuotaGrupoFamiliar] [int] NOT NULL,
	[idTutor] [int] NOT NULL,
	[cicloLectivo] [int] NOT NULL,
	[numero] [int] NOT NULL,
	[mes] [varchar](50) NOT NULL,
	[idCuota] [int] NOT NULL,
	[montoCobrado] [money] NOT NULL,
 CONSTRAINT [PK_Cuota] PRIMARY KEY CLUSTERED 
(
	[idCuotaGrupoFamiliar] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CuotaGrupoFamiliar] ([idCuotaGrupoFamiliar], [idTutor], [cicloLectivo], [numero], [mes], [idCuota], [montoCobrado]) VALUES (1, 7, 2014, 1, N'Marzo', 2, 270.0000)
INSERT [dbo].[CuotaGrupoFamiliar] ([idCuotaGrupoFamiliar], [idTutor], [cicloLectivo], [numero], [mes], [idCuota], [montoCobrado]) VALUES (2, 7, 2014, 2, N'Abril', 2, 270.0000)
INSERT [dbo].[CuotaGrupoFamiliar] ([idCuotaGrupoFamiliar], [idTutor], [cicloLectivo], [numero], [mes], [idCuota], [montoCobrado]) VALUES (3, 2, 2014, 1, N'Marzo', 1, 150.0000)
/****** Object:  Table [dbo].[CargoPorDocente]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CargoPorDocente](
	[legajoDocente] [int] NOT NULL,
	[idCargo] [int] NOT NULL,
	[fechaInicio] [datetime] NOT NULL,
	[fechaFin] [datetime] NULL,
 CONSTRAINT [PK_CargoPorDocente] PRIMARY KEY CLUSTERED 
(
	[legajoDocente] ASC,
	[idCargo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10001, 1, CAST(0x0000A3D200000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10001, 13, CAST(0x000096FF00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10002, 16, CAST(0x000096FF00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10002, 46, CAST(0x000096FF00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10002, 47, CAST(0x000096FF00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10002, 48, CAST(0x000096FF00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10003, 10, CAST(0x0000A40400000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10003, 26, CAST(0x000073D400000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10004, 21, CAST(0x00009A4600000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10004, 25, CAST(0x00009AFC00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10004, 29, CAST(0x00009AFC00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10004, 33, CAST(0x00009AFC00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10004, 37, CAST(0x00009AFC00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10004, 41, CAST(0x00009AFC00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10004, 56, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10005, 19, CAST(0x0000775000000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10005, 23, CAST(0x0000775000000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10005, 27, CAST(0x0000775000000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10005, 31, CAST(0x0000775000000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10005, 35, CAST(0x0000775000000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10005, 39, CAST(0x0000775000000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10006, 6, CAST(0x0000A3D200000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10006, 9, CAST(0x0000A3D200000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10006, 12, CAST(0x0000A3D200000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10006, 20, CAST(0x00009E9900000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10006, 24, CAST(0x00009E9900000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10006, 28, CAST(0x00009E9900000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10006, 32, CAST(0x0000A2A600000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10006, 36, CAST(0x00009E9900000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10006, 40, CAST(0x00009E9900000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10007, 18, CAST(0x0000A3D000000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10008, 22, CAST(0x0000A3D500000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10009, 30, CAST(0x0000954100000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10010, 18, CAST(0x000094F900000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10010, 38, CAST(0x0000A3D500000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10011, 43, CAST(0x0000A3D100000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10011, 44, CAST(0x0000A3D100000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10011, 45, CAST(0x0000A3D100000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10012, 4, CAST(0x0000A3D200000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10012, 21, CAST(0x00009A4600000000 AS DateTime), CAST(0x0000A3D500000000 AS DateTime))
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10013, 7, CAST(0x0000A3D200000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10014, 10, CAST(0x0000A3D200000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10014, 50, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10014, 54, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10014, 55, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10015, 5, CAST(0x0000A3D200000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10015, 8, CAST(0x0000A3D200000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10015, 11, CAST(0x0000A3D200000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10016, 50, CAST(0x0000A3EA00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10017, 51, CAST(0x0000A3EA00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10017, 52, CAST(0x0000A3EA00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10018, 52, CAST(0x0000A3EA00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10019, 53, CAST(0x0000A3EA00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10020, 53, CAST(0x0000A3EA00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10021, 51, CAST(0x0000A3EA00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10021, 52, CAST(0x0000A3EF00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10022, 50, CAST(0x0000A3EA00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10022, 54, CAST(0x0000A3EA00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10023, 53, CAST(0x0000A3EA00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10023, 54, CAST(0x0000A3EA00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10023, 55, CAST(0x0000A3EA00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10024, 52, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10024, 53, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10025, 52, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10025, 53, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10025, 54, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10026, 50, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10026, 51, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10026, 53, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10026, 54, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10026, 55, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10027, 50, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10027, 54, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10027, 55, CAST(0x0000A3EF00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10028, 50, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10028, 52, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10028, 53, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10028, 55, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10029, 50, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10029, 51, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10029, 52, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10029, 53, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10029, 54, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10029, 55, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10030, 50, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10030, 51, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10030, 52, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10030, 53, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10030, 55, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10031, 51, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10031, 52, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10031, 53, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10031, 55, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10032, 51, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10032, 52, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10033, 51, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10033, 53, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10034, 49, CAST(0x0000A3EF00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10034, 50, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10035, 50, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10035, 55, CAST(0x0000A3EE00000000 AS DateTime), NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10036, 54, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10037, 54, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10038, 50, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10038, 54, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10039, 51, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10039, 53, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10039, 55, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10040, 55, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10041, 52, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10041, 53, CAST(0x0000A3EE00000000 AS DateTime), NULL)
INSERT [dbo].[CargoPorDocente] ([legajoDocente], [idCargo], [fechaInicio], [fechaFin]) VALUES (10042, 53, CAST(0x0000A3EE00000000 AS DateTime), NULL)
/****** Object:  Table [dbo].[CalificacionEscolar]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalificacionEscolar](
	[idCurso] [int] NOT NULL,
	[idAsignatura] [int] NOT NULL,
	[legajoAlumno] [int] NOT NULL,
	[etapa] [varchar](20) NOT NULL,
	[nroCalificacion] [int] NOT NULL,
	[motivo] [varchar](50) NULL,
	[calificacion] [varchar](5000) NULL,
	[modificacion] [varchar](200) NULL,
 CONSTRAINT [PK_CalificacionEscolarX] PRIMARY KEY CLUSTERED 
(
	[idCurso] ASC,
	[idAsignatura] ASC,
	[legajoAlumno] ASC,
	[etapa] ASC,
	[nroCalificacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BecaEstudiantil]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BecaEstudiantil](
	[legajoAlumno] [int] NOT NULL,
	[fechaInicio] [datetime] NOT NULL,
	[fechaFin] [datetime] NOT NULL,
	[motivo] [varchar](50) NOT NULL,
	[descuento] [money] NOT NULL,
 CONSTRAINT [PK_BecaEstudiantil] PRIMARY KEY CLUSTERED 
(
	[legajoAlumno] ASC,
	[fechaInicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BajaPersonalMaestranza]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BajaPersonalMaestranza](
	[idBajaMaestranza] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[legajoPersonalMaestranza] [int] NOT NULL,
	[motivo] [varchar](200) NULL,
 CONSTRAINT [PK_BajaPersonalMaestranza] PRIMARY KEY CLUSTERED 
(
	[idBajaMaestranza] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BajaDocente]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BajaDocente](
	[idBajaDocente] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[legajoDocente] [int] NOT NULL,
	[motivo] [varchar](200) NULL,
 CONSTRAINT [PK_BajaDocente] PRIMARY KEY CLUSTERED 
(
	[idBajaDocente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BajaAlumno]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BajaAlumno](
	[idBajaAlumno] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[legajoAlumno] [int] NOT NULL,
	[motivo] [varchar](200) NULL,
 CONSTRAINT [PK_BajaAlumno] PRIMARY KEY CLUSTERED 
(
	[idBajaAlumno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AsistenciaPersonalMaestranza]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AsistenciaPersonalMaestranza](
	[legajoPersonalMaestranza] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[presente] [int] NOT NULL,
	[horaEntrada] [datetime] NULL,
	[horaSalida] [datetime] NULL,
	[justificacion] [varchar](50) NULL,
 CONSTRAINT [PK_AsistenciaNoDocente] PRIMARY KEY CLUSTERED 
(
	[legajoPersonalMaestranza] ASC,
	[fecha] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AsistenciaPersonalMaestranza] ([legajoPersonalMaestranza], [fecha], [presente], [horaEntrada], [horaSalida], [justificacion]) VALUES (1001, CAST(0x0000A3C500000000 AS DateTime), 0, NULL, NULL, N'Atencion familiar')
INSERT [dbo].[AsistenciaPersonalMaestranza] ([legajoPersonalMaestranza], [fecha], [presente], [horaEntrada], [horaSalida], [justificacion]) VALUES (1002, CAST(0x0000A3C500000000 AS DateTime), 1, CAST(0x0000A13900F73140 AS DateTime), CAST(0x0000A13901391C40 AS DateTime), NULL)
INSERT [dbo].[AsistenciaPersonalMaestranza] ([legajoPersonalMaestranza], [fecha], [presente], [horaEntrada], [horaSalida], [justificacion]) VALUES (1003, CAST(0x0000A3C500000000 AS DateTime), 1, CAST(0x0000A1390107AC00 AS DateTime), CAST(0x0000A13901391C40 AS DateTime), NULL)
/****** Object:  Table [dbo].[AsistenciaDocente]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsistenciaDocente](
	[legajoDocente] [int] NOT NULL,
	[idCurso] [int] NOT NULL,
	[idAsignatura] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[presente] [int] NOT NULL,
	[idMovimientoAltaBaja] [int] NULL,
 CONSTRAINT [PK_AsistenciaDocente] PRIMARY KEY CLUSTERED 
(
	[legajoDocente] ASC,
	[idCurso] ASC,
	[idAsignatura] ASC,
	[fecha] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AsistenciaAlumno]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AsistenciaAlumno](
	[legajoAlumno] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[presente] [int] NOT NULL,
	[justificacion] [varchar](50) NULL,
 CONSTRAINT [PK_AsistenciaAlumno] PRIMARY KEY CLUSTERED 
(
	[legajoAlumno] ASC,
	[fecha] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AsistenciaAlumno] ([legajoAlumno], [fecha], [presente], [justificacion]) VALUES (100047, CAST(0x0000A3E200000000 AS DateTime), 0, N'ausente por enfermedad')
INSERT [dbo].[AsistenciaAlumno] ([legajoAlumno], [fecha], [presente], [justificacion]) VALUES (100047, CAST(0x0000A3E300000000 AS DateTime), 0, N'ausente por enfermedad')
INSERT [dbo].[AsistenciaAlumno] ([legajoAlumno], [fecha], [presente], [justificacion]) VALUES (100047, CAST(0x0000A3E400000000 AS DateTime), 1, NULL)
INSERT [dbo].[AsistenciaAlumno] ([legajoAlumno], [fecha], [presente], [justificacion]) VALUES (100048, CAST(0x0000A3E200000000 AS DateTime), 1, NULL)
INSERT [dbo].[AsistenciaAlumno] ([legajoAlumno], [fecha], [presente], [justificacion]) VALUES (100048, CAST(0x0000A3E300000000 AS DateTime), 1, NULL)
INSERT [dbo].[AsistenciaAlumno] ([legajoAlumno], [fecha], [presente], [justificacion]) VALUES (100048, CAST(0x0000A3E400000000 AS DateTime), 1, NULL)
INSERT [dbo].[AsistenciaAlumno] ([legajoAlumno], [fecha], [presente], [justificacion]) VALUES (100049, CAST(0x0000A3E200000000 AS DateTime), 1, NULL)
INSERT [dbo].[AsistenciaAlumno] ([legajoAlumno], [fecha], [presente], [justificacion]) VALUES (100049, CAST(0x0000A3E300000000 AS DateTime), 1, NULL)
INSERT [dbo].[AsistenciaAlumno] ([legajoAlumno], [fecha], [presente], [justificacion]) VALUES (100049, CAST(0x0000A3E400000000 AS DateTime), 1, NULL)
INSERT [dbo].[AsistenciaAlumno] ([legajoAlumno], [fecha], [presente], [justificacion]) VALUES (100050, CAST(0x0000A3E200000000 AS DateTime), 1, NULL)
INSERT [dbo].[AsistenciaAlumno] ([legajoAlumno], [fecha], [presente], [justificacion]) VALUES (100050, CAST(0x0000A3E300000000 AS DateTime), 1, NULL)
INSERT [dbo].[AsistenciaAlumno] ([legajoAlumno], [fecha], [presente], [justificacion]) VALUES (100050, CAST(0x0000A3E400000000 AS DateTime), 1, NULL)
INSERT [dbo].[AsistenciaAlumno] ([legajoAlumno], [fecha], [presente], [justificacion]) VALUES (100051, CAST(0x0000A3E200000000 AS DateTime), 1, NULL)
INSERT [dbo].[AsistenciaAlumno] ([legajoAlumno], [fecha], [presente], [justificacion]) VALUES (100051, CAST(0x0000A3E300000000 AS DateTime), 1, NULL)
INSERT [dbo].[AsistenciaAlumno] ([legajoAlumno], [fecha], [presente], [justificacion]) VALUES (100051, CAST(0x0000A3E400000000 AS DateTime), 1, NULL)
INSERT [dbo].[AsistenciaAlumno] ([legajoAlumno], [fecha], [presente], [justificacion]) VALUES (100052, CAST(0x0000A3E200000000 AS DateTime), 1, NULL)
INSERT [dbo].[AsistenciaAlumno] ([legajoAlumno], [fecha], [presente], [justificacion]) VALUES (100052, CAST(0x0000A3E300000000 AS DateTime), 1, NULL)
INSERT [dbo].[AsistenciaAlumno] ([legajoAlumno], [fecha], [presente], [justificacion]) VALUES (100052, CAST(0x0000A3E400000000 AS DateTime), 1, NULL)
/****** Object:  Table [dbo].[AsignaturaPorDocente]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsignaturaPorDocente](
	[legajoDocente] [int] NOT NULL,
	[idAsignatura] [int] NOT NULL,
 CONSTRAINT [PK_AsignaturaPorDocente] PRIMARY KEY CLUSTERED 
(
	[legajoDocente] ASC,
	[idAsignatura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10001, 1)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10002, 17)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10003, 42)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10003, 44)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10003, 49)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10003, 54)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10003, 60)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10003, 68)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10003, 86)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10004, 20)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10004, 80)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10004, 81)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10004, 82)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10004, 83)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10004, 84)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10005, 6)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10005, 70)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10005, 71)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10005, 72)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10005, 73)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10005, 74)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10005, 126)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10005, 127)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10005, 128)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10005, 129)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10005, 130)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10005, 131)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10006, 18)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10006, 37)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10006, 38)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10006, 39)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10006, 78)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10006, 79)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10006, 169)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10006, 170)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10007, 1)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10007, 2)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10007, 17)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10007, 19)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10007, 21)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10007, 58)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10008, 43)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10008, 48)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10008, 53)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10008, 59)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10008, 67)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10008, 85)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10009, 45)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10009, 50)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10009, 55)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10009, 61)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10009, 64)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10009, 87)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10010, 47)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10010, 52)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10010, 57)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10010, 63)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10010, 66)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10010, 89)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10011, 64)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10011, 65)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10011, 66)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10012, 22)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10012, 24)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10012, 25)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10012, 26)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10013, 30)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10013, 32)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10013, 34)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10013, 35)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10014, 10)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10014, 31)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10014, 33)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10014, 36)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10014, 123)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10014, 124)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10014, 125)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10015, 40)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10015, 41)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10015, 42)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10016, 7)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10016, 139)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10016, 140)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10016, 146)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10017, 144)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10017, 150)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10018, 142)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10019, 145)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10019, 164)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10020, 102)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10021, 162)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10022, 111)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10022, 112)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10023, 136)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10023, 137)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10023, 138)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10023, 163)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10024, 157)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10025, 113)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10025, 132)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10025, 134)
GO
print 'Processed 100 total records'
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10025, 135)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10026, 93)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10026, 94)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10026, 95)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10026, 97)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10026, 100)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10027, 98)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10027, 120)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10027, 154)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10027, 172)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10028, 14)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10028, 90)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10028, 91)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10028, 92)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10029, 103)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10029, 104)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10029, 105)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10029, 106)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10029, 107)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10029, 108)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10030, 109)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10030, 110)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10030, 143)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10030, 161)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10031, 116)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10031, 117)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10031, 118)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10031, 119)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10031, 149)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10032, 141)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10032, 148)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10033, 151)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10034, 101)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10035, 114)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10035, 133)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10036, 115)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10037, 8)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10038, 98)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10038, 154)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10039, 121)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10039, 122)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10039, 159)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10039, 160)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10040, 155)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10041, 96)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10041, 97)
INSERT [dbo].[AsignaturaPorDocente] ([legajoDocente], [idAsignatura]) VALUES (10042, 147)
/****** Object:  Table [dbo].[AltaPersonalMaestranza]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AltaPersonalMaestranza](
	[idAltaPersonalMaestranza] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[legajoPersonalMaestranza] [int] NOT NULL,
 CONSTRAINT [PK_AltaPersonalMaestranza] PRIMARY KEY CLUSTERED 
(
	[idAltaPersonalMaestranza] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AltaDocente]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AltaDocente](
	[idAltaDocente] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[legajoDocente] [int] NOT NULL,
 CONSTRAINT [PK_AltaDocente] PRIMARY KEY CLUSTERED 
(
	[idAltaDocente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AltaAlumno]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AltaAlumno](
	[idAltaAlumno] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[legajoAlumno] [int] NOT NULL,
 CONSTRAINT [PK_AltaAlumno] PRIMARY KEY CLUSTERED 
(
	[idAltaAlumno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TituloPorDocente]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TituloPorDocente](
	[legajoDocente] [int] NOT NULL,
	[idTitulo] [int] NOT NULL,
 CONSTRAINT [PK_TituloPorDocente] PRIMARY KEY CLUSTERED 
(
	[legajoDocente] ASC,
	[idTitulo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10001, 3)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10002, 3)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10003, 3)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10004, 9)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10005, 10)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10006, 11)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10007, 8)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10008, 9)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10009, 9)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10010, 9)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10011, 9)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10012, 12)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10013, 12)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10014, 12)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10015, 12)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10016, 1)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10016, 34)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10017, 29)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10017, 35)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10018, 6)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10019, 31)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10020, 37)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10021, 1)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10022, 38)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10023, 9)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10024, 39)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10025, 40)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10026, 30)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10027, 8)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10028, 29)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10028, 36)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10029, 9)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10029, 33)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10030, 9)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10030, 23)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10031, 26)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10032, 20)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10033, 27)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10034, 29)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10035, 41)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10036, 26)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10037, 29)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10038, 23)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10039, 25)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10040, 4)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10041, 30)
INSERT [dbo].[TituloPorDocente] ([legajoDocente], [idTitulo]) VALUES (10042, 28)
/****** Object:  Table [dbo].[TemarioDictado]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TemarioDictado](
	[idCurso] [int] NOT NULL,
	[idAsignatura] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[temasClase] [varchar](500) NOT NULL,
	[legajoDocente] [int] NOT NULL,
 CONSTRAINT [PK_TemarioDictado] PRIMARY KEY CLUSTERED 
(
	[idCurso] ASC,
	[idAsignatura] ASC,
	[fecha] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TemarioDictado] ([idCurso], [idAsignatura], [fecha], [temasClase], [legajoDocente]) VALUES (9, 44, CAST(0xFFFFF82000000000 AS DateTime), N' prueba ', 10003)
INSERT [dbo].[TemarioDictado] ([idCurso], [idAsignatura], [fecha], [temasClase], [legajoDocente]) VALUES (9, 44, CAST(0x0000A3E200000000 AS DateTime), N'Presentacion de la asignatura a los alumnos del curso.', 10003)
INSERT [dbo].[TemarioDictado] ([idCurso], [idAsignatura], [fecha], [temasClase], [legajoDocente]) VALUES (9, 44, CAST(0x0000A3F000000000 AS DateTime), N'ESTO ES UNA PRUEBA', 10003)
/****** Object:  Table [dbo].[SuplenciaDocente]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SuplenciaDocente](
	[idCurso] [int] NOT NULL,
	[idAsignatura] [int] NOT NULL,
	[diaSemana] [varchar](50) NOT NULL,
	[fechaInicio] [datetime] NOT NULL,
	[fechaFin] [datetime] NOT NULL,
	[legajoDocente] [int] NOT NULL,
 CONSTRAINT [PK_SuplenciaDocente] PRIMARY KEY CLUSTERED 
(
	[idCurso] ASC,
	[idAsignatura] ASC,
	[diaSemana] ASC,
	[fechaInicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SancionDisciplinaria]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SancionDisciplinaria](
	[legajoAlumno] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[hora] [datetime] NOT NULL,
	[sancion] [varchar](50) NOT NULL,
	[motivo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SancionDisciplinaria] PRIMARY KEY CLUSTERED 
(
	[legajoAlumno] ASC,
	[fecha] ASC,
	[hora] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SancionDisciplinaria] ([legajoAlumno], [fecha], [hora], [sancion], [motivo]) VALUES (100002, CAST(0x0000A3E300000000 AS DateTime), CAST(0x0000A13900F73140 AS DateTime), N'Comunicado escrito al Tutor', N'Mal comportamiento en clase')
/****** Object:  Table [dbo].[Reincorporacion]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reincorporacion](
	[cicloLectivo] [int] NOT NULL,
	[legajoAlumno] [int] NOT NULL,
	[reincorporaciones] [int] NOT NULL,
	[fechaUltimaReincorporacion] [datetime] NOT NULL,
 CONSTRAINT [PK_Reincorporacion] PRIMARY KEY CLUSTERED 
(
	[cicloLectivo] ASC,
	[legajoAlumno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonaAutorizada]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PersonaAutorizada](
	[idTutor] [int] NOT NULL,
	[nroDocumento] [int] NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NULL,
	[relacion] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_PersonaAutorizada] PRIMARY KEY CLUSTERED 
(
	[idTutor] ASC,
	[nroDocumento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PersonaAutorizada] ([idTutor], [nroDocumento], [apellido], [telefono], [relacion], [nombre]) VALUES (2, 0, N'', N'', N'', NULL)
INSERT [dbo].[PersonaAutorizada] ([idTutor], [nroDocumento], [apellido], [telefono], [relacion], [nombre]) VALUES (2, 12345679, N'messi', N'123456', N'amante', NULL)
INSERT [dbo].[PersonaAutorizada] ([idTutor], [nroDocumento], [apellido], [telefono], [relacion], [nombre]) VALUES (3, 12345678, N'DiMAria', N'123456', N'amigo', NULL)
/****** Object:  Table [dbo].[PaseEscolar]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaseEscolar](
	[legajoAlumno] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[motivo] [varchar](50) NULL,
	[colegioOrigen] [varchar](50) NOT NULL,
	[colegioDestino] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PaseEscolar] PRIMARY KEY CLUSTERED 
(
	[legajoAlumno] ASC,
	[fecha] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComunicadoWeb]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComunicadoWeb](
	[idComunicadoWeb] [int] IDENTITY(1,1) NOT NULL,
	[idCurso] [int] NOT NULL,
	[legajoDocente] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[comunicado] [varchar](200) NOT NULL,
 CONSTRAINT [PK_ComunicadoWeb] PRIMARY KEY CLUSTERED 
(
	[idComunicadoWeb] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ComunicadoWeb] ON
INSERT [dbo].[ComunicadoWeb] ([idComunicadoWeb], [idCurso], [legajoDocente], [fecha], [comunicado]) VALUES (2, 9, 10003, CAST(0x0000A3E100000000 AS DateTime), N'Primer comunicado')
INSERT [dbo].[ComunicadoWeb] ([idComunicadoWeb], [idCurso], [legajoDocente], [fecha], [comunicado]) VALUES (3, 9, 10003, CAST(0x0000A3DA00000000 AS DateTime), N'Segundo comunicado')
INSERT [dbo].[ComunicadoWeb] ([idComunicadoWeb], [idCurso], [legajoDocente], [fecha], [comunicado]) VALUES (4, 9, 10003, CAST(0x0000A3DF00000000 AS DateTime), N'Tercer comunicado')
INSERT [dbo].[ComunicadoWeb] ([idComunicadoWeb], [idCurso], [legajoDocente], [fecha], [comunicado]) VALUES (5, 9, 10003, CAST(0xFFFFF82400000000 AS DateTime), N' djskdfjskfjs ')
INSERT [dbo].[ComunicadoWeb] ([idComunicadoWeb], [idCurso], [legajoDocente], [fecha], [comunicado]) VALUES (6, 9, 10003, CAST(0x0000271300000000 AS DateTime), N' 20-12.2014 ')
INSERT [dbo].[ComunicadoWeb] ([idComunicadoWeb], [idCurso], [legajoDocente], [fecha], [comunicado]) VALUES (7, 9, 10003, CAST(0x0000271300000000 AS DateTime), N' 20-12.2014 ')
SET IDENTITY_INSERT [dbo].[ComunicadoWeb] OFF
/****** Object:  Table [dbo].[MatriculaAlumno]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatriculaAlumno](
	[idMatriculaAlumno] [int] NOT NULL,
	[legajoAlumno] [int] NOT NULL,
	[cicloLectivo] [int] NOT NULL,
	[idMatricula] [int] NOT NULL,
	[montoCobrado] [money] NOT NULL,
 CONSTRAINT [PK_MatriculaAlumno] PRIMARY KEY CLUSTERED 
(
	[idMatriculaAlumno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[MatriculaAlumno] ([idMatriculaAlumno], [legajoAlumno], [cicloLectivo], [idMatricula], [montoCobrado]) VALUES (1, 100007, 2014, 3, 170.0000)
/****** Object:  Table [dbo].[MovimientoCaja]    Script Date: 01/10/2015 18:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovimientoCaja](
	[idCaja] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[idMovimientoCaja] [int] NOT NULL,
	[tipoMovimiento] [varchar](10) NOT NULL,
	[nroComprobante] [varchar](50) NULL,
	[descripcion] [varchar](50) NOT NULL,
	[importe] [money] NOT NULL,
	[idCuotaGrupoFamiliar] [int] NULL,
	[idMatriculaAlumno] [int] NULL,
 CONSTRAINT [PK_MovimientoCaja] PRIMARY KEY CLUSTERED 
(
	[idCaja] ASC,
	[fecha] ASC,
	[idMovimientoCaja] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MovimientoCaja] ([idCaja], [fecha], [idMovimientoCaja], [tipoMovimiento], [nroComprobante], [descripcion], [importe], [idCuotaGrupoFamiliar], [idMatriculaAlumno]) VALUES (1, CAST(0x0000A3E700000000 AS DateTime), 1, N'Ingreso', N'0000-00000023', N'Cobro de Cuota a Grupo Familiar', 270.0000, 1, NULL)
INSERT [dbo].[MovimientoCaja] ([idCaja], [fecha], [idMovimientoCaja], [tipoMovimiento], [nroComprobante], [descripcion], [importe], [idCuotaGrupoFamiliar], [idMatriculaAlumno]) VALUES (1, CAST(0x0000A3E700000000 AS DateTime), 2, N'Ingreso', N'0000-00000024', N'Cobro de Matrícula a Alumno', 170.0000, NULL, 1)
INSERT [dbo].[MovimientoCaja] ([idCaja], [fecha], [idMovimientoCaja], [tipoMovimiento], [nroComprobante], [descripcion], [importe], [idCuotaGrupoFamiliar], [idMatriculaAlumno]) VALUES (1, CAST(0x0000A3E700000000 AS DateTime), 3, N'Ingreso', N'0000-00000025', N'Cobro de Cuota a Grupo Familiar', 270.0000, 2, NULL)
INSERT [dbo].[MovimientoCaja] ([idCaja], [fecha], [idMovimientoCaja], [tipoMovimiento], [nroComprobante], [descripcion], [importe], [idCuotaGrupoFamiliar], [idMatriculaAlumno]) VALUES (1, CAST(0x0000A3F800000000 AS DateTime), 1, N'Ingreso', N'0000-00000026', N'Cobro de Cuota a Grupo Familiar', 150.0000, 3, NULL)
/****** Object:  Default [DF_Caja_saldo]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Caja] ADD  CONSTRAINT [DF_Caja_saldo]  DEFAULT ((0)) FOR [saldoInicial]
GO
/****** Object:  ForeignKey [FK_Usuario_PerfilUsuario]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_PerfilUsuario] FOREIGN KEY([idPerfilUsuario])
REFERENCES [dbo].[PerfilUsuario] ([idPerfilUsuario])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_PerfilUsuario]
GO
/****** Object:  ForeignKey [FK_Provincia_Pais]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[ProvinciaEstado]  WITH CHECK ADD  CONSTRAINT [FK_Provincia_Pais] FOREIGN KEY([idPais])
REFERENCES [dbo].[Pais] ([idPais])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProvinciaEstado] CHECK CONSTRAINT [FK_Provincia_Pais]
GO
/****** Object:  ForeignKey [FK_Asignatura_NivelEducativo]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Asignatura]  WITH CHECK ADD  CONSTRAINT [FK_Asignatura_NivelEducativo] FOREIGN KEY([idNivelEducativo])
REFERENCES [dbo].[NivelEducativo] ([idNivelEducativo])
GO
ALTER TABLE [dbo].[Asignatura] CHECK CONSTRAINT [FK_Asignatura_NivelEducativo]
GO
/****** Object:  ForeignKey [FK_Cargo_NivelEducativo]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Cargo]  WITH CHECK ADD  CONSTRAINT [FK_Cargo_NivelEducativo] FOREIGN KEY([idNivelEducativo])
REFERENCES [dbo].[NivelEducativo] ([idNivelEducativo])
GO
ALTER TABLE [dbo].[Cargo] CHECK CONSTRAINT [FK_Cargo_NivelEducativo]
GO
/****** Object:  ForeignKey [FK_Aula_Estado]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Aula]  WITH CHECK ADD  CONSTRAINT [FK_Aula_Estado] FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estado] ([idEstado])
GO
ALTER TABLE [dbo].[Aula] CHECK CONSTRAINT [FK_Aula_Estado]
GO
/****** Object:  ForeignKey [FK_Curso_Aula]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD  CONSTRAINT [FK_Curso_Aula] FOREIGN KEY([idAula])
REFERENCES [dbo].[Aula] ([idAula])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Curso] CHECK CONSTRAINT [FK_Curso_Aula]
GO
/****** Object:  ForeignKey [FK_Curso_CicloLectivo]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD  CONSTRAINT [FK_Curso_CicloLectivo] FOREIGN KEY([cicloLectivo])
REFERENCES [dbo].[CicloLectivo] ([cicloLectivo])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Curso] CHECK CONSTRAINT [FK_Curso_CicloLectivo]
GO
/****** Object:  ForeignKey [FK_Curso_Estado]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD  CONSTRAINT [FK_Curso_Estado] FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estado] ([idEstado])
GO
ALTER TABLE [dbo].[Curso] CHECK CONSTRAINT [FK_Curso_Estado]
GO
/****** Object:  ForeignKey [FK_Curso_NivelEducativo]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD  CONSTRAINT [FK_Curso_NivelEducativo] FOREIGN KEY([idNivelEducativo])
REFERENCES [dbo].[NivelEducativo] ([idNivelEducativo])
GO
ALTER TABLE [dbo].[Curso] CHECK CONSTRAINT [FK_Curso_NivelEducativo]
GO
/****** Object:  ForeignKey [FK_Curso_Turno]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD  CONSTRAINT [FK_Curso_Turno] FOREIGN KEY([idTurno])
REFERENCES [dbo].[Turno] ([idTurno])
GO
ALTER TABLE [dbo].[Curso] CHECK CONSTRAINT [FK_Curso_Turno]
GO
/****** Object:  ForeignKey [FK_Localidad_Provincia]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Localidad]  WITH CHECK ADD  CONSTRAINT [FK_Localidad_Provincia] FOREIGN KEY([idProvinciaEstado])
REFERENCES [dbo].[ProvinciaEstado] ([idProvinciaEstado])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Localidad] CHECK CONSTRAINT [FK_Localidad_Provincia]
GO
/****** Object:  ForeignKey [FK_Barrio_Localidad]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Barrio]  WITH CHECK ADD  CONSTRAINT [FK_Barrio_Localidad] FOREIGN KEY([idLocalidad])
REFERENCES [dbo].[Localidad] ([idLocalidad])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Barrio] CHECK CONSTRAINT [FK_Barrio_Localidad]
GO
/****** Object:  ForeignKey [FK_Domicilio_Barrio]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Domicilio]  WITH CHECK ADD  CONSTRAINT [FK_Domicilio_Barrio] FOREIGN KEY([idBarrio])
REFERENCES [dbo].[Barrio] ([idBarrio])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Domicilio] CHECK CONSTRAINT [FK_Domicilio_Barrio]
GO
/****** Object:  ForeignKey [FK_PersonalMaestranza_Domicilio]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[PersonalMaestranza]  WITH CHECK ADD  CONSTRAINT [FK_PersonalMaestranza_Domicilio] FOREIGN KEY([idDomicilio])
REFERENCES [dbo].[Domicilio] ([idDomicilio])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PersonalMaestranza] CHECK CONSTRAINT [FK_PersonalMaestranza_Domicilio]
GO
/****** Object:  ForeignKey [FK_PersonalMaestranza_Estado]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[PersonalMaestranza]  WITH CHECK ADD  CONSTRAINT [FK_PersonalMaestranza_Estado] FOREIGN KEY([idEstadoCivil])
REFERENCES [dbo].[Estado] ([idEstado])
GO
ALTER TABLE [dbo].[PersonalMaestranza] CHECK CONSTRAINT [FK_PersonalMaestranza_Estado]
GO
/****** Object:  ForeignKey [FK_PersonalMaestranza_EstadoCivil]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[PersonalMaestranza]  WITH CHECK ADD  CONSTRAINT [FK_PersonalMaestranza_EstadoCivil] FOREIGN KEY([idEstadoCivil])
REFERENCES [dbo].[Estado] ([idEstado])
GO
ALTER TABLE [dbo].[PersonalMaestranza] CHECK CONSTRAINT [FK_PersonalMaestranza_EstadoCivil]
GO
/****** Object:  ForeignKey [FK_PersonalMaestranza_PuestoTrabajo]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[PersonalMaestranza]  WITH CHECK ADD  CONSTRAINT [FK_PersonalMaestranza_PuestoTrabajo] FOREIGN KEY([idPuestoTrabajo])
REFERENCES [dbo].[PuestoTrabajo] ([idPuestoTrabajo])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PersonalMaestranza] CHECK CONSTRAINT [FK_PersonalMaestranza_PuestoTrabajo]
GO
/****** Object:  ForeignKey [FK_PersonalMaestranza_Usuario]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[PersonalMaestranza]  WITH CHECK ADD  CONSTRAINT [FK_PersonalMaestranza_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PersonalMaestranza] CHECK CONSTRAINT [FK_PersonalMaestranza_Usuario]
GO
/****** Object:  ForeignKey [FK_Tutor_Domicilio]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Tutor]  WITH CHECK ADD  CONSTRAINT [FK_Tutor_Domicilio] FOREIGN KEY([idDomicilio])
REFERENCES [dbo].[Domicilio] ([idDomicilio])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tutor] CHECK CONSTRAINT [FK_Tutor_Domicilio]
GO
/****** Object:  ForeignKey [FK_Tutor_EstadoCivil]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Tutor]  WITH CHECK ADD  CONSTRAINT [FK_Tutor_EstadoCivil] FOREIGN KEY([idEstadoCivil])
REFERENCES [dbo].[Estado] ([idEstado])
GO
ALTER TABLE [dbo].[Tutor] CHECK CONSTRAINT [FK_Tutor_EstadoCivil]
GO
/****** Object:  ForeignKey [FK_Alumno_Domicilio]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Domicilio] FOREIGN KEY([idDomicilio])
REFERENCES [dbo].[Domicilio] ([idDomicilio])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Domicilio]
GO
/****** Object:  ForeignKey [FK_Alumno_Estado]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Estado] FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estado] ([idEstado])
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Estado]
GO
/****** Object:  ForeignKey [FK_Alumno_Usuario]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Usuario]
GO
/****** Object:  ForeignKey [FK_Docente_Domicilio]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Docente]  WITH CHECK ADD  CONSTRAINT [FK_Docente_Domicilio] FOREIGN KEY([idDomicilio])
REFERENCES [dbo].[Domicilio] ([idDomicilio])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Docente] CHECK CONSTRAINT [FK_Docente_Domicilio]
GO
/****** Object:  ForeignKey [FK_Docente_Estado]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Docente]  WITH CHECK ADD  CONSTRAINT [FK_Docente_Estado] FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estado] ([idEstado])
GO
ALTER TABLE [dbo].[Docente] CHECK CONSTRAINT [FK_Docente_Estado]
GO
/****** Object:  ForeignKey [FK_Docente_EstadoCivil]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Docente]  WITH CHECK ADD  CONSTRAINT [FK_Docente_EstadoCivil] FOREIGN KEY([idEstadoCivil])
REFERENCES [dbo].[Estado] ([idEstado])
GO
ALTER TABLE [dbo].[Docente] CHECK CONSTRAINT [FK_Docente_EstadoCivil]
GO
/****** Object:  ForeignKey [FK_Docente_SituacionRevista]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Docente]  WITH CHECK ADD  CONSTRAINT [FK_Docente_SituacionRevista] FOREIGN KEY([idSituacionRevista])
REFERENCES [dbo].[SituacionRevista] ([idSituacionRevista])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Docente] CHECK CONSTRAINT [FK_Docente_SituacionRevista]
GO
/****** Object:  ForeignKey [FK_Docente_Usuario]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Docente]  WITH CHECK ADD  CONSTRAINT [FK_Docente_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Docente] CHECK CONSTRAINT [FK_Docente_Usuario]
GO
/****** Object:  ForeignKey [FK_LicenciaPersonalMaestranza_PersonalMaestranza]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[LicenciaPersonalMaestranza]  WITH CHECK ADD  CONSTRAINT [FK_LicenciaPersonalMaestranza_PersonalMaestranza] FOREIGN KEY([legajoPersonalMaestranza])
REFERENCES [dbo].[PersonalMaestranza] ([legajoPersonalMaestranza])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LicenciaPersonalMaestranza] CHECK CONSTRAINT [FK_LicenciaPersonalMaestranza_PersonalMaestranza]
GO
/****** Object:  ForeignKey [FK_LicenciaDocente_Docente]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[LicenciaDocente]  WITH CHECK ADD  CONSTRAINT [FK_LicenciaDocente_Docente] FOREIGN KEY([legajoDocente])
REFERENCES [dbo].[Docente] ([legajoDocente])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LicenciaDocente] CHECK CONSTRAINT [FK_LicenciaDocente_Docente]
GO
/****** Object:  ForeignKey [FK_LicenciaDocente_MovimientoAltaBaja]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[LicenciaDocente]  WITH CHECK ADD  CONSTRAINT [FK_LicenciaDocente_MovimientoAltaBaja] FOREIGN KEY([idMovimientoAltaBaja])
REFERENCES [dbo].[MovimientoAltaBaja] ([idMovimientoAltaBaja])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LicenciaDocente] CHECK CONSTRAINT [FK_LicenciaDocente_MovimientoAltaBaja]
GO
/****** Object:  ForeignKey [FK_Inscripcion_Alumno]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Inscripcion]  WITH CHECK ADD  CONSTRAINT [FK_Inscripcion_Alumno] FOREIGN KEY([legajoAlumno])
REFERENCES [dbo].[Alumno] ([legajoAlumno])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inscripcion] CHECK CONSTRAINT [FK_Inscripcion_Alumno]
GO
/****** Object:  ForeignKey [FK_Inscripcion_Curso]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Inscripcion]  WITH CHECK ADD  CONSTRAINT [FK_Inscripcion_Curso] FOREIGN KEY([idCurso])
REFERENCES [dbo].[Curso] ([idCurso])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inscripcion] CHECK CONSTRAINT [FK_Inscripcion_Curso]
GO
/****** Object:  ForeignKey [FK_HorarioPersonalMaestranza_CicloLectivo]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[HorarioPersonalMaestranza]  WITH CHECK ADD  CONSTRAINT [FK_HorarioPersonalMaestranza_CicloLectivo] FOREIGN KEY([cicloLectivo])
REFERENCES [dbo].[CicloLectivo] ([cicloLectivo])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorarioPersonalMaestranza] CHECK CONSTRAINT [FK_HorarioPersonalMaestranza_CicloLectivo]
GO
/****** Object:  ForeignKey [FK_HorarioPersonalMaestranza_PersonalMaestranza]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[HorarioPersonalMaestranza]  WITH CHECK ADD  CONSTRAINT [FK_HorarioPersonalMaestranza_PersonalMaestranza] FOREIGN KEY([legajoPersonalMaestranza])
REFERENCES [dbo].[PersonalMaestranza] ([legajoPersonalMaestranza])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorarioPersonalMaestranza] CHECK CONSTRAINT [FK_HorarioPersonalMaestranza_PersonalMaestranza]
GO
/****** Object:  ForeignKey [FK_HorarioCurso_Asignatura]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[HorarioCurso]  WITH CHECK ADD  CONSTRAINT [FK_HorarioCurso_Asignatura] FOREIGN KEY([idAsignatura])
REFERENCES [dbo].[Asignatura] ([idAsignatura])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorarioCurso] CHECK CONSTRAINT [FK_HorarioCurso_Asignatura]
GO
/****** Object:  ForeignKey [FK_HorarioCurso_Curso]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[HorarioCurso]  WITH CHECK ADD  CONSTRAINT [FK_HorarioCurso_Curso] FOREIGN KEY([idCurso])
REFERENCES [dbo].[Curso] ([idCurso])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorarioCurso] CHECK CONSTRAINT [FK_HorarioCurso_Curso]
GO
/****** Object:  ForeignKey [FK_HorarioCurso_Docente]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[HorarioCurso]  WITH CHECK ADD  CONSTRAINT [FK_HorarioCurso_Docente] FOREIGN KEY([legajoDocente])
REFERENCES [dbo].[Docente] ([legajoDocente])
GO
ALTER TABLE [dbo].[HorarioCurso] CHECK CONSTRAINT [FK_HorarioCurso_Docente]
GO
/****** Object:  ForeignKey [FK_GrupoFamiliar_Alumno]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[GrupoFamiliar]  WITH CHECK ADD  CONSTRAINT [FK_GrupoFamiliar_Alumno] FOREIGN KEY([legajoAlumno])
REFERENCES [dbo].[Alumno] ([legajoAlumno])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrupoFamiliar] CHECK CONSTRAINT [FK_GrupoFamiliar_Alumno]
GO
/****** Object:  ForeignKey [FK_GrupoFamiliar_Tutor]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[GrupoFamiliar]  WITH CHECK ADD  CONSTRAINT [FK_GrupoFamiliar_Tutor] FOREIGN KEY([idTutor])
REFERENCES [dbo].[Tutor] ([idTutor])
GO
ALTER TABLE [dbo].[GrupoFamiliar] CHECK CONSTRAINT [FK_GrupoFamiliar_Tutor]
GO
/****** Object:  ForeignKey [FK_CuotaGrupoFamiliar_CicloLectivo]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[CuotaGrupoFamiliar]  WITH CHECK ADD  CONSTRAINT [FK_CuotaGrupoFamiliar_CicloLectivo] FOREIGN KEY([cicloLectivo])
REFERENCES [dbo].[CicloLectivo] ([cicloLectivo])
GO
ALTER TABLE [dbo].[CuotaGrupoFamiliar] CHECK CONSTRAINT [FK_CuotaGrupoFamiliar_CicloLectivo]
GO
/****** Object:  ForeignKey [FK_CuotaGrupoFamiliar_Cuota]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[CuotaGrupoFamiliar]  WITH CHECK ADD  CONSTRAINT [FK_CuotaGrupoFamiliar_Cuota] FOREIGN KEY([idCuota])
REFERENCES [dbo].[Cuota] ([idCuota])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CuotaGrupoFamiliar] CHECK CONSTRAINT [FK_CuotaGrupoFamiliar_Cuota]
GO
/****** Object:  ForeignKey [FK_CuotaGrupoFamiliar_Tutor]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[CuotaGrupoFamiliar]  WITH CHECK ADD  CONSTRAINT [FK_CuotaGrupoFamiliar_Tutor] FOREIGN KEY([idTutor])
REFERENCES [dbo].[Tutor] ([idTutor])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CuotaGrupoFamiliar] CHECK CONSTRAINT [FK_CuotaGrupoFamiliar_Tutor]
GO
/****** Object:  ForeignKey [FK_CargoPorDocente_Cargo]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[CargoPorDocente]  WITH CHECK ADD  CONSTRAINT [FK_CargoPorDocente_Cargo] FOREIGN KEY([idCargo])
REFERENCES [dbo].[Cargo] ([idCargo])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CargoPorDocente] CHECK CONSTRAINT [FK_CargoPorDocente_Cargo]
GO
/****** Object:  ForeignKey [FK_CargoPorDocente_Docente]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[CargoPorDocente]  WITH CHECK ADD  CONSTRAINT [FK_CargoPorDocente_Docente] FOREIGN KEY([legajoDocente])
REFERENCES [dbo].[Docente] ([legajoDocente])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CargoPorDocente] CHECK CONSTRAINT [FK_CargoPorDocente_Docente]
GO
/****** Object:  ForeignKey [FK_CalificacionEscolar_Alumno]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[CalificacionEscolar]  WITH CHECK ADD  CONSTRAINT [FK_CalificacionEscolar_Alumno] FOREIGN KEY([legajoAlumno])
REFERENCES [dbo].[Alumno] ([legajoAlumno])
GO
ALTER TABLE [dbo].[CalificacionEscolar] CHECK CONSTRAINT [FK_CalificacionEscolar_Alumno]
GO
/****** Object:  ForeignKey [FK_CalificacionEscolar_Asignatura]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[CalificacionEscolar]  WITH CHECK ADD  CONSTRAINT [FK_CalificacionEscolar_Asignatura] FOREIGN KEY([idAsignatura])
REFERENCES [dbo].[Asignatura] ([idAsignatura])
GO
ALTER TABLE [dbo].[CalificacionEscolar] CHECK CONSTRAINT [FK_CalificacionEscolar_Asignatura]
GO
/****** Object:  ForeignKey [FK_CalificacionEscolar_Curso]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[CalificacionEscolar]  WITH CHECK ADD  CONSTRAINT [FK_CalificacionEscolar_Curso] FOREIGN KEY([idCurso])
REFERENCES [dbo].[Curso] ([idCurso])
GO
ALTER TABLE [dbo].[CalificacionEscolar] CHECK CONSTRAINT [FK_CalificacionEscolar_Curso]
GO
/****** Object:  ForeignKey [FK_BecaEstudiantil_Alumno]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[BecaEstudiantil]  WITH CHECK ADD  CONSTRAINT [FK_BecaEstudiantil_Alumno] FOREIGN KEY([legajoAlumno])
REFERENCES [dbo].[Alumno] ([legajoAlumno])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BecaEstudiantil] CHECK CONSTRAINT [FK_BecaEstudiantil_Alumno]
GO
/****** Object:  ForeignKey [FK_BajaPersonalMaestranza_PersonalMaestranza]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[BajaPersonalMaestranza]  WITH CHECK ADD  CONSTRAINT [FK_BajaPersonalMaestranza_PersonalMaestranza] FOREIGN KEY([legajoPersonalMaestranza])
REFERENCES [dbo].[PersonalMaestranza] ([legajoPersonalMaestranza])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BajaPersonalMaestranza] CHECK CONSTRAINT [FK_BajaPersonalMaestranza_PersonalMaestranza]
GO
/****** Object:  ForeignKey [FK_BajaDocente_Docente]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[BajaDocente]  WITH CHECK ADD  CONSTRAINT [FK_BajaDocente_Docente] FOREIGN KEY([legajoDocente])
REFERENCES [dbo].[Docente] ([legajoDocente])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BajaDocente] CHECK CONSTRAINT [FK_BajaDocente_Docente]
GO
/****** Object:  ForeignKey [FK_BajaAlumno_Alumno]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[BajaAlumno]  WITH CHECK ADD  CONSTRAINT [FK_BajaAlumno_Alumno] FOREIGN KEY([legajoAlumno])
REFERENCES [dbo].[Alumno] ([legajoAlumno])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BajaAlumno] CHECK CONSTRAINT [FK_BajaAlumno_Alumno]
GO
/****** Object:  ForeignKey [FK_AsistenciaPersonalMaestranza_PersonalMaestranza]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[AsistenciaPersonalMaestranza]  WITH CHECK ADD  CONSTRAINT [FK_AsistenciaPersonalMaestranza_PersonalMaestranza] FOREIGN KEY([legajoPersonalMaestranza])
REFERENCES [dbo].[PersonalMaestranza] ([legajoPersonalMaestranza])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AsistenciaPersonalMaestranza] CHECK CONSTRAINT [FK_AsistenciaPersonalMaestranza_PersonalMaestranza]
GO
/****** Object:  ForeignKey [FK_AsistenciaDocente_Asistencia]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[AsistenciaDocente]  WITH CHECK ADD  CONSTRAINT [FK_AsistenciaDocente_Asistencia] FOREIGN KEY([idAsignatura])
REFERENCES [dbo].[Asignatura] ([idAsignatura])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AsistenciaDocente] CHECK CONSTRAINT [FK_AsistenciaDocente_Asistencia]
GO
/****** Object:  ForeignKey [FK_AsistenciaDocente_Curso]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[AsistenciaDocente]  WITH CHECK ADD  CONSTRAINT [FK_AsistenciaDocente_Curso] FOREIGN KEY([idCurso])
REFERENCES [dbo].[Curso] ([idCurso])
GO
ALTER TABLE [dbo].[AsistenciaDocente] CHECK CONSTRAINT [FK_AsistenciaDocente_Curso]
GO
/****** Object:  ForeignKey [FK_AsistenciaDocente_Docente]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[AsistenciaDocente]  WITH CHECK ADD  CONSTRAINT [FK_AsistenciaDocente_Docente] FOREIGN KEY([legajoDocente])
REFERENCES [dbo].[Docente] ([legajoDocente])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AsistenciaDocente] CHECK CONSTRAINT [FK_AsistenciaDocente_Docente]
GO
/****** Object:  ForeignKey [FK_AsistenciaDocente_MovimientoAltaBaja]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[AsistenciaDocente]  WITH CHECK ADD  CONSTRAINT [FK_AsistenciaDocente_MovimientoAltaBaja] FOREIGN KEY([idMovimientoAltaBaja])
REFERENCES [dbo].[MovimientoAltaBaja] ([idMovimientoAltaBaja])
GO
ALTER TABLE [dbo].[AsistenciaDocente] CHECK CONSTRAINT [FK_AsistenciaDocente_MovimientoAltaBaja]
GO
/****** Object:  ForeignKey [FK_AsistenciaAlumno_Alumno]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[AsistenciaAlumno]  WITH CHECK ADD  CONSTRAINT [FK_AsistenciaAlumno_Alumno] FOREIGN KEY([legajoAlumno])
REFERENCES [dbo].[Alumno] ([legajoAlumno])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AsistenciaAlumno] CHECK CONSTRAINT [FK_AsistenciaAlumno_Alumno]
GO
/****** Object:  ForeignKey [FK_AsignaturaPorDocente_Asignatura]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[AsignaturaPorDocente]  WITH CHECK ADD  CONSTRAINT [FK_AsignaturaPorDocente_Asignatura] FOREIGN KEY([idAsignatura])
REFERENCES [dbo].[Asignatura] ([idAsignatura])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AsignaturaPorDocente] CHECK CONSTRAINT [FK_AsignaturaPorDocente_Asignatura]
GO
/****** Object:  ForeignKey [FK_AsignaturaPorDocente_Docente]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[AsignaturaPorDocente]  WITH CHECK ADD  CONSTRAINT [FK_AsignaturaPorDocente_Docente] FOREIGN KEY([legajoDocente])
REFERENCES [dbo].[Docente] ([legajoDocente])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AsignaturaPorDocente] CHECK CONSTRAINT [FK_AsignaturaPorDocente_Docente]
GO
/****** Object:  ForeignKey [FK_AltaPersonalMaestranza_PersonalMaestranza]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[AltaPersonalMaestranza]  WITH CHECK ADD  CONSTRAINT [FK_AltaPersonalMaestranza_PersonalMaestranza] FOREIGN KEY([legajoPersonalMaestranza])
REFERENCES [dbo].[PersonalMaestranza] ([legajoPersonalMaestranza])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AltaPersonalMaestranza] CHECK CONSTRAINT [FK_AltaPersonalMaestranza_PersonalMaestranza]
GO
/****** Object:  ForeignKey [FK_AltaDocente_Docente]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[AltaDocente]  WITH CHECK ADD  CONSTRAINT [FK_AltaDocente_Docente] FOREIGN KEY([legajoDocente])
REFERENCES [dbo].[Docente] ([legajoDocente])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AltaDocente] CHECK CONSTRAINT [FK_AltaDocente_Docente]
GO
/****** Object:  ForeignKey [FK_AltaAlumno_Alumno]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[AltaAlumno]  WITH CHECK ADD  CONSTRAINT [FK_AltaAlumno_Alumno] FOREIGN KEY([legajoAlumno])
REFERENCES [dbo].[Alumno] ([legajoAlumno])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AltaAlumno] CHECK CONSTRAINT [FK_AltaAlumno_Alumno]
GO
/****** Object:  ForeignKey [FK_TituloPorDocente_Docente]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[TituloPorDocente]  WITH CHECK ADD  CONSTRAINT [FK_TituloPorDocente_Docente] FOREIGN KEY([legajoDocente])
REFERENCES [dbo].[Docente] ([legajoDocente])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TituloPorDocente] CHECK CONSTRAINT [FK_TituloPorDocente_Docente]
GO
/****** Object:  ForeignKey [FK_TituloPorDocente_Titulo]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[TituloPorDocente]  WITH CHECK ADD  CONSTRAINT [FK_TituloPorDocente_Titulo] FOREIGN KEY([idTitulo])
REFERENCES [dbo].[Titulo] ([idTitulo])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TituloPorDocente] CHECK CONSTRAINT [FK_TituloPorDocente_Titulo]
GO
/****** Object:  ForeignKey [FK_TemarioDictado_Asignatura]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[TemarioDictado]  WITH CHECK ADD  CONSTRAINT [FK_TemarioDictado_Asignatura] FOREIGN KEY([idAsignatura])
REFERENCES [dbo].[Asignatura] ([idAsignatura])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TemarioDictado] CHECK CONSTRAINT [FK_TemarioDictado_Asignatura]
GO
/****** Object:  ForeignKey [FK_TemarioDictado_Curso]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[TemarioDictado]  WITH CHECK ADD  CONSTRAINT [FK_TemarioDictado_Curso] FOREIGN KEY([idCurso])
REFERENCES [dbo].[Curso] ([idCurso])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TemarioDictado] CHECK CONSTRAINT [FK_TemarioDictado_Curso]
GO
/****** Object:  ForeignKey [FK_TemarioDictado_Docente]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[TemarioDictado]  WITH CHECK ADD  CONSTRAINT [FK_TemarioDictado_Docente] FOREIGN KEY([legajoDocente])
REFERENCES [dbo].[Docente] ([legajoDocente])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TemarioDictado] CHECK CONSTRAINT [FK_TemarioDictado_Docente]
GO
/****** Object:  ForeignKey [FK_SuplenciaDocente_Asignatura]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[SuplenciaDocente]  WITH CHECK ADD  CONSTRAINT [FK_SuplenciaDocente_Asignatura] FOREIGN KEY([idAsignatura])
REFERENCES [dbo].[Asignatura] ([idAsignatura])
GO
ALTER TABLE [dbo].[SuplenciaDocente] CHECK CONSTRAINT [FK_SuplenciaDocente_Asignatura]
GO
/****** Object:  ForeignKey [FK_SuplenciaDocente_Curso]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[SuplenciaDocente]  WITH CHECK ADD  CONSTRAINT [FK_SuplenciaDocente_Curso] FOREIGN KEY([idCurso])
REFERENCES [dbo].[Curso] ([idCurso])
GO
ALTER TABLE [dbo].[SuplenciaDocente] CHECK CONSTRAINT [FK_SuplenciaDocente_Curso]
GO
/****** Object:  ForeignKey [FK_SuplenciaDocente_Docente]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[SuplenciaDocente]  WITH CHECK ADD  CONSTRAINT [FK_SuplenciaDocente_Docente] FOREIGN KEY([legajoDocente])
REFERENCES [dbo].[Docente] ([legajoDocente])
GO
ALTER TABLE [dbo].[SuplenciaDocente] CHECK CONSTRAINT [FK_SuplenciaDocente_Docente]
GO
/****** Object:  ForeignKey [FK_Sancion_Alumno]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[SancionDisciplinaria]  WITH CHECK ADD  CONSTRAINT [FK_Sancion_Alumno] FOREIGN KEY([legajoAlumno])
REFERENCES [dbo].[Alumno] ([legajoAlumno])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SancionDisciplinaria] CHECK CONSTRAINT [FK_Sancion_Alumno]
GO
/****** Object:  ForeignKey [FK_Reincorporacion_Alumno]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Reincorporacion]  WITH CHECK ADD  CONSTRAINT [FK_Reincorporacion_Alumno] FOREIGN KEY([legajoAlumno])
REFERENCES [dbo].[Alumno] ([legajoAlumno])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reincorporacion] CHECK CONSTRAINT [FK_Reincorporacion_Alumno]
GO
/****** Object:  ForeignKey [FK_Reincorporacion_CicloLectivo]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[Reincorporacion]  WITH CHECK ADD  CONSTRAINT [FK_Reincorporacion_CicloLectivo] FOREIGN KEY([cicloLectivo])
REFERENCES [dbo].[CicloLectivo] ([cicloLectivo])
GO
ALTER TABLE [dbo].[Reincorporacion] CHECK CONSTRAINT [FK_Reincorporacion_CicloLectivo]
GO
/****** Object:  ForeignKey [FK_PersonaAutorizada_Tutor]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[PersonaAutorizada]  WITH CHECK ADD  CONSTRAINT [FK_PersonaAutorizada_Tutor] FOREIGN KEY([idTutor])
REFERENCES [dbo].[Tutor] ([idTutor])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PersonaAutorizada] CHECK CONSTRAINT [FK_PersonaAutorizada_Tutor]
GO
/****** Object:  ForeignKey [FK_PaseEscolar_Alumno]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[PaseEscolar]  WITH CHECK ADD  CONSTRAINT [FK_PaseEscolar_Alumno] FOREIGN KEY([legajoAlumno])
REFERENCES [dbo].[Alumno] ([legajoAlumno])
GO
ALTER TABLE [dbo].[PaseEscolar] CHECK CONSTRAINT [FK_PaseEscolar_Alumno]
GO
/****** Object:  ForeignKey [FK_ComunicadoWeb_Curso]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[ComunicadoWeb]  WITH CHECK ADD  CONSTRAINT [FK_ComunicadoWeb_Curso] FOREIGN KEY([idCurso])
REFERENCES [dbo].[Curso] ([idCurso])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ComunicadoWeb] CHECK CONSTRAINT [FK_ComunicadoWeb_Curso]
GO
/****** Object:  ForeignKey [FK_ComunicadoWeb_Docente]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[ComunicadoWeb]  WITH CHECK ADD  CONSTRAINT [FK_ComunicadoWeb_Docente] FOREIGN KEY([legajoDocente])
REFERENCES [dbo].[Docente] ([legajoDocente])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ComunicadoWeb] CHECK CONSTRAINT [FK_ComunicadoWeb_Docente]
GO
/****** Object:  ForeignKey [FK_MatriculaAlumno_Alumno]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[MatriculaAlumno]  WITH CHECK ADD  CONSTRAINT [FK_MatriculaAlumno_Alumno] FOREIGN KEY([legajoAlumno])
REFERENCES [dbo].[Alumno] ([legajoAlumno])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MatriculaAlumno] CHECK CONSTRAINT [FK_MatriculaAlumno_Alumno]
GO
/****** Object:  ForeignKey [FK_MatriculaAlumno_CicloLectivo]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[MatriculaAlumno]  WITH CHECK ADD  CONSTRAINT [FK_MatriculaAlumno_CicloLectivo] FOREIGN KEY([cicloLectivo])
REFERENCES [dbo].[CicloLectivo] ([cicloLectivo])
GO
ALTER TABLE [dbo].[MatriculaAlumno] CHECK CONSTRAINT [FK_MatriculaAlumno_CicloLectivo]
GO
/****** Object:  ForeignKey [FK_MatriculaAlumno_Matricula]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[MatriculaAlumno]  WITH CHECK ADD  CONSTRAINT [FK_MatriculaAlumno_Matricula] FOREIGN KEY([idMatricula])
REFERENCES [dbo].[Matricula] ([idMatricula])
GO
ALTER TABLE [dbo].[MatriculaAlumno] CHECK CONSTRAINT [FK_MatriculaAlumno_Matricula]
GO
/****** Object:  ForeignKey [FK_MovimientoCaja_Caja]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[MovimientoCaja]  WITH CHECK ADD  CONSTRAINT [FK_MovimientoCaja_Caja] FOREIGN KEY([idCaja])
REFERENCES [dbo].[Caja] ([idCaja])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MovimientoCaja] CHECK CONSTRAINT [FK_MovimientoCaja_Caja]
GO
/****** Object:  ForeignKey [FK_MovimientoCaja_CuotaGrupoFamiliar]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[MovimientoCaja]  WITH CHECK ADD  CONSTRAINT [FK_MovimientoCaja_CuotaGrupoFamiliar] FOREIGN KEY([idCuotaGrupoFamiliar])
REFERENCES [dbo].[CuotaGrupoFamiliar] ([idCuotaGrupoFamiliar])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MovimientoCaja] CHECK CONSTRAINT [FK_MovimientoCaja_CuotaGrupoFamiliar]
GO
/****** Object:  ForeignKey [FK_MovimientoCaja_MatriculaAlumno]    Script Date: 01/10/2015 18:59:49 ******/
ALTER TABLE [dbo].[MovimientoCaja]  WITH CHECK ADD  CONSTRAINT [FK_MovimientoCaja_MatriculaAlumno] FOREIGN KEY([idMatriculaAlumno])
REFERENCES [dbo].[MatriculaAlumno] ([idMatriculaAlumno])
GO
ALTER TABLE [dbo].[MovimientoCaja] CHECK CONSTRAINT [FK_MovimientoCaja_MatriculaAlumno]
GO
