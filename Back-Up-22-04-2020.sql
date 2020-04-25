CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.34-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acreedor`
--

DROP TABLE IF EXISTS `acreedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acreedor` (
  `pkidacreedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `nit` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `calidadservicio` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pkidacreedor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acreedor`
--

LOCK TABLES `acreedor` WRITE;
/*!40000 ALTER TABLE `acreedor` DISABLE KEYS */;
INSERT INTO `acreedor` VALUES (1,'Juanito2',54454444,'454545454','juanito@gmail.com','zona10','Muy Insatisfecho',1),(2,'Juanito3',54454444,'454545454','juanito@gmail.com','zona10','Muy Insatisfecho',1),(3,'Juanito',54454444,'454545454','','zona10','Muy Insatisfecho',1);
/*!40000 ALTER TABLE `acreedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asistencia` (
  `pkcodigoasistencia` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigoempleado` int(11) NOT NULL,
  `fechaentrada` date DEFAULT NULL,
  `fechasalida` date DEFAULT NULL,
  `horaentrada` time DEFAULT NULL,
  `horasalida` time DEFAULT NULL,
  PRIMARY KEY (`pkcodigoasistencia`),
  KEY `fk_asistencia_empleado1_idx` (`fkcodigoempleado`),
  CONSTRAINT `fk_asistencia_empleado1` FOREIGN KEY (`fkcodigoempleado`) REFERENCES `empleado` (`pkcodigoempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayuda`
--

DROP TABLE IF EXISTS `ayuda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ayuda` (
  `Id_ayuda` int(11) NOT NULL,
  `Ruta` text COLLATE utf8_unicode_ci NOT NULL,
  `indice` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayuda`
--

LOCK TABLES `ayuda` WRITE;
/*!40000 ALTER TABLE `ayuda` DISABLE KEYS */;
INSERT INTO `ayuda` VALUES (1,'Página web ayuda/ayuda.chm','menu.html'),(2,'Página web ayuda/ayuda.chm','Menúboletos.html');
/*!40000 ALTER TABLE `ayuda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayudas`
--

DROP TABLE IF EXISTS `ayudas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ayudas` (
  `pkcodigoayuda` int(11) NOT NULL,
  `rutayuda` varchar(190) DEFAULT NULL,
  `indicedeayuda` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pkcodigoayuda`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayudas`
--

LOCK TABLES `ayudas` WRITE;
/*!40000 ALTER TABLE `ayudas` DISABLE KEYS */;
INSERT INTO `ayudas` VALUES (1,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','Conceptos.html',1),(2,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','Curriculum.html',1),(3,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','Despido.html',1),(4,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','MantenimientoDepartamentos.html',1),(5,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','ReuniónEliminar.html',1),(6,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','SanciónEliminar.html',1),(7,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','Empleados.html',1),(8,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','ControlAsistencia.html',1),(9,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','Reunión.html',1),(10,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','Sanción.html',1),(11,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','Jornada.html',1),(12,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','Medio Comunicacion.html',1),(13,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','ReuniónModificar.html',1),(14,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','MantenimientoPerfiles.html',1),(15,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','Tipo Contratacion.html',1),(16,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','asignacionempleado.html',1),(17,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','ProcesoBusquedaInterna.html',1),(18,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','Convocatoria.html',1),(19,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','Desempenio.html',1),(20,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','ProcesoBusquedaInterna',1),(21,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','PreSeleccion.html',1),(22,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','Metas.html',1),(23,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','Nomina.html',1),(24,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','PreSeleccion',1),(25,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','ProcesoSolicitudEmpleado',1),(55,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','Acreedor.html',1),(56,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','Ruta.html',1),(57,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','Transporte.html',1),(58,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','Tipo_Transporte.html',1),(59,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','DisponibilidadBodega.html',1),(60,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','MantenimientoImpuesto.html',1),(61,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','ProcesoFacturaProveedor.html',1),(62,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','devoluciones.html',1),(63,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','oredencompra.html',1),(64,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','ListaMovInv.html',1),(65,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','MovInv.html',1),(66,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','MantBodega.html',1),(67,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','MantProducto.html',1),(68,'C:/Empresa_Bienestar/Ayudas/ayudasrrhh.chm','MantProveedores.html',1);
/*!40000 ALTER TABLE `ayudas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacora` (
  `cod_bitacora` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(45) DEFAULT NULL,
  `MAC` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `departamento` varchar(45) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `accion` varchar(45) DEFAULT NULL,
  `formulario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod_bitacora`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (49,'192.168.43.238','0A0027000002','1','SCM','0000-00-00 00:00:00','Guardar','Frm_MantRuta'),(50,'192.168.43.238','0A0027000002','1','SCM','0000-00-00 00:00:00','Guardar','Frm_MantTipoTransporte'),(51,'192.168.43.238','0A0027000002','1','SCM','0000-00-00 00:00:00','Guardar','Frm_MantTransporte'),(52,'','','','SCM','0000-00-00 00:00:00','Guardar','Frm_MantBodega'),(53,'192.168.43.238','0A0027000002','1','SCM','0000-00-00 00:00:00','Guardar','Frm_MantAcreedor'),(54,'192.168.43.238','0A0027000002','1','SCM','0000-00-00 00:00:00','Guardar','Frm_MantImpuestos'),(55,'','','','SCM','0000-00-00 00:00:00','Guardar','Frm_MantBodega'),(56,'','','','SCM','0000-00-00 00:00:00','Guardar','Frm_MantProducto'),(57,'','','','SCM','0000-00-00 00:00:00','Guardar','Frm_MantProducto'),(58,'192.168.43.238','0A0027000002','1','SCM','0000-00-00 00:00:00','Guardar','Frm_MantImpuestos'),(59,'192.168.43.238','0A0027000002','1','SCM','0000-00-00 00:00:00','Modificar','Frm_MantImpuestos'),(60,'','','1','SCM','0000-00-00 00:00:00','Guardar','Frm_MantProveedores'),(61,'','','1','SCM','0000-00-00 00:00:00','Modificar','Frm_MantProveedores'),(62,'192.168.43.238','0A0027000002','JOSE','RRHH','0000-00-00 00:00:00','Modificar','Frm_MantEmpleado'),(63,'192.168.43.238','0A0027000002','Usuario','RRHH','0000-00-00 00:00:00','Guardar','Frm_Asignaciondeconcepto'),(64,'192.168.43.238','0A0027000002','Lucas','RRHH','0000-00-00 00:00:00','Guardar','Frm_MediodeComunicacion'),(65,'192.168.43.238','0A0027000002','Lucas','RRHH','0000-00-00 00:00:00','Guardar','Frm_MantTipoContratacion'),(66,'192.168.43.238','0A0027000002','Lucas','RRHH','0000-00-00 00:00:00','Guardar','Frm_MantTipoContratacion'),(67,'192.168.43.238','0A0027000002','Lucas','RRHH','0000-00-00 00:00:00','Guardar','Frm_MantCurriculum'),(68,'192.168.43.238','0A0027000002','Lucas','RRHH','0000-00-00 00:00:00','Guardar','Frm_MantJornada'),(69,'192.168.43.238','0A0027000002','Lucas','RRHH','0000-00-00 00:00:00','Modificar','Frm_MantJornada'),(70,'192.168.43.238','0A0027000002','Lucas','RRHH','0000-00-00 00:00:00','Guardar','Frm_MantJornada'),(71,'192.168.43.238','0A0027000002','Lucas','RRHH','0000-00-00 00:00:00','Guardar','Frm_ManteDepartamento'),(72,'192.168.43.238','0A0027000002','Lucas','RRHH','0000-00-00 00:00:00','Modificar','Frm_ManteDepartamento'),(73,'','','Lucas','HRM','0000-00-00 00:00:00','Modificar','Frm_MantMeta'),(74,'','','Lucas','HRM','0000-00-00 00:00:00','Modificar','Frm_MantMeta'),(75,'','','Lucas','HRM','0000-00-00 00:00:00','Modificar','Frm_MantMeta'),(76,'','','Lucas','HRM','0000-00-00 00:00:00','Eliminar','Frm_MantMeta'),(77,'','','','HRM','0000-00-00 00:00:00','Guardar','Frm_EvaluacionMeta'),(78,'','','','HRM','0000-00-00 00:00:00','Guardar','Frm_DesempeñodeEmpleado'),(79,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Guardar','Frm_Despido'),(80,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Guardar','Frm_MediodeComunicacion'),(81,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Guardar','Frm_MediodeComunicacion'),(82,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Guardar','Frm_MediodeComunicacion'),(83,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Guardar','Frm_MediodeComunicacion'),(84,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Modificar','Frm_MediodeComunicacion'),(85,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Guardar','Frm_MantTipoContratacion'),(86,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Guardar','Frm_MantTipoContratacion'),(87,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Modificar','Frm_MediodeComunicacion'),(88,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Modificar','Frm_MediodeComunicacion'),(89,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Guardar','Frm_MantTipoContratacion'),(90,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Guardar','Frm_MantTipoContratacion'),(91,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Modificar','Frm_MantTipoContratacion'),(92,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Modificar','Frm_ManteDepartamento'),(93,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Guardar','Frm_ManteDepartamento'),(94,'','','LPERICO','HRM','0000-00-00 00:00:00','Modificar','Frm_MantMeta'),(95,'','','LPERICO','HRM','0000-00-00 00:00:00','Modificar','Frm_MantMeta'),(96,'','','LPERICO','HRM','0000-00-00 00:00:00','Modificar','Frm_MantMeta'),(97,'','','LPERICO','HRM','0000-00-00 00:00:00','Modificar','Frm_MantMeta'),(98,'','','','HRM','0000-00-00 00:00:00','Guardar','Frm_EvaluacionMeta'),(99,'','','','HRM','0000-00-00 00:00:00','Guardar','Frm_EvaluacionMeta'),(100,'','','','HRM','0000-00-00 00:00:00','Guardar','Frm_EvaluacionMeta'),(101,'','','','HRM','0000-00-00 00:00:00','Guardar','Frm_EvaluacionMeta'),(102,'','','','HRM','0000-00-00 00:00:00','Guardar','Frm_DesempeñodeEmpleado'),(103,'','','','HRM','0000-00-00 00:00:00','Guardar','Frm_DesempeñodeEmpleado'),(104,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Guardar','Frm_MantTipoContratacion'),(105,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Guardar','Frm_MantJornada'),(106,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Modificar','Frm_MantJornada'),(107,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Guardar','Frm_MantCurriculum'),(108,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Guardar','Frm_MantCurriculum'),(109,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Guardar','Frm_MantPercepciones'),(110,'192.168.43.238','0A0027000002','LPERICO','RRHH','0000-00-00 00:00:00','Modificar','Frm_MantPercepciones');
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodega`
--

DROP TABLE IF EXISTS `bodega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodega` (
  `pkidBodega` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `StockMaximo` int(11) DEFAULT NULL,
  `StockMinimo` int(11) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pkidBodega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodega`
--

LOCK TABLES `bodega` WRITE;
/*!40000 ALTER TABLE `bodega` DISABLE KEYS */;
INSERT INTO `bodega` VALUES (1,'Bodegag','Zona2',215151515,'Bodegag@gmail.com',50,5,'1');
/*!40000 ALTER TABLE `bodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidatos_internos`
--

DROP TABLE IF EXISTS `candidatos_internos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidatos_internos` (
  `pkcodigocandidato` int(11) NOT NULL AUTO_INCREMENT,
  `pksolicitudempleado` int(11) NOT NULL,
  `pkcodperfil` int(11) NOT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pkcodigocandidato`,`pksolicitudempleado`,`pkcodperfil`),
  KEY `fk_candidatos_internos_tbl_solicitud_empleado_encabezado1_idx` (`pksolicitudempleado`),
  KEY `fk_candidatos_internos_perfil_encabezado1_idx` (`pkcodperfil`),
  CONSTRAINT `fk_candidatos_internos_perfil_encabezado1` FOREIGN KEY (`pkcodperfil`) REFERENCES `perfil_encabezado` (`pkcodperfil`),
  CONSTRAINT `fk_candidatos_internos_tbl_solicitud_empleado_encabezado1` FOREIGN KEY (`pksolicitudempleado`) REFERENCES `tbl_solicitud_empleado_encabezado` (`pksolicitudempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatos_internos`
--

LOCK TABLES `candidatos_internos` WRITE;
/*!40000 ALTER TABLE `candidatos_internos` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidatos_internos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `pkcodcategoria` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pkcodcategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concepto`
--

DROP TABLE IF EXISTS `concepto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concepto` (
  `pkcodigoconcepto` int(11) NOT NULL,
  `nombreconcepto` varchar(45) DEFAULT NULL,
  `tipo_concepto` tinyint(4) DEFAULT NULL,
  `saldo` double DEFAULT NULL,
  `tipo_accion` tinyint(4) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pkcodigoconcepto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concepto`
--

LOCK TABLES `concepto` WRITE;
/*!40000 ALTER TABLE `concepto` DISABLE KEYS */;
INSERT INTO `concepto` VALUES (1,'MANTECA',1,1,1,1),(2,'CASA',1,1,1,1),(3,'bono25',1,250,1,1);
/*!40000 ALTER TABLE `concepto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conceptos_empleado`
--

DROP TABLE IF EXISTS `conceptos_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conceptos_empleado` (
  `pkconceptoempleado` int(11) NOT NULL AUTO_INCREMENT,
  `pknombreconcepto` varchar(25) DEFAULT NULL,
  `Total_monto` int(11) DEFAULT NULL,
  PRIMARY KEY (`pkconceptoempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conceptos_empleado`
--

LOCK TABLES `conceptos_empleado` WRITE;
/*!40000 ALTER TABLE `conceptos_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `conceptos_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas_contable`
--

DROP TABLE IF EXISTS `cuentas_contable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentas_contable` (
  `pkcodigocuenta` int(11) NOT NULL,
  `nombre_cuenta` varchar(45) DEFAULT NULL,
  `monto` int(11) DEFAULT NULL,
  `debe_haber` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pkcodigocuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_contable`
--

LOCK TABLES `cuentas_contable` WRITE;
/*!40000 ALTER TABLE `cuentas_contable` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuentas_contable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamentos` (
  `pkcodigodepto` int(11) NOT NULL,
  `nombredepto` varchar(45) DEFAULT NULL,
  `descripciondepto` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pkcodigodepto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Peten','',1),(2,'Zaca','ddssd',1),(3,'papap','dfdf',1);
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `despidoempleado`
--

DROP TABLE IF EXISTS `despidoempleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `despidoempleado` (
  `pkcodigodespidoempleado` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigoempleado` int(11) NOT NULL,
  `razondespido` varchar(45) DEFAULT NULL,
  `descripciondespido` varchar(45) DEFAULT NULL,
  `fechadespido` date DEFAULT NULL,
  `indemnizacion` double DEFAULT NULL,
  PRIMARY KEY (`pkcodigodespidoempleado`),
  KEY `fk_despidoempleado_empleado1_idx` (`fkcodigoempleado`),
  CONSTRAINT `fk_despidoempleado_empleado1` FOREIGN KEY (`fkcodigoempleado`) REFERENCES `empleado` (`pkcodigoempleado`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `despidoempleado`
--

LOCK TABLES `despidoempleado` WRITE;
/*!40000 ALTER TABLE `despidoempleado` DISABLE KEYS */;
INSERT INTO `despidoempleado` VALUES (1,1,'Guapisimo','guapo','2055-04-09',102027.4);
/*!40000 ALTER TABLE `despidoempleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devoluciones`
--

DROP TABLE IF EXISTS `devoluciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devoluciones` (
  `pkcodigodev` int(11) NOT NULL,
  `pkidEncabezadoFacturaP` int(11) NOT NULL,
  `pkcodigoempleado` int(11) DEFAULT NULL,
  `fkIdOrdenCompra` int(11) DEFAULT NULL,
  `numerofactura` varchar(45) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `motivo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pkcodigodev`),
  KEY `fk_devoluciones1_idx` (`pkcodigoempleado`),
  KEY `fk_devoluciones_ordenComrpaEncabezado1_idx` (`fkIdOrdenCompra`),
  CONSTRAINT `fk_devoluciones_empleado1` FOREIGN KEY (`pkcodigoempleado`) REFERENCES `empleado` (`pkcodigoempleado`),
  CONSTRAINT `fk_devoluciones_ordenComrpaEncabezado1` FOREIGN KEY (`fkIdOrdenCompra`) REFERENCES `ordencomrpaencabezado` (`pkIdOrdenCompraEncabezado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devoluciones`
--

LOCK TABLES `devoluciones` WRITE;
/*!40000 ALTER TABLE `devoluciones` DISABLE KEYS */;
INSERT INTO `devoluciones` VALUES (1,5,1,1,'Factura  ff 12','4',''),(2,5,1,1,'Factura  ff 12','4',''),(3,6,1,1,'Factura  gf 122','10','No funciono');
/*!40000 ALTER TABLE `devoluciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `pkcodigoempleado` int(11) NOT NULL,
  `fkcodigojornada` int(11) NOT NULL,
  `primernombre` varchar(45) DEFAULT NULL,
  `segundonombre` varchar(45) DEFAULT NULL,
  `primerapellido` varchar(45) DEFAULT NULL,
  `segundoapellido` varchar(45) DEFAULT NULL,
  `fechadecontratacion` date DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `TipoContratacion_pkcodigocontratacion` int(11) DEFAULT NULL,
  `nit` int(11) DEFAULT NULL,
  PRIMARY KEY (`pkcodigoempleado`),
  KEY `fk_empleado_jornada_idx` (`fkcodigojornada`),
  CONSTRAINT `fk_empleado_jornada` FOREIGN KEY (`fkcodigojornada`) REFERENCES `jornada` (`pkcodigojornada`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,1,'Lucas','1','1','1','0000-00-00',1,'1','1','0000-00-00',1,1,1),(2,1,'Palito','Ortega','1','1','0000-00-00',1,'1','1','0000-00-00',1,1,1);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleadocontable`
--

DROP TABLE IF EXISTS `empleadocontable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleadocontable` (
  `pkcodigolinea` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigoempleado` int(11) DEFAULT NULL,
  `fkcodigoconcepto` int(11) DEFAULT NULL,
  PRIMARY KEY (`pkcodigolinea`),
  KEY `fk_empleadocontable_empleado1_idx` (`fkcodigoempleado`),
  KEY `fk_empleadocontable_concepto1_idx` (`fkcodigoconcepto`),
  CONSTRAINT `fk_empleadocontable_concepto1` FOREIGN KEY (`fkcodigoconcepto`) REFERENCES `concepto` (`pkcodigoconcepto`),
  CONSTRAINT `fk_empleadocontable_empleado1` FOREIGN KEY (`fkcodigoempleado`) REFERENCES `empleado` (`pkcodigoempleado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleadocontable`
--

LOCK TABLES `empleadocontable` WRITE;
/*!40000 ALTER TABLE `empleadocontable` DISABLE KEYS */;
INSERT INTO `empleadocontable` VALUES (1,1,1),(2,1,2),(3,2,1);
/*!40000 ALTER TABLE `empleadocontable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturaproveedordetalle`
--

DROP TABLE IF EXISTS `facturaproveedordetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturaproveedordetalle` (
  `pkidDetalleFactura` int(11) NOT NULL AUTO_INCREMENT,
  `fkidEncabezadoFactura` int(11) DEFAULT NULL,
  `fkidProducto` int(11) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `precioUnitario` double DEFAULT NULL,
  `subTotal` double DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pkidDetalleFactura`),
  KEY `fk_facturaProveedorDetalle_facturaProveedorEncabezado1_idx` (`fkidEncabezadoFactura`),
  KEY `fk_facturaProveedorDetalle_producto1_idx` (`fkidProducto`),
  CONSTRAINT `fk_facturaProveedorDetalle_facturaProveedorEncabezado1` FOREIGN KEY (`fkidEncabezadoFactura`) REFERENCES `facturaproveedorencabezado` (`pkidEncabezadoFacturaP`),
  CONSTRAINT `fk_facturaProveedorDetalle_producto1` FOREIGN KEY (`fkidProducto`) REFERENCES `producto` (`pkidProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturaproveedordetalle`
--

LOCK TABLES `facturaproveedordetalle` WRITE;
/*!40000 ALTER TABLE `facturaproveedordetalle` DISABLE KEYS */;
INSERT INTO `facturaproveedordetalle` VALUES (13,5,1,1,1,1,1),(14,5,2,1,2,1,1),(15,6,1,1,1,1,1),(16,6,2,1,2,2,1);
/*!40000 ALTER TABLE `facturaproveedordetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturaproveedorencabezado`
--

DROP TABLE IF EXISTS `facturaproveedorencabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturaproveedorencabezado` (
  `pkidEncabezadoFacturaP` int(11) NOT NULL,
  `fkIdOrdenCompra` int(11) DEFAULT NULL,
  `pkcodigoempleado` int(11) DEFAULT NULL,
  `segun` varchar(45) DEFAULT NULL,
  `serieFactura` varchar(45) DEFAULT NULL,
  `numeroFactura` varchar(45) DEFAULT NULL,
  `fechaEntrega` date DEFAULT NULL,
  `fkIdImpuesto` int(11) DEFAULT NULL,
  `totalImpuesto` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pkidEncabezadoFacturaP`),
  KEY `fk_facturaProveedorEncabezado_empleado1_idx` (`pkcodigoempleado`),
  KEY `fk_facturaproveedorencabezado_ordenComrpaEncabezado1_idx` (`fkIdOrdenCompra`),
  KEY `fk_facturaproveedorencabezado_impuestos1_idx` (`fkIdImpuesto`),
  CONSTRAINT `fk_facturaProveedorEncabezado_empleado1` FOREIGN KEY (`pkcodigoempleado`) REFERENCES `empleado` (`pkcodigoempleado`),
  CONSTRAINT `fk_facturaproveedorencabezado_impuestos1` FOREIGN KEY (`fkIdImpuesto`) REFERENCES `impuestos` (`pkidImpuesto`),
  CONSTRAINT `fk_facturaproveedorencabezado_ordenComrpaEncabezado1` FOREIGN KEY (`fkIdOrdenCompra`) REFERENCES `ordencomrpaencabezado` (`pkIdOrdenCompraEncabezado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturaproveedorencabezado`
--

LOCK TABLES `facturaproveedorencabezado` WRITE;
/*!40000 ALTER TABLE `facturaproveedorencabezado` DISABLE KEYS */;
INSERT INTO `facturaproveedorencabezado` VALUES (1,1,1,'Factura  ss 22','ss','22','2020-04-15',1,2,4,0,1),(2,1,1,'Factura  df 12','df','12','2020-04-15',1,2,4,0,1),(3,1,1,'Factura  bb 12','bb','12','2020-04-15',1,2,4,0,1),(4,1,1,'Factura  ff 12','ff','12','2020-04-15',1,2,4,0,1),(5,1,1,'Factura  ff 12','ff','12','2020-04-15',1,2,4,0,1),(6,1,1,'Factura  gf 122','gf','122','2020-04-15',1,5,10,0,1),(7,2,1,'Factura  A5 123','A5','123','2020-04-22',1,7,-70,12,1);
/*!40000 ALTER TABLE `facturaproveedorencabezado` ENABLE KEYS */;
UNLOCK TABLES;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `mydb`.`tgr_desactivar_ordenc`
AFTER INSERT ON `mydb`.`facturaproveedorencabezado`
FOR EACH ROW
begin
UPDATE ordencomrpaencabezado
SET estado='0' WHERE pkIdOrdenCompraEncabezado=New.fkIdOrdenCompra; 
end */;;
DELIMITER ;


--
-- Table structure for table `formaspago`
--

DROP TABLE IF EXISTS `formaspago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formaspago` (
  `pkIdFormaPago` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pkIdFormaPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formaspago`
--

LOCK TABLES `formaspago` WRITE;
/*!40000 ALTER TABLE `formaspago` DISABLE KEYS */;
INSERT INTO `formaspago` VALUES (1,'1','1',1);
/*!40000 ALTER TABLE `formaspago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horasextras`
--

DROP TABLE IF EXISTS `horasextras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horasextras` (
  `pkcodigohorasextras` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigoempleado` int(11) NOT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pkcodigohorasextras`),
  KEY `fk_horasextras_empleado1_idx` (`fkcodigoempleado`),
  CONSTRAINT `fk_horasextras_empleado1` FOREIGN KEY (`fkcodigoempleado`) REFERENCES `empleado` (`pkcodigoempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horasextras`
--

LOCK TABLES `horasextras` WRITE;
/*!40000 ALTER TABLE `horasextras` DISABLE KEYS */;
/*!40000 ALTER TABLE `horasextras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impuestos`
--

DROP TABLE IF EXISTS `impuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `impuestos` (
  `pkidImpuesto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pkidImpuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impuestos`
--

LOCK TABLES `impuestos` WRITE;
/*!40000 ALTER TABLE `impuestos` DISABLE KEYS */;
INSERT INTO `impuestos` VALUES (1,'Iva por pagas','1',1,1),(2,'Poruta','guay',0.8,1);
/*!40000 ALTER TABLE `impuestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jornada`
--

DROP TABLE IF EXISTS `jornada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jornada` (
  `pkcodigojornada` int(11) NOT NULL,
  `nombrejornada` varchar(45) DEFAULT NULL,
  `horasjornada` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pkcodigojornada`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jornada`
--

LOCK TABLES `jornada` WRITE;
/*!40000 ALTER TABLE `jornada` DISABLE KEYS */;
INSERT INTO `jornada` VALUES (1,'1',1,1),(2,'matutino',7,1);
/*!40000 ALTER TABLE `jornada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi`
--

DROP TABLE IF EXISTS `kpi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpi` (
  `pkcodigokpi` int(11) NOT NULL AUTO_INCREMENT,
  `fechadeasignacion` date DEFAULT NULL,
  `puntuacion` int(11) DEFAULT NULL,
  `fkcodempleado` int(11) DEFAULT NULL,
  `fkcodigo_meta` int(11) DEFAULT NULL,
  `estado_completado` varchar(45) DEFAULT NULL,
  `fecha_realizacion` date DEFAULT NULL,
  PRIMARY KEY (`pkcodigokpi`),
  KEY `fk_kpi_meta1_idx` (`fkcodigo_meta`),
  KEY `fk_kpi_empleado1_idx` (`fkcodempleado`),
  CONSTRAINT `fk_kpi_empleado1` FOREIGN KEY (`fkcodempleado`) REFERENCES `empleado` (`pkcodigoempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_kpi_meta1` FOREIGN KEY (`fkcodigo_meta`) REFERENCES `meta` (`pkcodigo_meta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi`
--

LOCK TABLES `kpi` WRITE;
/*!40000 ALTER TABLE `kpi` DISABLE KEYS */;
INSERT INTO `kpi` VALUES (1,'2020-04-24',10,1,1,'1','2020-04-24');
/*!40000 ALTER TABLE `kpi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro_diario`
--

DROP TABLE IF EXISTS `libro_diario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libro_diario` (
  `pkidlibrodiario` int(11) NOT NULL,
  `nombredelmovimiento` varchar(90) DEFAULT NULL,
  `fechadelmovimiento` date DEFAULT NULL,
  `debehaber` tinyint(2) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `estado` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`pkidlibrodiario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro_diario`
--

LOCK TABLES `libro_diario` WRITE;
/*!40000 ALTER TABLE `libro_diario` DISABLE KEYS */;
/*!40000 ALTER TABLE `libro_diario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mediodecomunicacion`
--

DROP TABLE IF EXISTS `mediodecomunicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mediodecomunicacion` (
  `pkmediodecomunicacion` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pkmediodecomunicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mediodecomunicacion`
--

LOCK TABLES `mediodecomunicacion` WRITE;
/*!40000 ALTER TABLE `mediodecomunicacion` DISABLE KEYS */;
INSERT INTO `mediodecomunicacion` VALUES (1,'tv','1','1',1),(2,'Tv3','1','1',0);
/*!40000 ALTER TABLE `mediodecomunicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta`
--

DROP TABLE IF EXISTS `meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta` (
  `pkcodigo_meta` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_meta` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `plazo_meta` varchar(45) DEFAULT NULL,
  `puntaje` varchar(45) DEFAULT NULL,
  `estado` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`pkcodigo_meta`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta`
--

LOCK TABLES `meta` WRITE;
/*!40000 ALTER TABLE `meta` DISABLE KEYS */;
INSERT INTO `meta` VALUES (1,'1','1','1','1',1),(2,'1','1','1','1',1);
/*!40000 ALTER TABLE `meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento_detalle`
--

DROP TABLE IF EXISTS `movimiento_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimiento_detalle` (
  `Linea` int(11) NOT NULL AUTO_INCREMENT,
  `pkidMovimiento` int(11) NOT NULL,
  `pkidmovimiento_general` int(11) NOT NULL,
  PRIMARY KEY (`Linea`,`pkidMovimiento`,`pkidmovimiento_general`),
  KEY `fk_movimiento_detalle_movimiento_encabezado1_idx` (`pkidMovimiento`),
  KEY `fk_movimiento_detalle_movimiento_general1_idx` (`pkidmovimiento_general`),
  CONSTRAINT `fk_movimiento_detalle_movimiento_encabezado1` FOREIGN KEY (`pkidMovimiento`) REFERENCES `movimiento_encabezado` (`pkidMovimiento`),
  CONSTRAINT `fk_movimiento_detalle_movimiento_general1` FOREIGN KEY (`pkidmovimiento_general`) REFERENCES `movimiento_general` (`pkidmovimiento_general`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento_detalle`
--

LOCK TABLES `movimiento_detalle` WRITE;
/*!40000 ALTER TABLE `movimiento_detalle` DISABLE KEYS */;
INSERT INTO `movimiento_detalle` VALUES (1,1,13),(2,1,19),(3,1,19);
/*!40000 ALTER TABLE `movimiento_detalle` ENABLE KEYS */;
UNLOCK TABLES;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER actualizarExistencias
AFTER INSERT ON movimiento_detalle
FOR EACH ROW
BEGIN

DECLARE x INT;
DECLARE x2 INT;
  SET x = (SELECT MAX(pkidProducto) FROM movimiento_general WHERE concepto = 'Factura Compra');
  SET x2 = (SELECT MAX(cantidad) FROM movimiento_general WHERE concepto = 'Factura Compra');
      Update productoenbodega set productoenbodega.Existencias = productoenbodega.Existencias + x2
      where productoenbodega.pkidProducto = x;
END */;;
DELIMITER ;

--
-- Table structure for table `movimiento_encabezado`
--

DROP TABLE IF EXISTS `movimiento_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimiento_encabezado` (
  `pkidMovimiento` int(11) NOT NULL,
  `pkcodigoempleado` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pkidMovimiento`,`pkcodigoempleado`),
  KEY `fk_movimiento_encabezado_empleado1_idx` (`pkcodigoempleado`),
  CONSTRAINT `fk_movimiento_encabezado_empleado1` FOREIGN KEY (`pkcodigoempleado`) REFERENCES `empleado` (`pkcodigoempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento_encabezado`
--

LOCK TABLES `movimiento_encabezado` WRITE;
/*!40000 ALTER TABLE `movimiento_encabezado` DISABLE KEYS */;
INSERT INTO `movimiento_encabezado` VALUES (1,1,'0000-00-00',1);
/*!40000 ALTER TABLE `movimiento_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento_general`
--

DROP TABLE IF EXISTS `movimiento_general`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimiento_general` (
  `pkidmovimiento_general` int(11) NOT NULL AUTO_INCREMENT,
  `pkidProducto` int(11) DEFAULT NULL,
  `concepto` varchar(45) DEFAULT NULL,
  `documento` varchar(45) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`pkidmovimiento_general`),
  KEY `fk_movimiento_general_producto1_idx` (`pkidProducto`),
  CONSTRAINT `fk_movimiento_general_producto1` FOREIGN KEY (`pkidProducto`) REFERENCES `producto` (`pkidProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento_general`
--

LOCK TABLES `movimiento_general` WRITE;
/*!40000 ALTER TABLE `movimiento_general` DISABLE KEYS */;
INSERT INTO `movimiento_general` VALUES (3,1,'Factura Compra','Factura  ss 12',1,'2020-04-15'),(5,1,'Factura Compra','Factura  ss 22',1,'2020-04-15'),(7,1,'Factura Compra','Factura  df 12',1,'2020-04-15'),(9,1,'Factura Compra','Factura  bb 12',1,'2020-04-15'),(11,1,'Factura Compra','Factura  ff 12',1,'2020-04-15'),(12,2,'Factura Compra','Factura  ff 12',1,'2020-04-15'),(13,3,'Factura Compra','Factura  ff 12',1,'2020-04-15'),(14,2,'Factura Compra','Factura  ff 12',1,'2020-04-15'),(15,1,'Factura Compra','Factura  gf 122',1,'2020-04-15'),(16,2,'Factura Compra','Factura  gf 122',1,'2020-04-15'),(17,3,'Factura Compra','Factura Compra',5,'2020-04-15'),(18,3,'Factura Compra','Factura Compra',10,'2020-04-15'),(19,3,'Factura Compra','Factura Compra',10,'2020-04-15'),(20,1,'Devolucion Compra','Factura  ff 12',-1,'2020-04-16'),(21,2,'Devolucion Compra','Factura  ff 12',-1,'2020-04-16'),(22,1,'Devolucion Compra','Factura  ff 12',-1,'2020-04-16'),(23,2,'Devolucion Compra','Factura  ff 12',-1,'2020-04-16'),(24,1,'Devolucion Compra','Factura  gf 122',-1,'2020-04-21'),(25,2,'Devolucion Compra','Factura  gf 122',-1,'2020-04-21'),(26,1,'Devolucion Compra','Factura  ff 12',-1,'2020-04-21'),(27,2,'Devolucion Compra','Factura  ff 12',-1,'2020-04-21'),(28,1,'Devolucion Compra','Factura  gf 122',-1,'2020-04-22'),(29,2,'Devolucion Compra','Factura  gf 122',-1,'2020-04-22');
/*!40000 ALTER TABLE `movimiento_general` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nomina_encabezado`
--

DROP TABLE IF EXISTS `nomina_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nomina_encabezado` (
  `pkcodigonomina` int(11) NOT NULL,
  `tipo_nomina` tinyint(4) DEFAULT NULL,
  `fechainicio` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `fkcodigoempleado` int(11) DEFAULT NULL,
  `Observaciones` varchar(45) DEFAULT NULL,
  `saldo_total` double DEFAULT '0',
  PRIMARY KEY (`pkcodigonomina`),
  KEY `fk_nomina_encabezado_empleado1_idx` (`fkcodigoempleado`),
  CONSTRAINT `fk_nomina_encabezado_empleado1` FOREIGN KEY (`fkcodigoempleado`) REFERENCES `empleado` (`pkcodigoempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nomina_encabezado`
--

LOCK TABLES `nomina_encabezado` WRITE;
/*!40000 ALTER TABLE `nomina_encabezado` DISABLE KEYS */;
INSERT INTO `nomina_encabezado` VALUES (1,1,'0000-00-00','0000-00-00',1,'1',1);
/*!40000 ALTER TABLE `nomina_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nominadetalle`
--

DROP TABLE IF EXISTS `nominadetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nominadetalle` (
  `pkcodigonomina` int(11) NOT NULL,
  `cod_linea` int(11) NOT NULL,
  `subtotal_percepcion` double DEFAULT NULL,
  `subtotal_deduccion` double DEFAULT NULL,
  `nominadetallecol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pkcodigonomina`,`cod_linea`),
  CONSTRAINT `fk_nominadetalle_nomina_encabezado1` FOREIGN KEY (`pkcodigonomina`) REFERENCES `nomina_encabezado` (`pkcodigonomina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nominadetalle`
--

LOCK TABLES `nominadetalle` WRITE;
/*!40000 ALTER TABLE `nominadetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `nominadetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordencompradetalle`
--

DROP TABLE IF EXISTS `ordencompradetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordencompradetalle` (
  `pkIdCompraDetalle` int(11) NOT NULL,
  `fkIdordenCompraEncabezado` int(11) DEFAULT NULL,
  `codigoLinea` int(11) NOT NULL AUTO_INCREMENT,
  `fkIdProducto` int(11) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `subTotal` double DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`codigoLinea`,`pkIdCompraDetalle`),
  KEY `fk_ordenCompraDetalle_ordenComrpaEncabezado1_idx` (`fkIdordenCompraEncabezado`),
  KEY `fk_ordenCompraDetalle_producto1_idx` (`fkIdProducto`),
  CONSTRAINT `fk_ordenCompraDetalle_ordenComrpaEncabezado1` FOREIGN KEY (`fkIdordenCompraEncabezado`) REFERENCES `ordencomrpaencabezado` (`pkIdOrdenCompraEncabezado`),
  CONSTRAINT `fk_ordenCompraDetalle_producto1` FOREIGN KEY (`fkIdProducto`) REFERENCES `producto` (`pkidProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordencompradetalle`
--

LOCK TABLES `ordencompradetalle` WRITE;
/*!40000 ALTER TABLE `ordencompradetalle` DISABLE KEYS */;
INSERT INTO `ordencompradetalle` VALUES (1,1,1,1,1,1,1),(2,1,2,2,1,1,1),(3,1,3,1,1,1,1),(4,1,4,1,1,1,1),(0,2,5,3,5,60,1),(0,2,6,4,2,42,1);
/*!40000 ALTER TABLE `ordencompradetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordencomrpaencabezado`
--

DROP TABLE IF EXISTS `ordencomrpaencabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordencomrpaencabezado` (
  `pkIdOrdenCompraEncabezado` int(11) NOT NULL,
  `fkIdProveedor` int(11) DEFAULT NULL,
  `fkIdFormaPago` int(11) DEFAULT NULL,
  `fechaPedido` date DEFAULT NULL,
  `fechaRequerida` date DEFAULT NULL,
  `pkcodigoempleado` int(11) DEFAULT NULL,
  `observaciones` varchar(45) DEFAULT NULL,
  `totalImpuesto` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pkIdOrdenCompraEncabezado`),
  KEY `fk_ordenComrpaEncabezado_formasPago1_idx` (`fkIdFormaPago`),
  KEY `fk_ordenComrpaEncabezado_empleado1_idx` (`pkcodigoempleado`),
  KEY `fk_ordenComrpaEncabezado_proveedor1_idx` (`fkIdProveedor`),
  CONSTRAINT `fk_ordenComrpaEncabezado_empleado1` FOREIGN KEY (`pkcodigoempleado`) REFERENCES `empleado` (`pkcodigoempleado`),
  CONSTRAINT `fk_ordenComrpaEncabezado_formasPago1` FOREIGN KEY (`fkIdFormaPago`) REFERENCES `formaspago` (`pkIdFormaPago`),
  CONSTRAINT `fk_ordenComrpaEncabezado_proveedor1` FOREIGN KEY (`fkIdProveedor`) REFERENCES `proveedor` (`pkidProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordencomrpaencabezado`
--

LOCK TABLES `ordencomrpaencabezado` WRITE;
/*!40000 ALTER TABLE `ordencomrpaencabezado` DISABLE KEYS */;
INSERT INTO `ordencomrpaencabezado` VALUES (1,1,1,'0000-00-00','0000-00-00',1,'1',1,1,1,1),(2,1,1,'2020-04-22','2020-04-27',1,'Ejemplo',102,203.49,0.51,0);
/*!40000 ALTER TABLE `ordencomrpaencabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_detalle`
--

DROP TABLE IF EXISTS `perfil_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_detalle` (
  `fkcodperfil` int(11) NOT NULL,
  `primaria` tinyint(1) DEFAULT NULL,
  `secundaria` tinyint(1) DEFAULT NULL,
  `bachillerato` tinyint(1) DEFAULT NULL,
  `estudiante_U` tinyint(1) DEFAULT NULL,
  `graduado_U` tinyint(1) DEFAULT NULL,
  `curso_extra` tinyint(1) DEFAULT NULL,
  `descripcion_curso` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`fkcodperfil`),
  CONSTRAINT `fk_perfil_detalle_perfil_encabezado1` FOREIGN KEY (`fkcodperfil`) REFERENCES `perfil_encabezado` (`pkcodperfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_detalle`
--

LOCK TABLES `perfil_detalle` WRITE;
/*!40000 ALTER TABLE `perfil_detalle` DISABLE KEYS */;
INSERT INTO `perfil_detalle` VALUES (1,1,1,1,1,1,1,'1',1);
/*!40000 ALTER TABLE `perfil_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_encabezado`
--

DROP TABLE IF EXISTS `perfil_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_encabezado` (
  `pkcodperfil` int(11) NOT NULL,
  `fkcodigopuesto` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pkcodperfil`),
  KEY `fk_perfil_encabezado_puesto1_idx` (`fkcodigopuesto`),
  CONSTRAINT `fk_perfil_encabezado_puesto1` FOREIGN KEY (`fkcodigopuesto`) REFERENCES `puesto` (`pkcodigopuesto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_encabezado`
--

LOCK TABLES `perfil_encabezado` WRITE;
/*!40000 ALTER TABLE `perfil_encabezado` DISABLE KEYS */;
INSERT INTO `perfil_encabezado` VALUES (1,1,1);
/*!40000 ALTER TABLE `perfil_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poliza_detalle`
--

DROP TABLE IF EXISTS `poliza_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poliza_detalle` (
  `cod_linea` int(11) NOT NULL AUTO_INCREMENT,
  `pkcodigopoliza` int(11) NOT NULL,
  `cuentas` varchar(25) DEFAULT NULL,
  `Debe` int(11) DEFAULT NULL,
  `Haber` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_linea`,`pkcodigopoliza`),
  KEY `fk_poliza_detalle_poliza_encabezado1` (`pkcodigopoliza`),
  CONSTRAINT `fk_poliza_detalle_poliza_encabezado1` FOREIGN KEY (`pkcodigopoliza`) REFERENCES `poliza_encabezado` (`pkcodigopoliza`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poliza_detalle`
--

LOCK TABLES `poliza_detalle` WRITE;
/*!40000 ALTER TABLE `poliza_detalle` DISABLE KEYS */;
INSERT INTO `poliza_detalle` VALUES (1,1,'1',50,0),(2,1,'2',0,50);
/*!40000 ALTER TABLE `poliza_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poliza_encabezado`
--

DROP TABLE IF EXISTS `poliza_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poliza_encabezado` (
  `pkcodigopoliza` int(11) NOT NULL,
  `pkcodigonomina` int(11) NOT NULL,
  `fechainicio` int(21) DEFAULT NULL,
  `fechafin` int(21) DEFAULT NULL,
  PRIMARY KEY (`pkcodigopoliza`,`pkcodigonomina`),
  KEY `fk_poliza_encabezado_nomina_encabezado1_idx` (`pkcodigonomina`),
  CONSTRAINT `fk_poliza_encabezado_nomina_encabezado1` FOREIGN KEY (`pkcodigonomina`) REFERENCES `nomina_encabezado` (`pkcodigonomina`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poliza_encabezado`
--

LOCK TABLES `poliza_encabezado` WRITE;
/*!40000 ALTER TABLE `poliza_encabezado` DISABLE KEYS */;
INSERT INTO `poliza_encabezado` VALUES (1,1,1,1);
/*!40000 ALTER TABLE `poliza_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `pkidProveedor` int(11) NOT NULL,
  `pkidProducto` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Precio` decimal(3,0) DEFAULT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Presentacion` varchar(45) DEFAULT NULL,
  `Costo` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `pktipo_producto` int(11) NOT NULL,
  PRIMARY KEY (`pkidProducto`,`pkidProveedor`),
  KEY `fk_Producto_Tipo Producto1_idx` (`pktipo_producto`),
  KEY `fk_Producto_Proveedor1_idx` (`pkidProveedor`),
  CONSTRAINT `fk_Producto_Proveedor1` FOREIGN KEY (`pkidProveedor`) REFERENCES `proveedor` (`pkidProveedor`),
  CONSTRAINT `fk_Producto_Tipo Producto1` FOREIGN KEY (`pktipo_producto`) REFERENCES `tipo_producto` (`pktipo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,1,'1',1,'1','1',1,1,1),(1,2,'1',11,'1','1',1,1,1),(1,3,'Arroz',24,'Costal de papa','Costal',12,1,1),(1,4,'Papas',22,'hggh','Cabezon',21,1,1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productoenbodega`
--

DROP TABLE IF EXISTS `productoenbodega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productoenbodega` (
  `pkidBodega` int(11) NOT NULL,
  `pkidProducto` int(11) NOT NULL,
  `Existencias` int(11) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pkidBodega`,`pkidProducto`),
  KEY `fk_ProductoenBodega_Bodega1_idx` (`pkidBodega`),
  KEY `fk_productoenbodega_producto1_idx` (`pkidProducto`),
  CONSTRAINT `fk_productoenbodega_bodega1` FOREIGN KEY (`pkidBodega`) REFERENCES `bodega` (`pkidBodega`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_productoenbodega_producto1` FOREIGN KEY (`pkidProducto`) REFERENCES `producto` (`pkidProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productoenbodega`
--

LOCK TABLES `productoenbodega` WRITE;
/*!40000 ALTER TABLE `productoenbodega` DISABLE KEYS */;
INSERT INTO `productoenbodega` VALUES (1,3,25,'1'),(1,4,5,'1');
/*!40000 ALTER TABLE `productoenbodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `pkidProveedor` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Nit` int(11) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pkidProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Walmart',0,'15665',1565656,'156hghg',1);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puesto`
--

DROP TABLE IF EXISTS `puesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puesto` (
  `pkcodigopuesto` int(11) NOT NULL,
  `fkcodigoempleado` int(11) NOT NULL,
  `fkcodigodepto` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `sueldo` double DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pkcodigopuesto`),
  KEY `fk_puesto_empleado1_idx` (`fkcodigoempleado`),
  KEY `fk_puesto_departamentos1_idx` (`fkcodigodepto`),
  CONSTRAINT `fk_puesto_departamentos1` FOREIGN KEY (`fkcodigodepto`) REFERENCES `departamentos` (`pkcodigodepto`),
  CONSTRAINT `fk_puesto_empleado1` FOREIGN KEY (`fkcodigoempleado`) REFERENCES `empleado` (`pkcodigoempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puesto`
--

LOCK TABLES `puesto` WRITE;
/*!40000 ALTER TABLE `puesto` DISABLE KEYS */;
INSERT INTO `puesto` VALUES (1,1,1,'1',250,'1');
/*!40000 ALTER TABLE `puesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportes`
--

DROP TABLE IF EXISTS `reportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportes` (
  `pkidreporte` int(11) NOT NULL,
  `ubicacion` varchar(90) DEFAULT NULL,
  `estado` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`pkidreporte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportes`
--

LOCK TABLES `reportes` WRITE;
/*!40000 ALTER TABLE `reportes` DISABLE KEYS */;
INSERT INTO `reportes` VALUES (1,'C:/Empresa_Bienestar/Reportes/proveedor.rpt',1),(2,'C:/Empresa_Bienestar/Reportes/productos.rpt',1),(3,'C:/Empresa_Bienestar/Reportes/impuestos.rpt',1),(101,'C:/Empresa_Bienestar/Reportes/Factura.rpt',1),(102,'C:/Empresa_Bienestar/Reportes/ordencomprarpt.rpt',1),(103,'C:/Empresa_Bienestar/Reportes/Devolucion.rpt',1);
/*!40000 ALTER TABLE `reportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reuniones`
--

DROP TABLE IF EXISTS `reuniones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reuniones` (
  `pkcodigoreuniones` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigoempleado` int(11) NOT NULL,
  `nombrereunion` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `fechainicio` time DEFAULT NULL,
  `fechafinal` time DEFAULT NULL,
  `horainicio` datetime DEFAULT NULL,
  `horafinal` datetime DEFAULT NULL,
  `cantidadempleados` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pkcodigoreuniones`),
  KEY `fk_reuniones_empleado1_idx` (`fkcodigoempleado`),
  CONSTRAINT `fk_reuniones_empleado1` FOREIGN KEY (`fkcodigoempleado`) REFERENCES `empleado` (`pkcodigoempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reuniones`
--

LOCK TABLES `reuniones` WRITE;
/*!40000 ALTER TABLE `reuniones` DISABLE KEYS */;
/*!40000 ALTER TABLE `reuniones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruta`
--

DROP TABLE IF EXISTS `ruta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruta` (
  `pkidruta` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pkidruta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruta`
--

LOCK TABLES `ruta` WRITE;
/*!40000 ALTER TABLE `ruta` DISABLE KEYS */;
INSERT INTO `ruta` VALUES (1,'Zona7','Peligro',1);
/*!40000 ALTER TABLE `ruta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sancionempleado`
--

DROP TABLE IF EXISTS `sancionempleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sancionempleado` (
  `pkcodigosansionempleado` int(11) NOT NULL AUTO_INCREMENT,
  `fkcodigoempleado` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descipcion` varchar(45) DEFAULT NULL,
  `fechainicio` date DEFAULT NULL,
  `fechafinal` date DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pkcodigosansionempleado`),
  KEY `fk_sancionempleado_empleado1_idx` (`fkcodigoempleado`),
  CONSTRAINT `fk_sancionempleado_empleado1` FOREIGN KEY (`fkcodigoempleado`) REFERENCES `empleado` (`pkcodigoempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sancionempleado`
--

LOCK TABLES `sancionempleado` WRITE;
/*!40000 ALTER TABLE `sancionempleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `sancionempleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sucursal` (
  `pkidsucursal` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pkidsucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bancotalento`
--

DROP TABLE IF EXISTS `tbl_bancotalento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bancotalento` (
  `pkBancoTalento` int(11) NOT NULL AUTO_INCREMENT,
  `fkCurriculum` int(11) NOT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pkBancoTalento`,`fkCurriculum`),
  KEY `FK_Curriculum_BancoT` (`fkCurriculum`),
  CONSTRAINT `FK_Curriculum_BancoT` FOREIGN KEY (`fkCurriculum`) REFERENCES `tbl_curriculums` (`pkidCurriculum`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bancotalento`
--

LOCK TABLES `tbl_bancotalento` WRITE;
/*!40000 ALTER TABLE `tbl_bancotalento` DISABLE KEYS */;
INSERT INTO `tbl_bancotalento` VALUES (1,1,1);
/*!40000 ALTER TABLE `tbl_bancotalento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_curriculums`
--

DROP TABLE IF EXISTS `tbl_curriculums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_curriculums` (
  `pkidCurriculum` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Numero` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Correo_Electronico` varchar(45) DEFAULT NULL,
  `Primaria` tinyint(1) DEFAULT NULL,
  `Secundaria` tinyint(1) DEFAULT NULL,
  `Bachillerato` tinyint(1) DEFAULT NULL,
  `Estudiante_Universitario` tinyint(1) DEFAULT NULL,
  `GraduadoU` tinyint(1) DEFAULT NULL,
  `CursoExtra` tinyint(1) DEFAULT NULL,
  `DescripcionCursos` varchar(100) DEFAULT NULL,
  `Experiencia_Previa` varchar(45) DEFAULT NULL,
  `SueldoEsperado` double DEFAULT NULL,
  `fksolicitudempleado` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pkidCurriculum`),
  KEY `FK_solicitud_empleado_encabezado_Curriculums` (`fksolicitudempleado`),
  CONSTRAINT `FK_solicitud_empleado_encabezado_Curriculums` FOREIGN KEY (`fksolicitudempleado`) REFERENCES `tbl_solicitud_empleado_encabezado` (`pksolicitudempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_curriculums`
--

LOCK TABLES `tbl_curriculums` WRITE;
/*!40000 ALTER TABLE `tbl_curriculums` DISABLE KEYS */;
INSERT INTO `tbl_curriculums` VALUES (1,'1','1','','1','12',1,1,0,0,0,0,'','',222,1,1);
/*!40000 ALTER TABLE `tbl_curriculums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_solicitud_empleado_detalle`
--

DROP TABLE IF EXISTS `tbl_solicitud_empleado_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_solicitud_empleado_detalle` (
  `pksolicitudempleado` int(11) NOT NULL,
  `primaria` tinyint(1) DEFAULT NULL,
  `secundaria` tinyint(1) DEFAULT NULL,
  `bachillerato` tinyint(1) DEFAULT NULL,
  `estudiante_U` tinyint(1) DEFAULT NULL,
  `grado_U` tinyint(1) DEFAULT NULL,
  `curso_extra` tinyint(1) DEFAULT NULL,
  `descripcion_curso` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pksolicitudempleado`),
  CONSTRAINT `fk_tbl_solicitud_empleado_detalle_tbl_solicitud_empleado_enca1` FOREIGN KEY (`pksolicitudempleado`) REFERENCES `tbl_solicitud_empleado_encabezado` (`pksolicitudempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_solicitud_empleado_detalle`
--

LOCK TABLES `tbl_solicitud_empleado_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_solicitud_empleado_detalle` DISABLE KEYS */;
INSERT INTO `tbl_solicitud_empleado_detalle` VALUES (1,1,1,1,0,0,0,'si',1);
/*!40000 ALTER TABLE `tbl_solicitud_empleado_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_solicitud_empleado_encabezado`
--

DROP TABLE IF EXISTS `tbl_solicitud_empleado_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_solicitud_empleado_encabezado` (
  `pksolicitudempleado` int(11) NOT NULL,
  `fkcodigoempleado` int(11) DEFAULT NULL,
  `fkcodigocontratacion` int(11) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pksolicitudempleado`),
  KEY `fk_tbl_solicitud_empleado_encabezado_empleado1_idx` (`fkcodigoempleado`),
  KEY `fk_tbl_solicitud_empleado_encabezado_tipocontratacion1_idx` (`fkcodigocontratacion`),
  CONSTRAINT `fk_tbl_solicitud_empleado_encabezado_empleado1` FOREIGN KEY (`fkcodigoempleado`) REFERENCES `empleado` (`pkcodigoempleado`),
  CONSTRAINT `fk_tbl_solicitud_empleado_encabezado_tipocontratacion1` FOREIGN KEY (`fkcodigocontratacion`) REFERENCES `tipocontratacion` (`pkcodigocontratacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_solicitud_empleado_encabezado`
--

LOCK TABLES `tbl_solicitud_empleado_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_solicitud_empleado_encabezado` DISABLE KEYS */;
INSERT INTO `tbl_solicitud_empleado_encabezado` VALUES (1,2,1,'2020-04-24',1);
/*!40000 ALTER TABLE `tbl_solicitud_empleado_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_producto`
--

DROP TABLE IF EXISTS `tipo_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_producto` (
  `pktipo_producto` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pktipo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_producto`
--

LOCK TABLES `tipo_producto` WRITE;
/*!40000 ALTER TABLE `tipo_producto` DISABLE KEYS */;
INSERT INTO `tipo_producto` VALUES (1,'Materia Prima','para MRP',1),(2,'Venta','para CRM',1);
/*!40000 ALTER TABLE `tipo_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_usuario` (
  `pktipousuario` int(10) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` tinyint(2) DEFAULT NULL,
  `guardar` tinyint(2) DEFAULT NULL,
  `modificar` tinyint(2) DEFAULT NULL,
  `eliminar` tinyint(2) DEFAULT NULL,
  `consultar` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`pktipousuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` VALUES (1,'Adm','panual',1,1,1,1,1);
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipobodega`
--

DROP TABLE IF EXISTS `tipobodega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipobodega` (
  `pkidtipobodega` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `capacidad` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pkidtipobodega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipobodega`
--

LOCK TABLES `tipobodega` WRITE;
/*!40000 ALTER TABLE `tipobodega` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipobodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocontratacion`
--

DROP TABLE IF EXISTS `tipocontratacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocontratacion` (
  `pkcodigocontratacion` int(11) NOT NULL,
  `PorContrato` varchar(45) DEFAULT NULL,
  `PorMeses` varchar(45) DEFAULT NULL,
  `PorProyecto` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pkcodigocontratacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocontratacion`
--

LOCK TABLES `tipocontratacion` WRITE;
/*!40000 ALTER TABLE `tipocontratacion` DISABLE KEYS */;
INSERT INTO `tipocontratacion` VALUES (1,'1','1','1',1),(3,'1','1','Por Proyecto',1),(4,'1','1','Por Proyecto',0);
/*!40000 ALTER TABLE `tipocontratacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipotransporte`
--

DROP TABLE IF EXISTS `tipotransporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipotransporte` (
  `pkidtipotransporte` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `capacidad` float DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pkidtipotransporte`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipotransporte`
--

LOCK TABLES `tipotransporte` WRITE;
/*!40000 ALTER TABLE `tipotransporte` DISABLE KEYS */;
INSERT INTO `tipotransporte` VALUES (1,'Camion',2,1);
/*!40000 ALTER TABLE `tipotransporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporte`
--

DROP TABLE IF EXISTS `transporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transporte` (
  `pkidtransporte` int(11) NOT NULL AUTO_INCREMENT,
  `fkidruta` int(11) NOT NULL,
  `fkidtipotransporte` int(11) NOT NULL,
  `placa` varchar(45) DEFAULT NULL,
  `chasis` varchar(45) DEFAULT NULL,
  `motor` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pkidtransporte`),
  KEY `fk_transporte_ruta1_idx` (`fkidruta`),
  KEY `fk_transporte_tipotransporte1_idx` (`fkidtipotransporte`),
  CONSTRAINT `fk_transporte_ruta1` FOREIGN KEY (`fkidruta`) REFERENCES `ruta` (`pkidruta`),
  CONSTRAINT `fk_transporte_tipotransporte1` FOREIGN KEY (`fkidtipotransporte`) REFERENCES `tipotransporte` (`pkidtipotransporte`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte`
--

LOCK TABLES `transporte` WRITE;
/*!40000 ALTER TABLE `transporte` DISABLE KEYS */;
INSERT INTO `transporte` VALUES (1,1,1,'21','12','12',1);
/*!40000 ALTER TABLE `transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `pkusuario` int(10) NOT NULL AUTO_INCREMENT,
  `pktipousuario` int(10) NOT NULL,
  `nombreusuario` varchar(45) DEFAULT NULL,
  `passusuario` varchar(45) DEFAULT NULL,
  `estado` tinyint(2) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `foto_ubicacion` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`pkusuario`,`pktipousuario`),
  KEY `fk_usuario_tipo_usuario1_idx` (`pktipousuario`),
  CONSTRAINT `fk_usuario_tipo_usuario1` FOREIGN KEY (`pktipousuario`) REFERENCES `tipo_usuario` (`pktipousuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,1,'JGONZALEZ','123',1,'jose.ale.gt.umg@gmail.com','C:/Empresa_Bienestar/Personal/jose.jpg'),(2,1,'IMOGOLLON','456',1,'mogo@gmail.com','C:/Empresa_Bienestar/Personal/ivan.jpg'),(3,1,'ISISDIAZ12','789',1,'isis@gmail.com','C:/Empresa_Bienestar/Personal/isis.jpg'),(4,1,'CONNYBAR','123',1,'conny@gmail.com','C:/Empresa_Bienestar/Personal/conny.jpg'),(5,1,'FREDYELI1','123',1,'fredy@gmail.com','C:/Empresa_Bienestar/Personal/fredy.jpg'),(6,1,'ASOLARES','123',1,'angel@gmail.com','C:/Empresa_Bienestar/Personal/angel.jpg'),(7,1,'PAULAVAS','123',1,'paula@gmail.com','C:/Empresa_Bienestar/Personal/paula.jpg'),(9,1,'PAULAVAS','123',0,'1','paula@gmail.com');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mydb'
--

--
-- Dumping routines for database 'mydb'
--

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cuentasenpolizadetalle`(
IN  nombrecuenta VARCHAR(45))
BEGIN
DECLARE x INT;
DECLARE x2 INT;
  SET x = (SELECT MAX(pkcodigoconcepto) FROM concepto WHERE nombreconcepto=nombrecuenta);
   SET x2 = (SELECT MAX(nombreconcepto) FROM concepto WHERE nombreconcepto=nombrecuenta);
 Update poliza_detalle set cuentas =x WHERE cuentas =nombrecuenta;
END ;;
DELIMITER ;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-24 23:23:01
