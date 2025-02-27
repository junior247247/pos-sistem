USE [master]
GO
/****** Object:  Database [POS]    Script Date: 2/9/2024 11:55:52 AM ******/
CREATE DATABASE [POS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'POS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\POS.mdf' , SIZE = 83136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'POS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\POS_log.ldf' , SIZE = 526336KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [POS] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [POS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [POS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [POS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [POS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [POS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [POS] SET ARITHABORT OFF 
GO
ALTER DATABASE [POS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [POS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [POS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [POS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [POS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [POS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [POS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [POS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [POS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [POS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [POS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [POS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [POS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [POS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [POS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [POS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [POS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [POS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [POS] SET  MULTI_USER 
GO
ALTER DATABASE [POS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [POS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [POS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [POS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [POS] SET DELAYED_DURABILITY = DISABLED 
GO
USE [POS]
GO
/****** Object:  UserDefinedTableType [dbo].[codigoSuplidoresType]    Script Date: 2/9/2024 11:55:52 AM ******/
CREATE TYPE [dbo].[codigoSuplidoresType] AS TABLE(
	[codigo_suplidor] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[DetalleOrdenMasiva]    Script Date: 2/9/2024 11:55:52 AM ******/
CREATE TYPE [dbo].[DetalleOrdenMasiva] AS TABLE(
	[costo_total] [decimal](18, 2) NULL,
	[creado_por] [int] NULL,
	[modificado_por] [int] NULL,
	[cant] [int] NULL,
	[product_id] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[IntList]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE TYPE [dbo].[IntList] AS TABLE(
	[Value] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[masterProductoType]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE TYPE [dbo].[masterProductoType] AS TABLE(
	[codigo] [int] NULL,
	[description] [varchar](200) NULL,
	[categoria] [varchar](50) NULL,
	[sub_categoria] [varchar](50) NULL,
	[tipo] [varchar](50) NULL,
	[marca] [varchar](50) NULL,
	[color] [varchar](50) NULL,
	[caracteristica1] [varchar](200) NULL,
	[caracteristica2] [varchar](200) NULL,
	[caracteristica3] [varchar](200) NULL,
	[longitud_cm] [varchar](50) NULL,
	[ancho_cm] [varchar](50) NULL,
	[altura_cm] [varchar](50) NULL,
	[volumen_cm] [varchar](50) NULL,
	[peso_kg] [varchar](50) NULL,
	[suplidorId] [int] NULL,
	[planta_id] [int] NULL,
	[magnitud_um] [varchar](50) NULL,
	[unidad_medida_base] [varchar](50) NULL,
	[unidad_almacenaje] [varchar](50) NULL,
	[umb] [decimal](18, 2) NULL,
	[qty] [int] NULL,
	[codigo_suplidor] [int] NULL,
	[costo_und] [decimal](18, 2) NULL,
	[usuario_creacion_id] [int] NULL,
	[usuario_modificacion_id] [int] NULL,
	[flag] [varchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[masterProductoType2]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE TYPE [dbo].[masterProductoType2] AS TABLE(
	[codigo] [int] NULL,
	[description] [varchar](200) NULL,
	[categoria] [varchar](50) NULL,
	[sub_categoria] [varchar](50) NULL,
	[tipo] [varchar](50) NULL,
	[marca] [varchar](50) NULL,
	[color] [varchar](50) NULL,
	[caracteristica1] [varchar](200) NULL,
	[caracteristica2] [varchar](200) NULL,
	[caracteristica3] [varchar](200) NULL,
	[longitud_cm] [varchar](50) NULL,
	[ancho_cm] [varchar](50) NULL,
	[altura_cm] [varchar](50) NULL,
	[volumen_cm] [varchar](50) NULL,
	[peso_kg] [varchar](50) NULL,
	[planta_id] [int] NULL,
	[magnitud_um] [varchar](50) NULL,
	[unidad_medida_base] [varchar](50) NULL,
	[unidad_almacenaje] [varchar](50) NULL,
	[umb] [decimal](18, 2) NULL,
	[qty] [int] NULL,
	[codigo_suplidor] [int] NULL,
	[costo_und] [decimal](18, 2) NULL,
	[usuario_creacion_id] [int] NULL,
	[usuario_modificacion_id] [int] NULL,
	[flag] [varchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[masterProductoType3]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE TYPE [dbo].[masterProductoType3] AS TABLE(
	[codigo] [varchar](50) NULL,
	[description] [varchar](200) NULL,
	[categoria] [varchar](50) NULL,
	[sub_categoria] [varchar](50) NULL,
	[tipo] [varchar](50) NULL,
	[marca] [varchar](50) NULL,
	[color] [varchar](50) NULL,
	[caracteristica1] [varchar](200) NULL,
	[caracteristica2] [varchar](200) NULL,
	[caracteristica3] [varchar](200) NULL,
	[longitud_cm] [varchar](50) NULL,
	[ancho_cm] [varchar](50) NULL,
	[altura_cm] [varchar](50) NULL,
	[volumen_cm] [varchar](50) NULL,
	[peso_kg] [varchar](50) NULL,
	[planta_id] [int] NULL,
	[magnitud_um] [varchar](50) NULL,
	[unidad_medida_base] [varchar](50) NULL,
	[unidad_almacenaje] [varchar](50) NULL,
	[umb] [decimal](18, 2) NULL,
	[qty] [int] NULL,
	[codigo_suplidor] [int] NULL,
	[costo_und] [decimal](18, 2) NULL,
	[usuario_creacion_id] [int] NULL,
	[usuario_modificacion_id] [int] NULL,
	[flag] [varchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[masterProductoTypeModificar]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE TYPE [dbo].[masterProductoTypeModificar] AS TABLE(
	[id] [int] NULL,
	[codigo] [varchar](50) NULL,
	[description] [nvarchar](255) NULL,
	[categoria] [nvarchar](255) NULL,
	[sub_categoria] [nvarchar](255) NULL,
	[tipo] [nvarchar](255) NULL,
	[marca] [nvarchar](255) NULL,
	[color] [nvarchar](255) NULL,
	[caracteristica1] [nvarchar](255) NULL,
	[caracteristica2] [nvarchar](255) NULL,
	[caracteristica3] [nvarchar](255) NULL,
	[longitud_cm] [decimal](18, 2) NULL,
	[ancho_cm] [decimal](18, 2) NULL,
	[altura_cm] [decimal](18, 2) NULL,
	[volumen_cm] [decimal](18, 2) NULL,
	[peso_kg] [decimal](18, 2) NULL,
	[planta_id] [int] NULL,
	[magnitud_um] [nvarchar](50) NULL,
	[unidad_medida_base] [nvarchar](50) NULL,
	[unidad_almacenaje] [nvarchar](50) NULL,
	[umb] [nvarchar](50) NULL,
	[qty] [int] NULL,
	[codigo_suplidor] [int] NULL,
	[costo_und] [decimal](18, 2) NULL,
	[usuario_modificacion_id] [int] NULL,
	[indicator] [varchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[StringList]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE TYPE [dbo].[StringList] AS TABLE(
	[Value] [varchar](1000) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[suplidors]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE TYPE [dbo].[suplidors] AS TABLE(
	[usuarioIdCreado] [int] NULL,
	[usuarioIdModificado] [int] NULL,
	[es_nacional] [nvarchar](50) NULL
)
GO
/****** Object:  Table [dbo].[almacen]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[almacen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[flag] [varchar](50) NULL,
	[nombre_almacen] [varchar](50) NULL,
	[creado_por] [int] NULL,
	[fecha_creacion] [date] NULL,
	[hora_creacion] [time](7) NULL,
	[modificado_por] [int] NULL,
	[fecha_modifiacion] [date] NULL,
	[hora_modificacion] [time](7) NULL,
 CONSTRAINT [PK_almacen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categorias]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categorias](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[codigo] [varchar](50) NULL,
	[creado_por] [int] NULL,
	[fecha_creacion] [date] NULL,
	[hora_creacion] [time](7) NULL,
	[modificado_por] [int] NULL,
	[fecha_modificacion] [date] NULL,
	[hora_modificacion] [time](7) NULL,
	[flag] [varchar](50) NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[detalle_de_orden]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[detalle_de_orden](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[costo_total] [decimal](18, 2) NULL,
	[orden_id] [int] NULL,
	[creado_por] [int] NULL,
	[fecha_creacion] [date] NULL,
	[hora_creacion] [time](7) NULL,
	[fecha_modificacion] [date] NULL,
	[hora_modificacion] [time](7) NULL,
	[modificado_por] [int] NULL,
	[cant] [int] NULL,
	[flag] [varchar](50) NULL,
	[product_id] [int] NULL,
 CONSTRAINT [PK_detalle_de_orden] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lista_de_precios]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lista_de_precios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[costo_unitario] [decimal](18, 2) NULL,
	[precio_unitario] [decimal](18, 2) NULL,
	[descuento_por_mayor] [decimal](18, 2) NULL,
	[descuento_socio] [decimal](18, 2) NULL,
	[descuento_oferta] [decimal](18, 2) NULL,
	[margen_de_ganancia] [decimal](18, 2) NULL,
	[creado_por] [int] NULL,
	[fecha_creacion] [date] NULL,
	[hora_creacion] [time](7) NULL,
	[modificado_por] [int] NULL,
	[fecha_modificacion] [date] NULL,
	[hora_modificacion] [time](7) NULL,
	[flag] [varchar](50) NULL,
 CONSTRAINT [PK_lista_de_precios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[master_de_producto]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[master_de_producto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](50) NULL,
	[description] [varchar](200) NULL,
	[tipo] [varchar](50) NULL,
	[marca] [varchar](50) NULL,
	[color] [varchar](50) NULL,
	[caracteristica1] [varchar](200) NULL,
	[caracteristica2] [varchar](200) NULL,
	[caracteristica3] [varchar](200) NULL,
	[longitud_cm] [varchar](50) NULL,
	[ancho_cm] [varchar](50) NULL,
	[altura_cm] [varchar](50) NULL,
	[volumen_cm] [varchar](50) NULL,
	[peso_kg] [varchar](50) NULL,
	[costo_und] [decimal](18, 2) NULL,
	[fecha_creacion] [date] NULL,
	[ultima_modificacion] [date] NULL,
	[modificacion] [varchar](50) NULL,
	[usuario_creacion_id] [int] NULL,
	[hora_creacion] [time](7) NULL,
	[hora_modificacion] [time](7) NULL,
	[usuario_modificacion_id] [int] NULL,
	[lead_time] [varchar](50) NULL,
	[categoria] [varchar](50) NULL,
	[sub_categoria] [varchar](50) NULL,
	[magnitud_um] [varchar](50) NULL,
	[unidad_medida_base] [varchar](50) NULL,
	[unidad_almacenaje] [varchar](50) NULL,
	[umb] [decimal](18, 2) NULL,
	[qty] [int] NULL,
	[codigo_sku] [int] NULL,
	[codigo_suplidor] [int] NULL,
	[flag] [varchar](50) NULL,
	[planta_id] [int] NULL,
	[indicador] [varchar](50) NULL,
 CONSTRAINT [PK_master_de_producto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[orden_de_compra]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orden_de_compra](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[suplidorId] [int] NULL,
	[costo_total] [decimal](18, 2) NULL,
	[numero_documento] [varchar](50) NULL,
	[creado_por] [int] NULL,
	[fecha_creacion] [date] NULL,
	[hora_creacion] [time](7) NULL,
	[modificado_por] [int] NULL,
	[fecha_modificacion] [date] NULL,
	[hora_modificacion] [time](7) NULL,
	[flag] [varchar](50) NULL,
 CONSTRAINT [PK_orden_de_compras] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[planta]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[planta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[flag] [varchar](50) NULL,
	[creado_por] [int] NULL,
	[modificado_por] [int] NULL,
	[hora_modificacion] [time](7) NULL,
	[fecha_modificacion] [date] NULL,
	[fecha_creacion] [date] NULL,
	[nombre_de_planta] [varchar](50) NULL,
	[hora_creacion] [time](7) NULL,
 CONSTRAINT [PK_planta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[planta_y_almacen]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[planta_y_almacen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[planta_id] [int] NULL,
	[almacen_id] [int] NULL,
	[creado_por] [int] NULL,
	[fecha_creacion] [date] NULL,
	[hora_modificacion] [time](7) NULL,
	[modificado_por] [int] NULL,
	[fecha_modificacion] [date] NULL,
	[flag] [varchar](50) NULL,
	[hora_creacion] [time](7) NULL,
 CONSTRAINT [PK_planta_y_almacen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[punto_de_reorden]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[punto_de_reorden](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[planta_Id] [int] NULL,
	[almacen_id] [int] NULL,
	[product_id] [int] NULL,
	[inv_min] [decimal](18, 2) NULL,
	[inv_max] [decimal](18, 2) NULL,
	[stock_de_seguridad] [decimal](18, 2) NULL,
	[lead_time] [varchar](50) NULL,
	[promedio_venta_diaria] [decimal](18, 2) NULL,
 CONSTRAINT [PK_punto_de_reorden] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sub_categoria]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sub_categoria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoriaId] [int] NOT NULL,
	[sub_categoria] [varchar](50) NULL,
 CONSTRAINT [PK_sub_categoria] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[suplidors]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[suplidors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[rnc_de_la_empresa] [int] NULL,
	[telefono] [varchar](50) NULL,
	[telefono_movile] [varchar](50) NULL,
	[fax] [varchar](50) NULL,
	[banco] [varchar](50) NULL,
	[numero_de_cuenta] [int] NULL,
	[nombre_de_contacto] [varchar](50) NULL,
	[direccion] [varchar](200) NULL,
	[calle_y_numero] [varchar](200) NULL,
	[ciudad] [varchar](50) NULL,
	[estado_provicincia] [varchar](50) NULL,
	[codigo_postal] [int] NULL,
	[puerto] [varchar](50) NULL,
	[codigo_suplidor] [varchar](50) NULL,
	[pais] [varchar](50) NULL,
	[incoterm] [varchar](200) NULL,
	[condiciones_de_pago] [varchar](200) NULL,
	[termino_de_pago] [varchar](200) NULL,
	[usuarioIdCreado] [int] NULL,
	[hora] [time](7) NULL,
	[fecha] [date] NULL,
	[usuarioIdModificado] [int] NULL,
	[horaMidificado] [time](7) NULL,
	[fechaModificado] [date] NULL,
	[direccion2] [varchar](200) NULL,
	[sitio_web] [varchar](200) NULL,
	[flag] [varchar](50) NULL,
	[es_nacional] [varchar](50) NULL,
	[lead_time] [varchar](50) NULL,
 CONSTRAINT [PK_suplidor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[unidad_de_medida]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[unidad_de_medida](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[unidad] [varchar](50) NULL,
 CONSTRAINT [PK_unidad_de_medida] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [int] NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [IX_Costo]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_Costo] ON [dbo].[lista_de_precios]
(
	[costo_unitario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ListaDePrecios_ProductId]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_ListaDePrecios_ProductId] ON [dbo].[lista_de_precios]
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_ultima_modificacion]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [idx_ultima_modificacion] ON [dbo].[master_de_producto]
(
	[ultima_modificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_master_de_producto_categoria]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_master_de_producto_categoria] ON [dbo].[master_de_producto]
(
	[categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_master_de_producto_codigo]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_master_de_producto_codigo] ON [dbo].[master_de_producto]
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_master_de_producto_codigo_sku]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_master_de_producto_codigo_sku] ON [dbo].[master_de_producto]
(
	[codigo_sku] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_master_de_producto_codigo_suplidor]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_master_de_producto_codigo_suplidor] ON [dbo].[master_de_producto]
(
	[codigo_suplidor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_master_de_producto_description]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_master_de_producto_description] ON [dbo].[master_de_producto]
(
	[description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_master_de_producto_marca]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_master_de_producto_marca] ON [dbo].[master_de_producto]
(
	[marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_master_de_producto_planta_id]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_master_de_producto_planta_id] ON [dbo].[master_de_producto]
(
	[planta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_master_de_producto_sub_categoria]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_master_de_producto_sub_categoria] ON [dbo].[master_de_producto]
(
	[sub_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_master_de_producto_tipo]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_master_de_producto_tipo] ON [dbo].[master_de_producto]
(
	[tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NonClusteredIndex-20240123-093615]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20240123-093615] ON [dbo].[master_de_producto]
(
	[ultima_modificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_codigo_suplidor_suplidors]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [idx_codigo_suplidor_suplidors] ON [dbo].[suplidors]
(
	[codigo_suplidor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_suplidors_flag]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_suplidors_flag] ON [dbo].[suplidors]
(
	[flag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_suplidors_id]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_suplidors_id] ON [dbo].[suplidors]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_suplidors_usuarioIdCreado]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_suplidors_usuarioIdCreado] ON [dbo].[suplidors]
(
	[usuarioIdCreado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_suplidors_usuarioIdModificado]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_suplidors_usuarioIdModificado] ON [dbo].[suplidors]
(
	[usuarioIdModificado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_userCreacion_id]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_userCreacion_id] ON [dbo].[usuario]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_usuario_id]    Script Date: 2/9/2024 11:55:53 AM ******/
CREATE NONCLUSTERED INDEX [IX_usuario_id] ON [dbo].[usuario]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[almacen]  WITH CHECK ADD  CONSTRAINT [FK_almacen_usuario] FOREIGN KEY([creado_por])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[almacen] CHECK CONSTRAINT [FK_almacen_usuario]
GO
ALTER TABLE [dbo].[almacen]  WITH CHECK ADD  CONSTRAINT [FK_almacen_usuario1] FOREIGN KEY([modificado_por])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[almacen] CHECK CONSTRAINT [FK_almacen_usuario1]
GO
ALTER TABLE [dbo].[categorias]  WITH CHECK ADD  CONSTRAINT [FK_categorias_usuario] FOREIGN KEY([creado_por])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[categorias] CHECK CONSTRAINT [FK_categorias_usuario]
GO
ALTER TABLE [dbo].[categorias]  WITH CHECK ADD  CONSTRAINT [FK_categorias_usuario1] FOREIGN KEY([modificado_por])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[categorias] CHECK CONSTRAINT [FK_categorias_usuario1]
GO
ALTER TABLE [dbo].[detalle_de_orden]  WITH CHECK ADD  CONSTRAINT [FK_detalle_de_orden_master_de_producto] FOREIGN KEY([product_id])
REFERENCES [dbo].[master_de_producto] ([id])
GO
ALTER TABLE [dbo].[detalle_de_orden] CHECK CONSTRAINT [FK_detalle_de_orden_master_de_producto]
GO
ALTER TABLE [dbo].[detalle_de_orden]  WITH CHECK ADD  CONSTRAINT [FK_detalle_de_orden_orden_de_compra] FOREIGN KEY([orden_id])
REFERENCES [dbo].[orden_de_compra] ([id])
GO
ALTER TABLE [dbo].[detalle_de_orden] CHECK CONSTRAINT [FK_detalle_de_orden_orden_de_compra]
GO
ALTER TABLE [dbo].[detalle_de_orden]  WITH CHECK ADD  CONSTRAINT [FK_detalle_de_orden_usuario] FOREIGN KEY([creado_por])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[detalle_de_orden] CHECK CONSTRAINT [FK_detalle_de_orden_usuario]
GO
ALTER TABLE [dbo].[detalle_de_orden]  WITH CHECK ADD  CONSTRAINT [FK_detalle_de_orden_usuario1] FOREIGN KEY([modificado_por])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[detalle_de_orden] CHECK CONSTRAINT [FK_detalle_de_orden_usuario1]
GO
ALTER TABLE [dbo].[lista_de_precios]  WITH CHECK ADD  CONSTRAINT [FK_lista_de_precios_master_de_producto] FOREIGN KEY([product_id])
REFERENCES [dbo].[master_de_producto] ([id])
GO
ALTER TABLE [dbo].[lista_de_precios] CHECK CONSTRAINT [FK_lista_de_precios_master_de_producto]
GO
ALTER TABLE [dbo].[lista_de_precios]  WITH CHECK ADD  CONSTRAINT [FK_lista_de_precios_usuario] FOREIGN KEY([creado_por])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[lista_de_precios] CHECK CONSTRAINT [FK_lista_de_precios_usuario]
GO
ALTER TABLE [dbo].[lista_de_precios]  WITH CHECK ADD  CONSTRAINT [FK_lista_de_precios_usuario1] FOREIGN KEY([modificado_por])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[lista_de_precios] CHECK CONSTRAINT [FK_lista_de_precios_usuario1]
GO
ALTER TABLE [dbo].[master_de_producto]  WITH CHECK ADD  CONSTRAINT [FK_master_de_producto_master_de_producto] FOREIGN KEY([id])
REFERENCES [dbo].[master_de_producto] ([id])
GO
ALTER TABLE [dbo].[master_de_producto] CHECK CONSTRAINT [FK_master_de_producto_master_de_producto]
GO
ALTER TABLE [dbo].[master_de_producto]  WITH NOCHECK ADD  CONSTRAINT [FK_master_de_producto_usuario] FOREIGN KEY([usuario_creacion_id])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[master_de_producto] NOCHECK CONSTRAINT [FK_master_de_producto_usuario]
GO
ALTER TABLE [dbo].[master_de_producto]  WITH NOCHECK ADD  CONSTRAINT [FK_master_de_producto_usuario1] FOREIGN KEY([usuario_modificacion_id])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[master_de_producto] NOCHECK CONSTRAINT [FK_master_de_producto_usuario1]
GO
ALTER TABLE [dbo].[orden_de_compra]  WITH CHECK ADD  CONSTRAINT [FK_orden_de_compras_suplidor] FOREIGN KEY([suplidorId])
REFERENCES [dbo].[suplidors] ([id])
GO
ALTER TABLE [dbo].[orden_de_compra] CHECK CONSTRAINT [FK_orden_de_compras_suplidor]
GO
ALTER TABLE [dbo].[planta]  WITH CHECK ADD  CONSTRAINT [FK_planta_usuario] FOREIGN KEY([creado_por])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[planta] CHECK CONSTRAINT [FK_planta_usuario]
GO
ALTER TABLE [dbo].[planta]  WITH CHECK ADD  CONSTRAINT [FK_planta_usuario1] FOREIGN KEY([modificado_por])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[planta] CHECK CONSTRAINT [FK_planta_usuario1]
GO
ALTER TABLE [dbo].[planta_y_almacen]  WITH CHECK ADD  CONSTRAINT [FK_planta_y_almacen_almacen] FOREIGN KEY([almacen_id])
REFERENCES [dbo].[almacen] ([id])
GO
ALTER TABLE [dbo].[planta_y_almacen] CHECK CONSTRAINT [FK_planta_y_almacen_almacen]
GO
ALTER TABLE [dbo].[planta_y_almacen]  WITH CHECK ADD  CONSTRAINT [FK_planta_y_almacen_planta] FOREIGN KEY([planta_id])
REFERENCES [dbo].[planta] ([id])
GO
ALTER TABLE [dbo].[planta_y_almacen] CHECK CONSTRAINT [FK_planta_y_almacen_planta]
GO
ALTER TABLE [dbo].[planta_y_almacen]  WITH CHECK ADD  CONSTRAINT [FK_planta_y_almacen_usuario] FOREIGN KEY([creado_por])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[planta_y_almacen] CHECK CONSTRAINT [FK_planta_y_almacen_usuario]
GO
ALTER TABLE [dbo].[planta_y_almacen]  WITH CHECK ADD  CONSTRAINT [FK_planta_y_almacen_usuario1] FOREIGN KEY([modificado_por])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[planta_y_almacen] CHECK CONSTRAINT [FK_planta_y_almacen_usuario1]
GO
ALTER TABLE [dbo].[punto_de_reorden]  WITH CHECK ADD  CONSTRAINT [FK_punto_de_reorden_almacen] FOREIGN KEY([almacen_id])
REFERENCES [dbo].[almacen] ([id])
GO
ALTER TABLE [dbo].[punto_de_reorden] CHECK CONSTRAINT [FK_punto_de_reorden_almacen]
GO
ALTER TABLE [dbo].[punto_de_reorden]  WITH NOCHECK ADD  CONSTRAINT [FK_punto_de_reorden_master_de_producto] FOREIGN KEY([product_id])
REFERENCES [dbo].[master_de_producto] ([id])
GO
ALTER TABLE [dbo].[punto_de_reorden] NOCHECK CONSTRAINT [FK_punto_de_reorden_master_de_producto]
GO
ALTER TABLE [dbo].[punto_de_reorden]  WITH CHECK ADD  CONSTRAINT [FK_punto_de_reorden_planta] FOREIGN KEY([planta_Id])
REFERENCES [dbo].[planta] ([id])
GO
ALTER TABLE [dbo].[punto_de_reorden] CHECK CONSTRAINT [FK_punto_de_reorden_planta]
GO
ALTER TABLE [dbo].[sub_categoria]  WITH CHECK ADD  CONSTRAINT [FK_sub_categoria_categoria] FOREIGN KEY([categoriaId])
REFERENCES [dbo].[categorias] ([id])
GO
ALTER TABLE [dbo].[sub_categoria] CHECK CONSTRAINT [FK_sub_categoria_categoria]
GO
ALTER TABLE [dbo].[suplidors]  WITH CHECK ADD  CONSTRAINT [FK_suplidor_usuario] FOREIGN KEY([usuarioIdCreado])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[suplidors] CHECK CONSTRAINT [FK_suplidor_usuario]
GO
ALTER TABLE [dbo].[suplidors]  WITH CHECK ADD  CONSTRAINT [FK_suplidor_usuario1] FOREIGN KEY([usuarioIdModificado])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[suplidors] CHECK CONSTRAINT [FK_suplidor_usuario1]
GO
/****** Object:  StoredProcedure [dbo].[BuscarMasterPorCodigoBarraOelCodigoSKU]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[BuscarMasterPorCodigoBarraOelCodigoSKU]
@filtro varchar(200)
as
SET NOCOUNT ON;
    SELECT 
		top 20
        mp.id,
        mp.codigo AS 'Codigo de Barra',
        mp.codigo_sku AS 'Codigo SKU',
        mp.description AS Description,
        mp.categoria AS Categoria,
        mp.sub_categoria AS 'Sub Categoria',
        mp.marca AS Marca,
        mp.tipo AS Tipo,
        mp.caracteristica1 AS 'Caracteristica 1',
        mp.caracteristica2 AS 'Caracteristica 2',
        mp.caracteristica3 AS 'Caracteristica 3',
        mp.color AS Color,
        mp.magnitud_um AS 'Magnitud Um',
        mp.unidad_medida_base AS 'Unidad Medida Base',
        mp.unidad_almacenaje AS 'Unidad de Almacenaje',
        mp.longitud_cm AS 'Longiud cm',
        mp.ancho_cm AS 'Ancho cm',
        mp.volumen_cm AS 'Volumen cm',
        mp.peso_kg AS 'Peso kg',
        mp.costo_und AS 'Costo Und',
        p.nombre_de_planta AS Planta,
        mp.umb AS UMB,
        mp.qty AS Qty,
        s.codigo_suplidor AS 'Codigo Suplidor',
        s.nombre AS 'Nombre Suplidor',
        uc.nombre AS 'Creado Por',
        mp.fecha_creacion AS 'Fecha Creacion',
        CONVERT(VARCHAR(15), mp.hora_creacion, 100) AS 'Hora Creacion',
        um.nombre AS 'Modificado Por',
        mp.ultima_modificacion AS 'Ultima Modificacion',
        CONVERT(VARCHAR(15), mp.hora_modificacion, 100) AS 'Hora Modificacion'
    FROM 
        master_de_producto AS mp  WITH (NOLOCK)
    INNER JOIN usuario AS uc ON mp.usuario_creacion_id = uc.id
    INNER JOIN usuario AS um ON mp.usuario_modificacion_id = um.id
    INNER JOIN planta AS p ON mp.planta_id = p.id
    INNER JOIN suplidors AS s ON mp.codigo_suplidor = s.codigo_suplidor
    WHERE 
  mp.flag = 'existe' AND mp.codigo_sku LIKE  @filtro + '%' 


GO
/****** Object:  StoredProcedure [dbo].[BuscarMasterPorCriterio]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[BuscarMasterPorCriterio]
	 @codigo_sku dbo.IntList READONLY,
    @codigos_de_barra dbo.StringList READONLY,
    @description dbo.StringList READONLY,
    @categoria dbo.StringList READONLY,
    @sub_categoria dbo.StringList READONLY,
    @tipo dbo.StringList READONLY,
    @marca dbo.StringList READONLY,
    @planta_id int,
    @codigo_suplidor dbo.IntList READONLY,
	@from int,
	@limit int

as
SET NOCOUNT ON;
    SELECT 
		
        mp.id,
        mp.codigo ,
        mp.codigo_sku ,
        mp.description ,
        mp.categoria ,
        mp.sub_categoria ,
        mp.marca AS Marca,
        mp.tipo AS Tipo,
        mp.caracteristica1 ,
        mp.caracteristica2 ,
        mp.caracteristica3 ,
        mp.color AS Color,
        mp.magnitud_um ,
        mp.unidad_medida_base ,
        mp.unidad_almacenaje ,
        mp.longitud_cm ,
        mp.ancho_cm ,
		mp.altura_cm,
        mp.volumen_cm ,
        mp.peso_kg ,
		lp.costo_unitario as 'costo_und',
      
        p.nombre_de_planta AS Planta,
        mp.umb AS UMB,
        mp.qty AS Qty,
		mp.planta_id,
        s.codigo_suplidor ,
		s.lead_time,
        s.nombre AS 'Nombre_Suplidor',
        uc.nombre AS 'Creado_Por',
        mp.fecha_creacion AS 'Fecha_Creacion',
        CONVERT(VARCHAR(15), mp.hora_creacion, 100) AS 'Hora_Creacion',
        um.nombre AS 'Modificado_Por',
        mp.ultima_modificacion AS 'Ultima_Modificacion',
        CONVERT(VARCHAR(15), mp.hora_modificacion, 100) AS 'Hora_Modificacion'
    FROM 
        master_de_producto AS mp  WITH (NOLOCK)
    INNER JOIN usuario AS uc WITH (NOLOCK) ON mp.usuario_creacion_id = uc.id
    INNER JOIN usuario AS um WITH (NOLOCK) ON mp.usuario_modificacion_id = um.id
    INNER JOIN planta AS p WITH (NOLOCK) ON mp.planta_id = p.id
    INNER JOIN suplidors AS s WITH (NOLOCK) ON mp.codigo_suplidor = s.codigo_suplidor
	INNER JOIN lista_de_precios as lp WITH (NOLOCK) on mp.id=lp.product_id
    WHERE 
  mp.flag = 'existe' AND  mp.planta_id=@planta_id  and (
   mp.codigo_sku IN (SELECT Value FROM @codigo_sku) 
   or mp.codigo IN (SELECT Value FROM @codigos_de_barra)
   or mp.description IN (SELECT Value FROM @description)
	or mp.categoria IN (SELECT Value FROM @categoria)
	 or mp.sub_categoria IN (SELECT Value FROM @sub_categoria)
		 or mp.tipo IN (SELECT Value FROM @tipo)
		  or mp.marca IN (SELECT Value FROM @marca)
	
	  or mp.codigo_suplidor IN (SELECT Value FROM @codigo_suplidor) 
	  )
	  order by mp.id desc OFFSET @from ROWS
    FETCH NEXT @limit ROWS ONLY




	




GO
/****** Object:  StoredProcedure [dbo].[BuscarMasterVenta]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[BuscarMasterVenta]

	@description varchar(200)


as
SET NOCOUNT ON;
    SELECT 
		top 40
          mp.id as 'No Reg' ,
        mp.codigo as 'Codigo de Barra',
        mp.codigo_sku as 'Codigo SKU' ,
        mp.description as Description ,
        mp.categoria as Categoria ,
        mp.sub_categoria as 'Sub Categoria' ,
        mp.marca AS Marca,
        mp.tipo AS Tipo,
        mp.color AS Color,
        mp.magnitud_um  as 'Magntud Um',
        mp.unidad_medida_base  as 'Unidad Medida Base',
        mp.unidad_almacenaje as  'Unidad de Almacenaje' ,
        mp.longitud_cm as 'Longitud CM' ,
        mp.ancho_cm  as 'Ancho CM',
		mp.altura_cm as 'Altura CM',
        mp.volumen_cm  AS 'Volumen CM',
        mp.peso_kg AS 'Peso Kg' ,
        lp.costo_unitario as 'Costo Und' ,
    
        mp.umb AS UMB,
        mp.qty AS Qty
      
    FROM 
        master_de_producto AS mp  WITH (NOLOCK)
	INNER JOIN lista_de_precios as lp on mp.id=lp.product_id
    WHERE 
  mp.flag = 'existe' AND mp.description like @description + '%'
	  order by mp.id desc 



GO
/****** Object:  StoredProcedure [dbo].[BuscarMasterVentaDescriptionExacta]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[BuscarMasterVentaDescriptionExacta]

	@description varchar(200)


as
SET NOCOUNT ON;
    SELECT 
		top 10
          mp.id as 'No Reg' ,
        mp.codigo ,
        mp.codigo_sku  ,
        mp.description as Description ,
        mp.categoria as Categoria ,
        mp.sub_categoria as 'Sub Categoria' ,
        mp.marca AS Marca,
        mp.tipo AS Tipo,
        mp.color AS Color,
        mp.magnitud_um  as 'Magntud Um',
        mp.unidad_medida_base  as 'Unidad Medida Base',
        mp.unidad_almacenaje as  'Unidad de Almacenaje' ,
        mp.longitud_cm as 'Longitud CM' ,
        mp.ancho_cm  as 'Ancho CM',
		mp.altura_cm as 'Altura CM',
        mp.volumen_cm  AS 'Volumen CM',
        mp.peso_kg AS 'Peso Kg' ,
        lp.costo_unitario as 'Costo Und' ,
    
        mp.umb AS UMB,
        mp.qty AS Qty
      
    FROM 
        master_de_producto AS mp  WITH (NOLOCK)
	INNER JOIN lista_de_precios as lp on mp.id=lp.product_id
    WHERE 
  mp.flag = 'existe' AND mp.description = @description 
	  order by mp.id desc 



GO
/****** Object:  StoredProcedure [dbo].[BuscarPorCodigoDeBarra]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[BuscarPorCodigoDeBarra]

	@codigo_de_barra varchar(200)


as
SET NOCOUNT ON;
    SELECT 
		top 1
          mp.id  ,
        mp.codigo ,
        mp.codigo_sku  ,
        mp.description as Description ,
        mp.categoria as Categoria ,
        mp.sub_categoria as 'Sub Categoria' ,
        mp.marca AS Marca,
        mp.tipo AS Tipo,
        mp.color AS Color,
        mp.magnitud_um  as 'Magntud Um',
        mp.unidad_medida_base  ,
        mp.unidad_almacenaje as  'Unidad de Almacenaje' ,
        mp.longitud_cm as 'Longitud CM' ,
        mp.ancho_cm  as 'Ancho CM',
		mp.altura_cm as 'Altura CM',
        mp.volumen_cm  AS 'Volumen CM',
        mp.peso_kg AS 'Peso Kg' ,
        lp.costo_unitario as 'Costo_Und' ,
    
        mp.umb AS UMB,
        mp.qty AS Qty
      
    FROM 
        master_de_producto AS mp  WITH (NOLOCK)
	INNER JOIN lista_de_precios as lp on mp.id=lp.product_id
    WHERE 
  mp.flag = 'existe' AND mp.codigo = @codigo_de_barra 
	  order by mp.id desc 

	


GO
/****** Object:  StoredProcedure [dbo].[BuscarPorCodigodoSku]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[BuscarPorCodigodoSku]

	@codigoSku varchar(200)


as
SET NOCOUNT ON;
    SELECT 
		top 1
          mp.id  ,
        mp.codigo ,
        mp.codigo_sku  ,
        mp.description as Description ,
        mp.categoria as Categoria ,
        mp.sub_categoria as 'Sub Categoria' ,
        mp.marca AS Marca,
        mp.tipo AS Tipo,
        mp.color AS Color,
        mp.magnitud_um  as 'Magntud Um',
        mp.unidad_medida_base ,
        mp.unidad_almacenaje as  'Unidad de Almacenaje' ,
        mp.longitud_cm as 'Longitud CM' ,
        mp.ancho_cm  as 'Ancho CM',
		mp.altura_cm as 'Altura CM',
        mp.volumen_cm  AS 'Volumen CM',
        mp.peso_kg AS 'Peso Kg' ,
        lp.costo_unitario as 'Costo_Und' ,
    
        mp.umb AS UMB,
        mp.qty AS Qty
      
    FROM 
        master_de_producto AS mp  WITH (NOLOCK)
	INNER JOIN lista_de_precios as lp on mp.id=lp.product_id
    WHERE 
  mp.flag = 'existe' AND mp.codigo_sku = @codigoSku 
	  order by mp.id desc 

	
GO
/****** Object:  StoredProcedure [dbo].[buscarSuplidorPorname]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[buscarSuplidorPorname]
@filtro varchar(200)
as

	
	SELECT 
	top 40
    suplidors.id,
    suplidors.codigo_suplidor AS 'Codigo de suplidor',
    suplidors.nombre AS Nombre,
	suplidors.rnc_de_la_empresa as 'Rnc de La Empresa' ,
    suplidors.direccion AS Direccion,
    suplidors.direccion2 AS 'Direccion 2',
    suplidors.sitio_web AS 'Sitio Web',
    suplidors.calle_y_numero AS 'Calle & Numero',
    suplidors.pais AS Pais,
    suplidors.ciudad AS Ciudad,
    suplidors.codigo_postal AS 'Codigo Postal',
    suplidors.estado_provicincia AS 'Estado/Provincia',
    suplidors.telefono AS Telefono,
    suplidors.telefono_movile AS 'Telefono Mobile',
    suplidors.fax AS Fax,
    suplidors.banco AS Banco,
    suplidors.numero_de_cuenta AS 'Numero de cuenta',
    suplidors.incoterm AS Incoterm,
    suplidors.puerto AS Puerto,
    suplidors.condiciones_de_pago AS 'Condiciones de Pago',
    suplidors.termino_de_pago AS 'Termino de pago',
    userCreacion.nombre AS 'Creado Por',
    suplidors.fecha AS 'Fecha Creacion',
    CONVERT(VARCHAR(15), suplidors.hora, 100) AS 'Hora Creacion',
    usuario.nombre AS 'Modificado Por',
    suplidors.fechaModificado AS 'Ultima Modificacion',
    CONVERT(VARCHAR(15), suplidors.horaMidificado, 100) AS 'Hora Modificacion'
FROM 
    suplidors
INNER JOIN usuario AS userCreacion ON suplidors.usuarioIdCreado = userCreacion.id
INNER JOIN usuario AS usuario ON suplidors.usuarioIdModificado = usuario.id
WHERE 
    suplidors.flag = 'existe'   and suplidors.nombre like @filtro +'%'
GO
/****** Object:  StoredProcedure [dbo].[ConsultarMasterPorCriterios]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ConsultarMasterPorCriterios]
	 @codigo_sku dbo.IntList READONLY,
    @codigos_de_barra dbo.StringList READONLY,
    @description dbo.StringList READONLY,
    @categoria dbo.StringList READONLY,
    @sub_categoria dbo.StringList READONLY,
    @tipo dbo.StringList READONLY,
    @marca dbo.StringList READONLY,
    @planta_id int,
    @codigo_suplidor dbo.IntList READONLY,
	@from int,
	@limit int,
	@desde date,
	@hasta date

as
SET NOCOUNT ON;
    SELECT 
		
          mp.id as 'No Reg' ,
        mp.codigo as 'Codigo de Barra',
        mp.codigo_sku as 'Codigo SKU' ,
        mp.description as Description ,
        mp.categoria as Categoria ,
        mp.sub_categoria as 'Sub Categoria' ,
        mp.marca AS Marca,
        mp.tipo AS Tipo,
        mp.caracteristica1 as 'Caracteristica 1' ,
        mp.caracteristica2 as 'Caracteristica 2' , 
        mp.caracteristica3 as 'Caracteristica 3' , 
        mp.color AS Color,
        mp.magnitud_um  as 'Magntud Um',
        mp.unidad_medida_base  as 'Unidad Medida Base',
        mp.unidad_almacenaje as  'Unidad de Almacenaje' ,
        mp.longitud_cm as 'Longitud CM' ,
        mp.ancho_cm  as 'Ancho CM',
		mp.altura_cm as 'Altura CM',
        mp.volumen_cm  AS 'Volumen CM',
        mp.peso_kg AS 'Peso Kg' ,
        lp.costo_unitario as 'Costo Und' ,
        p.nombre_de_planta AS Planta,
        mp.umb AS UMB,
        mp.qty AS Qty,
		mp.planta_id,
        s.codigo_suplidor as 'Codigo Suplidor' ,
		s.lead_time as 'Lead Time',
        s.nombre AS 'Nombre_Suplidor',
        uc.nombre AS 'Creado_Por',
        mp.fecha_creacion AS 'Fecha_Creacion',
        CONVERT(VARCHAR(15), mp.hora_creacion, 100) AS 'Hora_Creacion',
        um.nombre AS 'Modificado_Por',
        mp.ultima_modificacion AS 'Ultima_Modificacion',
        CONVERT(VARCHAR(15), mp.hora_modificacion, 100) AS 'Hora_Modificacion',
		mp.indicador as Indicador
    FROM 
        master_de_producto AS mp  WITH (NOLOCK)
    INNER JOIN usuario AS uc ON mp.usuario_creacion_id = uc.id
    INNER JOIN usuario AS um ON mp.usuario_modificacion_id = um.id
    INNER JOIN planta AS p ON mp.planta_id = p.id
    INNER JOIN suplidors AS s ON mp.codigo_suplidor = s.codigo_suplidor
	INNER JOIN lista_de_precios as lp on mp.id=lp.product_id
    WHERE 
  mp.flag = 'existe' AND mp.ultima_modificacion between @desde and @hasta and  mp.planta_id=@planta_id  and (
   mp.codigo_sku IN (SELECT Value FROM @codigo_sku) 
   or mp.codigo IN (SELECT Value FROM @codigos_de_barra)
   or mp.description IN (SELECT Value FROM @description)
	or mp.categoria IN (SELECT Value FROM @categoria)
	 or mp.sub_categoria IN (SELECT Value FROM @sub_categoria)
		 or mp.tipo IN (SELECT Value FROM @tipo)
		  or mp.marca IN (SELECT Value FROM @marca)
	
	  or mp.codigo_suplidor IN (SELECT Value FROM @codigo_suplidor) 
	  ) 
	  order by mp.id desc OFFSET @from ROWS
    FETCH NEXT @limit ROWS ONLY



GO
/****** Object:  StoredProcedure [dbo].[ConsultarMasterTranzabilidad]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ConsultarMasterTranzabilidad]
	 @codigo_sku dbo.IntList READONLY,
    @codigos_de_barra dbo.StringList READONLY,
    @description dbo.StringList READONLY,
    @categoria dbo.StringList READONLY,
    @sub_categoria dbo.StringList READONLY,
    @tipo dbo.StringList READONLY,
    @marca dbo.StringList READONLY,
    @planta_id int,
    @codigo_suplidor dbo.IntList READONLY,
	@from int,
	@limit int,
	@desde date,
	@hasta date

as
SET NOCOUNT ON;
    SELECT 
		
        mp.id as 'No Reg' ,
        mp.codigo as 'Codigo de Barra',
        mp.codigo_sku as 'Codigo SKU' ,
        mp.description as Description ,
        mp.categoria as Categoria ,
        mp.sub_categoria as 'Sub Categoria' ,
        mp.marca AS Marca,
        mp.tipo AS Tipo,
        mp.caracteristica1 as 'Caracteristica 1' ,
        mp.caracteristica2 as 'Caracteristica 2' , 
        mp.caracteristica3 as 'Caracteristica 3' , 
        mp.color AS Color,
        mp.magnitud_um  as 'Magntud Um',
        mp.unidad_medida_base  as 'Unidad Medida Base',
        mp.unidad_almacenaje as  'Unidad de Almacenaje' ,
        mp.longitud_cm as 'Longitud CM' ,
        mp.ancho_cm  as 'Ancho CM',
		mp.altura_cm as 'Altura CM',
        mp.volumen_cm  AS 'Volumen CM',
        mp.peso_kg AS 'Peso Kg' ,
        mp.costo_und as 'Costo Und' ,
        p.nombre_de_planta AS Planta,
        mp.umb AS UMB,
        mp.qty AS Qty,
		mp.planta_id,
        s.codigo_suplidor as 'Codigo Suplidor' ,
		s.lead_time as 'Lead Time',
        s.nombre AS 'Nombre_Suplidor',
        uc.nombre AS 'Creado_Por',
        mp.fecha_creacion AS 'Fecha_Creacion',
        CONVERT(VARCHAR(15), mp.hora_creacion, 100) AS 'Hora_Creacion',
        um.nombre AS 'Modificado_Por',
        mp.ultima_modificacion AS 'Ultima_Modificacion',
        CONVERT(VARCHAR(15), mp.hora_modificacion, 100) AS 'Hora_Modificacion',
		mp.indicador as Indicador
    FROM 
        master_de_producto AS mp  WITH (NOLOCK)
    INNER JOIN usuario AS uc ON mp.usuario_creacion_id = uc.id
    INNER JOIN usuario AS um ON mp.usuario_modificacion_id = um.id
    INNER JOIN planta AS p ON mp.planta_id = p.id
    INNER JOIN suplidors AS s ON mp.codigo_suplidor = s.codigo_suplidor
	
    WHERE 
	 mp.ultima_modificacion between @desde and @hasta and  mp.planta_id=@planta_id  and (
   mp.codigo_sku IN (SELECT Value FROM @codigo_sku) 
   or mp.codigo IN (SELECT Value FROM @codigos_de_barra)
   or mp.description IN (SELECT Value FROM @description)
	or mp.categoria IN (SELECT Value FROM @categoria)
	 or mp.sub_categoria IN (SELECT Value FROM @sub_categoria)
		 or mp.tipo IN (SELECT Value FROM @tipo)
		  or mp.marca IN (SELECT Value FROM @marca)
	
	  or mp.codigo_suplidor IN (SELECT Value FROM @codigo_suplidor) 
	  ) 
	  order by mp.flag  desc  OFFSET @from ROWS
    FETCH NEXT @limit ROWS ONLY




GO
/****** Object:  StoredProcedure [dbo].[ConsultarPorPlanta]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ConsultarPorPlanta]

    @planta_id int,
	@from int,
	@limit int
	

as
SET NOCOUNT ON;
    SELECT 
		
        mp.id as 'No Reg' ,
        mp.codigo as 'Codigo de Barra',
        mp.codigo_sku as 'Codigo SKU' ,
        mp.description as Description ,
        mp.categoria as Categoria ,
        mp.sub_categoria as 'Sub Categoria' ,
        mp.marca AS Marca,
        mp.tipo AS Tipo,
        mp.caracteristica1 as 'Caracteristica 1' ,
        mp.caracteristica2 as 'Caracteristica 2' , 
        mp.caracteristica3 as 'Caracteristica 3' , 
        mp.color AS Color,
        mp.magnitud_um  as 'Magntud Um',
        mp.unidad_medida_base  as 'Unidad Medida Base',
        mp.unidad_almacenaje as  'Unidad de Almacenaje' ,
        mp.longitud_cm as 'Longitud CM' ,
        mp.ancho_cm  as 'Ancho CM',
		mp.altura_cm as 'Altura CM',
        mp.volumen_cm  AS 'Volumen CM',
        mp.peso_kg AS 'Peso Kg' ,
        mp.costo_und as 'Costo Und' ,
        p.nombre_de_planta AS Planta,
        mp.umb AS UMB,
        mp.qty AS Qty,
		mp.planta_id,
        s.codigo_suplidor as 'Codigo Suplidor' ,
		s.lead_time as 'Lead Time',
        s.nombre AS 'Nombre_Suplidor',
        uc.nombre AS 'Creado_Por',
        mp.fecha_creacion AS 'Fecha_Creacion',
        CONVERT(VARCHAR(15), mp.hora_creacion, 100) AS 'Hora_Creacion',
        um.nombre AS 'Modificado_Por',
        mp.ultima_modificacion AS 'Ultima_Modificacion',
        CONVERT(VARCHAR(15), mp.hora_modificacion, 100) AS 'Hora_Modificacion',
		mp.indicador as Indicador
    FROM 
        master_de_producto AS mp  WITH (NOLOCK)
    INNER JOIN usuario AS uc ON mp.usuario_creacion_id = uc.id
    INNER JOIN usuario AS um ON mp.usuario_modificacion_id = um.id
    INNER JOIN planta AS p ON mp.planta_id = p.id
    INNER JOIN suplidors AS s ON mp.codigo_suplidor = s.codigo_suplidor
    WHERE mp.flag='existe' and mp.planta_id=@planta_id

	  order by mp.id desc OFFSET @from ROWS
    FETCH NEXT @limit ROWS ONLY




GO
/****** Object:  StoredProcedure [dbo].[contarFilasDeMasterPorPlanta]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[contarFilasDeMasterPorPlanta]
@planta_id int
as
select count(*) as totalRows from master_de_producto where planta_id=@planta_id

GO
/****** Object:  StoredProcedure [dbo].[ContarNumerodeFilasMasterCriterio]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ContarNumerodeFilasMasterCriterio]
	 @codigo_sku dbo.IntList READONLY,
    @codigos_de_barra dbo.StringList READONLY,
    @description dbo.StringList READONLY,
    @categoria dbo.StringList READONLY,
    @sub_categoria dbo.StringList READONLY,
    @tipo dbo.StringList READONLY,
    @marca dbo.StringList READONLY,
    @planta_id int,
    @codigo_suplidor dbo.IntList READONLY

as
SET NOCOUNT ON;
    SELECT 
		
     count(*) as totalRows
    FROM 
        master_de_producto AS mp  WITH (NOLOCK)

    WHERE 
  mp.flag = 'existe' AND  mp.planta_id=@planta_id  and (
   mp.codigo_sku IN (SELECT Value FROM @codigo_sku) 
   or mp.codigo IN (SELECT Value FROM @codigos_de_barra)
   or mp.description IN (SELECT Value FROM @description)
	or mp.categoria IN (SELECT Value FROM @categoria)
	 or mp.sub_categoria IN (SELECT Value FROM @sub_categoria)
		 or mp.tipo IN (SELECT Value FROM @tipo)
		  or mp.marca IN (SELECT Value FROM @marca)
	
	  or mp.codigo_suplidor IN (SELECT Value FROM @codigo_suplidor) 
	  )




GO
/****** Object:  StoredProcedure [dbo].[ContarNumerodeFilasMasterCriterioPorFecha]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ContarNumerodeFilasMasterCriterioPorFecha]
	 @codigo_sku dbo.IntList READONLY,
    @codigos_de_barra dbo.StringList READONLY,
    @description dbo.StringList READONLY,
    @categoria dbo.StringList READONLY,
    @sub_categoria dbo.StringList READONLY,
    @tipo dbo.StringList READONLY,
    @marca dbo.StringList READONLY,
    @planta_id int,
    @codigo_suplidor dbo.IntList READONLY,
	@desde date,
	@hasta date
	

as
SET NOCOUNT ON;
    SELECT 
		
     count(*) as totalRows
    FROM 
        master_de_producto AS mp  WITH (NOLOCK)

    WHERE 
  mp.flag = 'existe' and mp.ultima_modificacion between @desde and @hasta  AND  mp.planta_id=@planta_id  and (
   mp.codigo_sku IN (SELECT Value FROM @codigo_sku) 
   or mp.codigo IN (SELECT Value FROM @codigos_de_barra)
   or mp.description IN (SELECT Value FROM @description)
	or mp.categoria IN (SELECT Value FROM @categoria)
	 or mp.sub_categoria IN (SELECT Value FROM @sub_categoria)
		 or mp.tipo IN (SELECT Value FROM @tipo)
		  or mp.marca IN (SELECT Value FROM @marca)
	
	  or mp.codigo_suplidor IN (SELECT Value FROM @codigo_suplidor) 
	  )




GO
/****** Object:  StoredProcedure [dbo].[ContarNumerodeFilasMasterCriterioPorFechaTranzabilidad]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ContarNumerodeFilasMasterCriterioPorFechaTranzabilidad]
	 @codigo_sku dbo.IntList READONLY,
    @codigos_de_barra dbo.StringList READONLY,
    @description dbo.StringList READONLY,
    @categoria dbo.StringList READONLY,
    @sub_categoria dbo.StringList READONLY,
    @tipo dbo.StringList READONLY,
    @marca dbo.StringList READONLY,
    @planta_id int,
    @codigo_suplidor dbo.IntList READONLY,
	@desde date,
	@hasta date
	

as
SET NOCOUNT ON;
    SELECT 
		
     count(*) as totalRows
    FROM 
        master_de_producto AS mp  WITH (NOLOCK)

    WHERE 
    mp.ultima_modificacion between @desde and @hasta  AND  mp.planta_id=@planta_id  and (
   mp.codigo_sku IN (SELECT Value FROM @codigo_sku) 
   or mp.codigo IN (SELECT Value FROM @codigos_de_barra)
   or mp.description IN (SELECT Value FROM @description)
	or mp.categoria IN (SELECT Value FROM @categoria)
	 or mp.sub_categoria IN (SELECT Value FROM @sub_categoria)
		 or mp.tipo IN (SELECT Value FROM @tipo)
		  or mp.marca IN (SELECT Value FROM @marca)
	
	  or mp.codigo_suplidor IN (SELECT Value FROM @codigo_suplidor) 
	  )




GO
/****** Object:  StoredProcedure [dbo].[crear_planta_y_almacen]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[crear_planta_y_almacen]
@planta_id int,
@almacen_id int,
@creado_por int
as
insert into planta_y_almacen(planta_id,almacen_id,creado_por,modificado_por,fecha_creacion,fecha_modificacion,hora_creacion,hora_modificacion,flag) values
(@planta_id,@almacen_id,@creado_por,@creado_por,GETDATE(),GETDATE(),GETDATE(),GETDATE(),'existe')


GO
/****** Object:  StoredProcedure [dbo].[crearAlmacen]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[crearAlmacen]
@nombre_almacen varchar(50),
@creado_por int ,
@modificado_por int
as
insert into almacen(nombre_almacen,creado_por,modificado_por,fecha_creacion,fecha_modifiacion,hora_creacion,hora_modificacion,flag)values
			(@nombre_almacen,@creado_por,@modificado_por,GETDATE(),GETDATE(),GETDATE(),GETDATE(),'existe')

GO
/****** Object:  StoredProcedure [dbo].[crearCategoria]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[crearCategoria]
@creado_por int,
@nombre varchar(50)
as
insert into categorias (nombre,creado_por,modificado_por,fecha_creacion,fecha_modificacion,hora_creacion,hora_modificacion,flag)values
(@nombre,@creado_por,@creado_por,GETDATE(),GETDATE(),GETDATE(),GETDATE(),'existe')

GO
/****** Object:  StoredProcedure [dbo].[crearPlanta]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[crearPlanta]
@nombre_planta varchar(50),
@creado_por int
as
insert into planta(nombre_de_planta,creado_por,modificado_por,fecha_creacion,fecha_modificacion,hora_creacion,hora_modificacion,flag)values
(@nombre_planta,@creado_por,@creado_por,GETDATE(),GETDATE(),GETDATE(),GETDATE(),'existe')
 
GO
/****** Object:  StoredProcedure [dbo].[InsertarDetalleOrdenPorLote]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarDetalleOrdenPorLote]
    @DetalleOrden AS dbo.DetalleOrdenMasiva READONLY
AS
BEGIN
    SET NOCOUNT ON;

    -- Insertar en lote
    INSERT INTO detalle_de_orden(costo_total, creado_por, modificado_por,cant,product_id,fecha_creacion,fecha_modificacion,hora_creacion,hora_modificacion,flag)
    SELECT costo_total, creado_por, modificado_por,cant,product_id,GETDATE(),GETDATE(),GETDATE(),GETDATE(),'existe'
    FROM @DetalleOrden;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarMasterProLote]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarMasterProLote]
    @masterProducto AS dbo.masterProductoType3 READONLY
AS
BEGIN

    SET NOCOUNT ON;
	DISABLE TRIGGER [dbo].[AfterUpdateMasterProducto] ON [dbo].[master_de_producto];
    -- Insertar en lote
    INSERT INTO master_de_producto(codigo, description, categoria,sub_categoria,tipo,marca,color,caracteristica1,caracteristica2,caracteristica3,longitud_cm,ancho_cm
	,altura_cm,volumen_cm,peso_kg,planta_id,magnitud_um,unidad_medida_base,unidad_almacenaje,umb,qty,codigo_suplidor,costo_und,usuario_creacion_id,usuario_modificacion_id,flag,fecha_creacion,hora_creacion,ultima_modificacion,hora_modificacion)
    SELECT codigo, description, categoria,sub_categoria,tipo,marca,color,caracteristica1,caracteristica2,caracteristica3,longitud_cm,ancho_cm
	,altura_cm,volumen_cm,peso_kg,planta_id,magnitud_um,unidad_medida_base,unidad_almacenaje,umb,qty,codigo_suplidor,costo_und,usuario_creacion_id,usuario_modificacion_id,flag,GETDATE(),GETDATE(),GETDATE(),GETDATE()
    FROM @masterProducto;

	ENABLE TRIGGER [dbo].[AfterUpdateMasterProducto] ON [dbo].[master_de_producto];
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarSuplidoresEnLote]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarSuplidoresEnLote]
    @Suplidores AS dbo.suplidors READONLY
AS
BEGIN
    SET NOCOUNT ON;

    -- Insertar en lote
    INSERT INTO suplidors (usuarioIdCreado, usuarioIdModificado, es_nacional)
    SELECT usuarioIdCreado, usuarioIdModificado, es_nacional
    FROM @Suplidores;
END;
GO
/****** Object:  StoredProcedure [dbo].[ModificarMasterPorLote]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ModificarMasterPorLote]
    @masterProducto AS dbo.masterProductoTypeModificar READONLY
AS
BEGIN
    SET NOCOUNT ON;

    -- Modificar en lote
    UPDATE mp
    SET 
		mp.codigo=m.codigo,
        mp.description = m.description,
        mp.categoria = m.categoria,
        mp.sub_categoria = m.sub_categoria,
        mp.tipo = m.tipo,
        mp.marca = m.marca,
        mp.color = m.color,
        mp.caracteristica1 = m.caracteristica1,
        mp.caracteristica2 = m.caracteristica2,
        mp.caracteristica3 = m.caracteristica3,
        mp.longitud_cm = m.longitud_cm,
        mp.ancho_cm = m.ancho_cm,
        mp.altura_cm = m.altura_cm,
        mp.volumen_cm = m.volumen_cm,
        mp.peso_kg = m.peso_kg,
        mp.planta_id = m.planta_id,
        mp.magnitud_um = m.magnitud_um,
        mp.unidad_medida_base = m.unidad_medida_base,
        mp.unidad_almacenaje = m.unidad_almacenaje,
        mp.umb = m.umb,
        mp.qty = m.qty,
        mp.codigo_suplidor = m.codigo_suplidor,
        mp.costo_und = m.costo_und,
        mp.usuario_modificacion_id = m.usuario_modificacion_id,
      
        mp.ultima_modificacion = GETDATE(),
        mp.hora_modificacion = GETDATE(),
		mp.indicador=m.indicator,
		mp.flag='existe'
    FROM 
        master_de_producto mp
    INNER JOIN 
        @masterProducto m ON mp.id = m.id;

END;

GO
/****** Object:  StoredProcedure [dbo].[mostrar_almacen_por_planta]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[mostrar_almacen_por_planta]
 @planta_id int
 as
 select almacen.id as almacen_id,almacen.nombre_almacen as 'Almacen' ,planta_y_almacen.id as almacen_y_planta_id,
 usuario.nombre as 'Creado Por' ,
almacen.fecha_creacion as 'Fecha Creacion',
CONVERT(VARCHAR(15), almacen.hora_creacion, 100)  as 'Hora Creacion' ,
usuario.nombre as'Modificado Por',
almacen.fecha_modifiacion as'Fecha Modificacion',
CONVERT(VARCHAR(15), almacen.hora_modificacion, 100) as 'Hora Modificacion'
 
  from planta_y_almacen inner join almacen on almacen.id = planta_y_almacen.almacen_id INNER JOIN usuario AS userCreacion ON almacen.creado_por = userCreacion.id
INNER JOIN usuario AS usuario ON almacen.modificado_por = usuario.id where planta_y_almacen.planta_id=@planta_id 



GO
/****** Object:  StoredProcedure [dbo].[mostrarAlmacen]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrarAlmacen]
as
select 
almacen.id,
almacen.nombre_almacen as 'Almacen',
usuario.nombre as 'Creado Por',
almacen.fecha_creacion as 'Fecha Creacion',
  CONVERT(VARCHAR(15), almacen.hora_creacion , 100)  as 'Hora Creacion',
usuario.nombre as 'Modificado por',
almacen.fecha_modifiacion as 'Fecha Modificacion',
 CONVERT(VARCHAR(15), almacen.hora_modificacion, 100)  as 'Hora Modificacion'

			FROM 
    almacen
INNER JOIN usuario AS userCreacion ON almacen.creado_por = userCreacion.id
INNER JOIN usuario AS usuario ON almacen.modificado_por = usuario.id
WHERE 
    almacen.flag = 'existe'    order by almacen.id desc
GO
/****** Object:  StoredProcedure [dbo].[mostrarCategorias]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrarCategorias]
as

select
   categorias.id,categorias.codigo as Codigo, categorias.nombre as Categoria ,usuario.nombre as 'Creado Por',categorias.fecha_creacion as 'Fecha Creacion' ,
   CONVERT(VARCHAR(15), categorias.hora_creacion, 100)  as'Hora Creacion',usuario.nombre as 'Modificado Por',categorias.fecha_modificacion as 'Fecha Modificacion',   CONVERT(VARCHAR(15), categorias.hora_modificacion, 100)  as'Hora Modificacion'

  from categorias INNER JOIN usuario AS userCreacion ON categorias.creado_por = userCreacion.id
INNER JOIN usuario AS usuario ON categorias.modificado_por = usuario.id order by categorias.id desc
GO
/****** Object:  StoredProcedure [dbo].[mostrarCodigoSuplidor]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrarCodigoSuplidor]
@codigoSuplidor int
as
select top 1 incoterm,nombre,id,codigo_suplidor,lead_time from suplidors where codigo_suplidor=@codigoSuplidor
GO
/****** Object:  StoredProcedure [dbo].[mostrarMasterProducto]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrarMasterProducto]
    @from INT,
    @limit INT
AS
BEGIN
SET NOCOUNT ON;
    SELECT 
	TOp 20
        mp.id as 'No Reg',
        mp.codigo AS 'Codigo de Barra',
        mp.codigo_sku AS 'Codigo SKU',
        mp.description AS Description,
        mp.categoria AS Categoria,
        mp.sub_categoria AS 'Sub Categoria',
        mp.marca AS Marca,
        mp.tipo AS Tipo,
        mp.caracteristica1 AS 'Caracteristica 1',
        mp.caracteristica2 AS 'Caracteristica 2',
        mp.caracteristica3 AS 'Caracteristica 3',
        mp.color AS Color,
        mp.magnitud_um AS 'Magnitud Um',
        mp.unidad_medida_base AS 'Unidad Medida Base',
        mp.unidad_almacenaje AS 'Unidad de Almacenaje',
        mp.longitud_cm AS 'Longiud cm',
        mp.ancho_cm AS 'Ancho cm',
        mp.volumen_cm AS 'Volumen cm',
        mp.peso_kg AS 'Peso kg',
        lp.costo_unitario AS 'Costo Und',
        p.nombre_de_planta AS Planta,
        mp.umb AS UMB,
        mp.qty AS Qty,
        s.codigo_suplidor AS 'Codigo Suplidor',
        s.nombre AS 'Nombre Suplidor',
        uc.nombre AS 'Creado Por',
        mp.fecha_creacion AS 'Fecha Creacion',
        CONVERT(VARCHAR(15), mp.hora_creacion, 100) AS 'Hora Creacion',
        um.nombre AS 'Modificado Por',
        mp.ultima_modificacion AS 'Ultima Modificacion',
        CONVERT(VARCHAR(15), mp.hora_modificacion, 100) AS 'Hora Modificacion',
		mp.indicador as Indicador
    FROM 
        master_de_producto AS mp  WITH (NOLOCK)
    INNER JOIN usuario AS uc ON mp.usuario_creacion_id = uc.id
    INNER JOIN usuario AS um ON mp.usuario_modificacion_id = um.id
    INNER JOIN planta AS p ON mp.planta_id = p.id
    INNER JOIN suplidors AS s ON mp.codigo_suplidor = s.codigo_suplidor
	INNER JOIN lista_de_precios as lp on mp.id=lp.product_id
    WHERE 
        mp.flag = 'existe'
    ORDER BY 
        mp.ultima_modificacion DESC
  
END
GO
/****** Object:  StoredProcedure [dbo].[mostrarPLantas]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrarPLantas]
as


SELECT
planta.id as ID,
planta.nombre_de_planta as Planta,
usuario.nombre as 'Creado Por' ,
planta.fecha_creacion as 'Fecha Creacion',
CONVERT(VARCHAR(15), planta.hora_creacion, 100)  as 'Hora Creacion' ,
usuario.nombre as'Modificado Por',
planta.fecha_modificacion as'Fecha Modificacion',
CONVERT(VARCHAR(15), planta.hora_modificacion, 100) as 'Hora Modificacion'

FROM 
    planta
INNER JOIN usuario AS userCreacion ON planta.creado_por = userCreacion.id
INNER JOIN usuario AS usuario ON planta.modificado_por = usuario.id
WHERE 
    planta.flag = 'existe'    order by planta.id desc

 



GO
/****** Object:  StoredProcedure [dbo].[mostrarSuplidores]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrarSuplidores]
@from int,
@limit int
as






	SELECT 
    suplidors.id,
    suplidors.codigo_suplidor AS 'Codigo de suplidor',
    suplidors.nombre AS Nombre,
	suplidors.rnc_de_la_empresa as 'Rnc de La Empresa' ,
    suplidors.direccion AS Direccion,
    suplidors.direccion2 AS 'Direccion 2',
    suplidors.sitio_web AS 'Sitio Web',
    suplidors.calle_y_numero AS 'Calle & Numero',
    suplidors.pais AS Pais,
    suplidors.ciudad AS Ciudad,
    suplidors.codigo_postal AS 'Codigo Postal',
    suplidors.estado_provicincia AS 'Estado/Provincia',
    suplidors.telefono AS Telefono,
    suplidors.telefono_movile AS 'Telefono Mobile',
    suplidors.fax AS Fax,
    suplidors.banco AS Banco,
    suplidors.numero_de_cuenta AS 'Numero de cuenta',
    suplidors.incoterm AS Incoterm,
    suplidors.puerto AS Puerto,
    suplidors.condiciones_de_pago AS 'Condiciones de Pago',
    suplidors.termino_de_pago AS 'Termino de pago',
    userCreacion.nombre AS 'Creado Por',
    suplidors.fecha AS 'Fecha Creacion',
    CONVERT(VARCHAR(15), suplidors.hora, 100) AS 'Hora Creacion',
    usuario.nombre AS 'Modificado Por',
    suplidors.fechaModificado AS 'Ultima Modificacion',
    CONVERT(VARCHAR(15), suplidors.horaMidificado, 100) AS 'Hora Modificacion'
FROM 
    suplidors
INNER JOIN usuario AS userCreacion ON suplidors.usuarioIdCreado = userCreacion.id
INNER JOIN usuario AS usuario ON suplidors.usuarioIdModificado = usuario.id
WHERE 
    suplidors.flag = 'existe'    order by suplidors.id desc OFFSET @from ROWS
    FETCH NEXT @limit ROWS ONLY



-- Índice 
GO
/****** Object:  StoredProcedure [dbo].[mostrrar_todo_el_master]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[mostrrar_todo_el_master]
as
select top 60000* from master_de_producto 
GO
/****** Object:  StoredProcedure [dbo].[verificar_si_existe_el_almacen_en_la_planta]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[verificar_si_existe_el_almacen_en_la_planta]
@planta_id int,
@almacen_id int
as

select * from planta_y_almacen where planta_id=@planta_id and almacen_id=@almacen_id

GO
/****** Object:  StoredProcedure [dbo].[verificarCodigoSuplidores]    Script Date: 2/9/2024 11:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[verificarCodigoSuplidores]
    @CodigosSuplidores dbo.codigoSuplidoresType READONLY
AS
BEGIN
    -- Consulta para verificar los códigos de suplidores
    SELECT codigo_suplidor
    FROM @CodigosSuplidores cs
    WHERE EXISTS (
        SELECT 1
        FROM suplidors s
        WHERE s.codigo_suplidor = cs.codigo_suplidor
    );
END

GO
USE [master]
GO
ALTER DATABASE [POS] SET  READ_WRITE 
GO
