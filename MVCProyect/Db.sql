USE [master]
GO
/****** Object:  Database [JorgeTamarizProyectoMVC]    Script Date: 26/7/2020 4:11:30 p. m. ******/
CREATE DATABASE [JorgeTamarizProyectoMVC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JorgeTamarizProyectoMVC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\JorgeTamarizProyectoMVC.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JorgeTamarizProyectoMVC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\JorgeTamarizProyectoMVC_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JorgeTamarizProyectoMVC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET ARITHABORT OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET  MULTI_USER 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET QUERY_STORE = OFF
GO
USE [JorgeTamarizProyectoMVC]
GO
/****** Object:  Table [dbo].[Cargos]    Script Date: 26/7/2020 4:11:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Cargo] [nchar](25) NOT NULL,
 CONSTRAINT [PK_Cargos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 26/7/2020 4:11:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamentos](
	[Codigo] [nchar](50) NOT NULL,
	[Nombre] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 26/7/2020 4:11:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](50) NOT NULL,
	[Apellido] [nchar](50) NOT NULL,
	[Cedula] [nchar](11) NOT NULL,
	[Salario] [money] NOT NULL,
	[Fecha_ingreso] [date] NOT NULL,
	[Telefono] [nchar](50) NOT NULL,
	[Email] [nchar](100) NOT NULL,
	[Cargo_ID] [int] NOT NULL,
	[Departamento_ID] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nomina]    Script Date: 26/7/2020 4:11:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nomina](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Año] [int] NOT NULL,
	[Mes] [int] NOT NULL,
	[Nomina] [money] NULL,
 CONSTRAINT [PK_Nomina] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Cargos_Empleados] FOREIGN KEY([Cargo_ID])
REFERENCES [dbo].[Cargos] ([ID])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Cargos_Empleados]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Departemento_Empleados] FOREIGN KEY([Departamento_ID])
REFERENCES [dbo].[Departamentos] ([Codigo])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Departemento_Empleados]
GO
/****** Object:  StoredProcedure [dbo].[CreateEmployee]    Script Date: 26/7/2020 4:11:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateEmployee] 
	@nombre VARCHAR(50),
	@apellido VARCHAR(50),
	@cedula VARCHAR(50),
	@salario MONEY,
	@fecha_ingreso DATE,
	@telefono VARCHAR(50),
	@email VARCHAR(50),
	@cargo_id INT,
	@departamento_id INT
AS
BEGIN
	INSERT INTO [dbo].[Empleados]
           ([Nombre]
           ,[Apellido]
           ,[Cedula]
           ,[Salario]
           ,[Fecha_ingreso]
           ,[Telefono]
           ,[Email]
           ,[Cargo_ID]
           ,[Departamento_ID])
     VALUES
           (@nombre,@apellido,@cedula,@salario,@fecha_ingreso,@telefono,@email,@cargo_id,@departamento_id);
END
GO
/****** Object:  StoredProcedure [dbo].[GetSalaries]    Script Date: 26/7/2020 4:11:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetSalaries] @Year INT, @Month int
AS
BEGIN
	DECLARE @Nomina DECIMAL;
	DECLARE @date DATE;
	DECLARE @LastNominaID INT;
	IF (@Month < 10)
		BEGIN
			SET @date = CONVERT(varchar(10), @Year) + '0' + CONVERT(varchar(10),@Month) + '01';
			SET @date = CONVERT(date, @date);
		END
	ELSE
		BEGIN
			SET @date = CONVERT(varchar(10), @Year) + CONVERT(varchar(10),@Month) + '01';
			SET @date = CONVERT(date, @date);
		END
	SELECT @Nomina = SUM(Salario) FROM Empleados WHERE Fecha_ingreso >= @date;

	INSERT INTO Nomina(Año, Mes, Nomina) VALUES(@Year,@Month,@Nomina);
	SELECT @LastNominaID = MAX(ID) FROM Nomina;
	UPDATE Nomina
	SET Nomina = 0.00
	WHERE Nomina IS NULL;
	SELECT TOP 1 Nomina FROM Nomina WHERE ID = @LastNominaID;
END
GO
USE [master]
GO
ALTER DATABASE [JorgeTamarizProyectoMVC] SET  READ_WRITE 
GO
