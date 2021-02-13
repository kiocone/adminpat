-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-02-2021 a las 16:03:29
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adminpatdb`
--
CREATE DATABASE IF NOT EXISTS `adminpatdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `adminpatdb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entidad`
--

CREATE TABLE `entidad` (
  `id` int(11) NOT NULL,
  `nit` varchar(12) NOT NULL,
  `razon_social` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entidad`
--

INSERT INTO `entidad` (`id`, `nit`, `razon_social`, `direccion`, `telefono`, `email`) VALUES
(1, '900233294', 'CLINICA GENERAL DEL CARIBE SA.', 'La Castellana Sector Contadora Trans 71B', '6475890', 'siau@clinicageneraldelcaribe.com'),
(4, '890480135-3', 'HOSP. INF. NAPOLEON FRANCO PAREJA', 'Amberes', '00', 'admisionescirugiahinfp@gmailcom'),
(5, '900670943-9', 'GASTROPACK SAS', 'Bocagrande Calle 5 # 6 -101', '6421432', 'siaugastropack.sas@gmail.com'),
(6, '890102768-5', 'ORG. CLINICA GENERAL DEL NORTE', 'Chipre Calle 31 M 6 Lote 26', '6535123', 'referencia_magisteriobol@clinicageneraldelnorte.co'),
(7, '860027404-1', 'ALLIANZ SEGUROS DE VIDA S.A', 'Av. Jimenez # 21 -78 local 3, Manga ', '6517337 ', 'alexandra.gallego@allianz.co'),
(8, '890400693-1 ', 'CLINICA BLAS DE LEZO S.A', '57, Tv. 54 #47, Provincia', '6632606', 'contabilidad.cblasdelezo@gmail.com'),
(9, '900304958-0 ', 'CLIN. SAN JOSE DE TORICES SAS', 'Cr14 43-66', '6569030', 'cirugia@clinicasanjosedetorices.com.co'),
(10, '890402485-3 ', 'LIGA CONTRA EL CANCER', 'Calle Castelbondo 2 23 Barrio Centro ', '6648494', 'ligacartagena@gmail.com'),
(11, '860027404-1', 'ALLIANZ SEGUROS DE VIDA SA', 'Bogotá D.C', '5187527', 'informaciones.dian@allianz.co'),
(12, '860002503-2 ', 'SEGUROS BOLIVAR S.A', 'Calle 29 B No. 17-109 Local 1-21 • Centro Comercial San Felipe', '6466002 ', 'oficina.cartagena@segurosbolivar.com'),
(13, '890903790 - ', 'ASEGURADORA DE VIDA SURAMERICANA S.A', ' Pie del cerro Calle 30 #17 - 109. Centro Comercial Portales de San Felipe, Local 1 - 20,', ' 656 17 57', 'solicitudes@suramericana.com.co'),
(14, '899999068-1 ', 'ECOPETROL S.A', 'Bocagrande', '000', 'sauydwendskh@bcsydsg'),
(15, '90000', 'PARTICULAR', 'Centro', '000', 'correo@correo.com'),
(16, '860.039.988-', 'LIBERTY SEGUROS S.A.', 'BARRIO TOBERIN KRA 23 # 166-36 BOGOTÁ -CUNDINAMARCA', 'ooooo', 'correo@correo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eps`
--

CREATE TABLE `eps` (
  `id` int(11) NOT NULL,
  `nit` varchar(12) NOT NULL,
  `razon_social` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `eps`
--

INSERT INTO `eps` (`id`, `nit`, `razon_social`, `direccion`, `telefono`, `email`) VALUES
(1, '890903790-5', 'SEGUROS DE VIDA SURAMERICANA S.A', 'Pie de la popa', '0010101', 'correo@correo.com'),
(2, '860027404-1', 'ALLIANZ SEGUROS DE VIDA SA.', 'Manga', '010101', 'correo@correo.com'),
(3, ' 860002503-2', 'SEGUROS BOLIVAR S.A', 'Pie de la popa', '456', 'correo@correo.com'),
(4, '890480135-3', 'HOSP. INF. NAPOLEON FRANCO PAREJA', 'lalala', '010101', 'correo@correo.com'),
(5, '890102768-5', 'ORG.  CLÍNICA GENERAL DEL NORTE', 'Chipre Calle 31 M 6 Lote 26', '0010101', 'correo@correo.com'),
(6, '890402485-3', 'LIGA CONTRA EL CANCER', 'Calle Castelbondo 2 23 Barrio Centro', '6648494', 'ligacartagena@gmail.com'),
(7, '899999068-1', 'ECOPETROL S.A', 'Manga', '05050', 'correo@correo.com'),
(8, '860000000', 'Mutual SER', 'Cabrero', '120101', 'correo@correo.com'),
(9, '860000', 'SALUD TOTAL', 'Centro', '01020', 'correo@correo.com'),
(10, '800000', 'Org. Magisterio', 'Centro', '0010101', 'correo@correo.com'),
(11, '86000000', 'Puertos', 'Centro', '0010101', 'correo@correo.com'),
(12, '9000000', 'Coosalud', 'centro', '01020', 'correo@correo.com'),
(13, '89000000', 'NUEVA EPS', 'SC', '01020', 'correo@correo.com'),
(14, '9000', 'PARTICULAR', 'CENTRO', '00', 'correo@correo.com'),
(15, '9000', 'C.', 'Centro', '0000', 'correo@correo.com'),
(16, '860.039.988-', 'LIBERTY SEGUROS S.A.', 'BARRIO TOBERIN KRA 23 # 166-36 BOGOTÁ -CUNDINAMARCA', '900000', 'correo@correo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informe`
--

CREATE TABLE `informe` (
  `id` int(11) NOT NULL,
  `informe_cod` varchar(11) DEFAULT NULL,
  `t_informe` varchar(1) DEFAULT NULL,
  `numdoc` varchar(13) DEFAULT NULL,
  `paciente` varchar(100) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `entidad` varchar(100) DEFAULT NULL,
  `eps` varchar(100) DEFAULT NULL,
  `medRemitente` varchar(100) DEFAULT NULL,
  `fec_muestra` varchar(10) DEFAULT NULL,
  `fec_inf` varchar(10) DEFAULT NULL,
  `fec_ingreso` varchar(10) DEFAULT NULL,
  `patologo` varchar(100) DEFAULT NULL,
  `macro` text DEFAULT NULL,
  `micro` text DEFAULT NULL,
  `diagnostico` text DEFAULT NULL,
  `inmuno` text DEFAULT NULL,
  `observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `informe`
--

INSERT INTO `informe` (`id`, `informe_cod`, `t_informe`, `numdoc`, `paciente`, `telefono`, `sexo`, `edad`, `entidad`, `eps`, `medRemitente`, `fec_muestra`, `fec_inf`, `fec_ingreso`, `patologo`, `macro`, `micro`, `diagnostico`, `inmuno`, `observaciones`) VALUES
(2, 'Q2101-1542', NULL, '33107794', 'ROSARIO BRIEVA ORTEGA', '010101', 'F', '1968/04/06', 'GASTROPACK SAS', 'SEGUROS DE VIDA SURAMERICANA S.A', 'Dr. CESAR ORTIZ', NULL, '2021-01-14', '2021-01-14', 'OLIVA MARRUGO GRICE', 'Rotulado \"Antro\" se reciben dos fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que miden 0.5 cms. Se toma todo.\r\n\r\n\r\n', 'Anto gástrico sin muscular de la mucosa y conservación de su histoarquitectura, la lámina propia presenta un infiltrado mononuclear moderado con agregados linfoides , actividad moderada, H.pylori presente. No se observa atrófia, metaplasia ni displasia.\r\n\r\n\r\n', ' Biopsia endoscópica de estómago:\r\n-GASTRITIS CRÓNICA MODERADA CON ACTIVIDAD MODERADA\r\n-H.PYLORI PRESENTE', '', ''),
(3, 'Q2101-1543', NULL, '7306146', 'CEDRICK CONTRERA GUARDO', '3005274659', 'F', '1984/07/19', 'GASTROPACK SAS', 'ALLIANZ SEGUROS DE VIDA SA.', 'Dr.BEATRIZ HELENA LINCE', NULL, '2021-01-14', '2021-01-14', 'OLIVA MARRUGO GRICE', 'Rotulado \"Antro\" recibe un fragmento de tejido de forma irregular de color blanquecino y consistencia elástica que mide 0.6 cms. Se toma todo.\r\n\r\n\r\n\r\n', 'Los cortes revelan antro gastrico sin muscular de la mucosa y conservación de su histoarquitectura, la lámina propia presenta un infiltrado mononuclear moderado, actividad moderada, H.pylori presente. No se observa atrófia, metaplasia ni displasia.\r\n\r\n', ' Biopsia endoscópica de estómago:\r\n-GASTRITIS CRÓNICA MODERADA CON ACTIVIDAD MODERADA \r\n-H.PYLORI PRESENTE', '', ''),
(4, 'Q2101-1544', NULL, '73105307', 'RICARDO PEREZ ALCALA', '3114285736', 'M', '1963/12/06', 'GASTROPACK SAS', 'SEGUROS DE VIDA SURAMERICANA S.A', 'Dr. CESAR ORTIZ', NULL, '2021-01-14', '2021-01-14', 'OLIVA MARRUGO GRICE', 'En recipientes separados y rotulados, se reciben:\r\n1. \"Ileon distal\" dos fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que miden 0.5 cms. Se toma todo y se rotulan A.\r\n2. \"Ciego\" múltiples fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que hacen un volumen de 1 ml. Se toma todo y se rotulan B.\r\n3. \"Colon sigmoides\" múltiples fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que juntos hacen un volumen de 1 ml. Se toma todo y se rotulan C.\r\n4. \"Recto\" cuatro fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que miden 0.5 cms. Se toma todo y se rotulan D.', 'Los cortes de A revelan ileon sin cambios.\r\nLos cortes de B y C revelan colon cuya lámina propia presenta un infiltrado inflamatorio difuso severo constituido por linfocitos, plasmocitos y PMN neutrófilos. Hay disminución del moco glandular y áreas de ulceración, las glandulas presentan distorsión de la arquitectura y ramificaciones.\r\nLos cortes D muestran estructuras compuestas por glándulas de tipo colónico  con leves atipias citológicas, dispuestas irregularmente sobre una lámina propia con moderada infiltración mononuclear.\r\n', ' Biopsia endoscópica de colon:\r\n1.ILEON SIN CAMBIOS\r\n\r\n2.COLITIS CRÓNICA ACTIVA COMPATIBLE CON COLITIS ULCERATIVA\r\n\r\n3.ADENOMAS TUBULARES', '', ''),
(5, 'Q2101-1545', NULL, '1047422568', 'LUIS GABRIEL TOVAR CARMONA', '3135189362', 'M', '2008/02/23', 'HOSP. INF. NAPOLEON FRANCO PAREJA', 'HOSP. INF. NAPOLEON FRANCO PAREJA', 'Dr. PASTOR THOMAS OLIVARES', NULL, '2021-01-14', '2021-01-14', 'OLIVA MARRUGO GRICE', 'Rotulado \"Ganglio cervical derecho\" se recibe una formación nodular, de forma ovoide que mide 1 x 0.6 cms. de color blanquecino y consistencia elástica. La superficie es lisa.\r\n\r\n', 'Ganglio linfático cuya arquitectura se encuentra conservada, hay foliculos linfoides de diferentes formas y tamaños rodeados por un manto linfociticos maduros.\r\n\r\n\r\n\r\n', ' Ganglio linfático cervical derecho:\r\n-HIPERPLASIA FOLICULAR REACTIVA\r\n', '', ''),
(6, 'Q2101-1546', NULL, '1050719827', 'DANIRYS AURORA DIAZ TORRES', '3116892698', 'F', '2006/05/01', 'HOSP. INF. NAPOLEON FRANCO PAREJA', 'HOSP. INF. NAPOLEON FRANCO PAREJA', 'Dr. OSCAR ENRIQUE ROMERO', NULL, '2021-01-14', '2021-01-14', 'OLIVA MARRUGO GRICE', 'En recipientes separados y rotulados, se reciben:\r\n1. \"Estómago\" un fragmento de tejido de forma irregular de color blanquecino y consistencia elástica que mide 0.5 cms. Se toma todo y se rotula A.\r\n2. \"Estómago-antro\" un fragmento de tejido de forma irregular de color blanquecino y consistencia elástica que mide 0.5 cms. Se toma todo y se rotula B.\r\n3. \"Duodeno #1\" dos fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que miden 0.5 cms. Se toma todo y se rotulan C.\r\n4. \"Duodeno #2\" un fragmento de tejido de forma irregular de color blanquecino y consistencia elástica que mide 0.5 cms. Se toma todo y se rotulan D. \r\n', 'Los cortes de A y B revelan antro gastrico sin muscular de la mucosa y conservación de su histoarquitectura, la lámina propia presenta un infiltrado mononuclear severo, actividad severa, H.pylori presente. No se observa atrófia, metaplasia ni displasia.\r\nLos cortes C y D revelan duodeno cuya morfología se encuentra conservada, hay ligero edema y congestión. No se observa granulomas ni parasitos intestinales.', '1.Biopsia endoscópica de estómago:\r\n-GASTRITIS CRÓNICA SEVERA CON ACTIVIDAD SEVERA\r\n-H.PYLORI PRESENTE, antro\r\n2.Biopsia endoscópica de duodeno:\r\n-DUODENO SIN CAMBIOS', '', ''),
(7, 'Q2101-1547', NULL, '1142914352', 'RINA MARCELA ALFARO GOMEZ', '3105142432', 'F', '2006/04/28', 'HOSP. INF. NAPOLEON FRANCO PAREJA', 'HOSP. INF. NAPOLEON FRANCO PAREJA', 'Dr. PASTOR THOMAS OLIVARES', NULL, '2021-01-14', '2021-01-14', 'OLIVA MARRUGO GRICE', 'En recipientes separados y rotulados, se reciben:\r\n1. \"Fibroadenoma mama derecha\" una masa irregular, multilobulada de tejido de color blanquecino que mide 3 x 2 cms. Al corte una superficie multinodular. Se toman cortes y se rotulan A.\r\n2. \"Fibroadenoma mama izquierda\" una masa irregular, multilobulada de tejido de color blanquecino que mide 3 x 2.5 x 1.5 cms. Al corte una superficie multinodular. Se toman cortes y se rotulan B.', 'Los cortes de A y B revelan tumores benignos compuestos por la proliferación combinada de elementos estromales y glandulares.\r\n\r\n\r\n', '1.Resección de masa en mama derecha:\r\n-FIBROADENOMA\r\n2.Resección de masa en mama izquierda:\r\n-FIBROADENOMA', '', ''),
(8, 'Q2101-1548', NULL, '22798927', 'LUZ MARY CHIQUILLO CHIQUILLO', '46155555', 'F', '1976/10/06', 'CLIN. SAN JOSE DE TORICES SAS', 'NUEVA EPS', 'Dr. GUSTAVO CARBALLO MASS', NULL, '2021-01-14', '2021-01-14', 'OLIVA MARRUGO GRICE', 'Rotulado \"Restos ovulares\" se recibe fragmento irregular de tejido de aspecto membranoso de color pardo oscuro que mide 5 x 2.5 cms. Se toman cortes.\r\n\r\n\r\n', 'Tejido placentario compuesto por vellosidades edematosas tapizadas por cito y sinciciotrofoblásto sin alteraciones.\r\n\r\n\r\n\r\n', ' Legrado uterino:\r\n-RESTOS OVULARES\r\n\r\n', '', ''),
(9, 'Q2101-1549', NULL, '9312624', 'EDILBERTO VILLALBA VIERA', '0000', 'M', '1968/07/10', 'CLIN. SAN JOSE DE TORICES SAS', 'Org. Magisterio', 'Dr. PEDRO IMBETH ACOSTA', NULL, '2021-01-14', '2021-01-14', 'OLIVA MARRUGO GRICE', 'Rotulado \"Piel en región perianal\" se reciben diminutos fragmentos de tejido de forma irregular de color blanquecino que juntos hacen un volumen de 0.4 ml. Se toma todo y se intenta procesar.\r\n\r\n\r\n', 'Fragmentos sueltos de epitelio escamoso con hiperqueratosis.\r\n\r\n\r\n', ' Biopsia de piel región perianal:\r\n-VER DESCRIPCIÓN MICROSCÓPICA\r\n', '', ''),
(10, 'Q2101-1550', NULL, '9096608', 'ALEXANDER SANCHEZ BARCASNEGRAS', '000', 'M', '1977/10/20', 'CLIN. SAN JOSE DE TORICES SAS', 'Org. Magisterio', 'Dr. PEDRO IMBETH ACOSTA', NULL, '2021-01-14', '2021-01-14', 'OLIVA MARRUGO GRICE', 'Rotulado \"Antro gástrico\" se reciben dos fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que miden 0.5 cms. Se toma todo.\r\n\r\n\r\n', 'Fragmentos de mucosa gástrica antral cuya morfología está preservada. Hay discreto edema e infiltración por linfocitos y células plasmáticas de la lámina propia. No se encuentra H. pylori, actividad inflamatoria ni cambios atróficos, metaplásicos ni displásicos.\r\n\r\n', ' Biopsia endoscópica de estómago:\r\n-GASTRITIS CRÓNICA INACTIVA\r\n', '', ''),
(11, 'Q2101-1551', NULL, '1003100312', 'JOSE LUIS JULIO DIAZ', '000', 'M', '2000/08/25', 'CLIN. SAN JOSE DE TORICES SAS', 'NUEVA EPS', 'Dr. EDUARDO QUINTERO MARTINEZ', NULL, '2021-01-14', '2021-01-14', 'OLIVA MARRUGO GRICE', 'Rotulado \"Apéndice\" se recibe un apéndice cecal que mide 8 x 1 cms. tapizada por una serosa opaca bien vascularizada de color pardo oscuro. Al corte salida de material fecaloideo. Se toman cortes.\r\n\r\n\r\n', 'Apéndice cecal con un proceso inflamatorio agudo que compromete todo el espesor de la pared. \r\n\r\n\r\n', ' Apendicectomía:\r\n-APENDICITIS AGUDA\r\n\r\n', '', ''),
(12, 'Q2101-1552', NULL, '45475264', 'OLGA PATRICIA SOTOMAYOR POLO', '000', 'F', '1967/03/03', 'PARTICULAR', 'PARTICULAR', 'Dr. OSCAR JESUS FLOREZ', NULL, '2021-01-14', '2021-01-14', 'OLIVA MARRUGO GRICE', 'Rotulado \"Lipoma en cuero cabelludo\" se recibe una masa de tejido, de forma ovoide que mide 2 x 1.5 x 1 cms. de color pardo grisáceo y consistencia elástica. Al corte una superficie blanquecina, lisa. Se toman cortes.\r\n\r\n\r\n', 'Los cortes revelan tumor maligno constituido por una proliferación de células grandes, pleomorficas de nucleos vesiculares, citoplasma claro, otras fusiformes hipercromáticas, se observan figuras de mitosis.\r\n\r\n\r\n', ' Resección de masa en cuero cabelludo:\r\n-TUMOR MALIGNO MAL DIFERENCIADO\r\n\r\n\r\n\r\nOBSERVACIONES: Es necesario practicar estudios de inmunihistoquímica para una definición diagnóstica precisa.\r\n', '', ''),
(13, 'Q2101-1553', NULL, '1010110750', 'EDWIN DE JESUS NAVARRO MORELOS', '000', 'M', '2000/06/16', 'CLIN. SAN JOSE DE TORICES SAS', 'Puertos', 'Dr. PEDRO IMBETH ACOSTA', NULL, '2021-01-15', '2021-01-15', 'OLIVA MARRUGO GRICE', 'Rotulado \"Antro\" se reciben tres fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que miden 0.5 cms. Se toma todo.\r\n\r\n\r\n', 'Antro gástrico sin muscular de la mucosa y conservación de su histoarquitectura, la lámina propia presenta un infiltrado mononuclear moderado, actividad moderada, H.pylori en escasa cantidad. No se observa atrófia, metaplasia ni displasia.\r\n\r\n', ' Biopsia endoscópica de estómago:\r\n-GASTRITIS CRÓNICA MODERADA CON ACTIVIDAD MODERADA\r\n-H.PYLORI PRESENTE', '', ''),
(14, 'Q2101-1554', NULL, '45429962', 'JULIA BARRIOS DE FERNANDEZ', '000', 'F', '1956/07/31', 'CLIN. SAN JOSE DE TORICES SAS', 'Puertos', 'Dr. PEDRO IMBETH ACOSTA', NULL, '2021-01-15', '2021-01-15', 'OLIVA MARRUGO GRICE', 'Rotulado \"Antro\" se reciben dos fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que miden 0.5 cms. Se toma todo.\r\n\r\n\r\n', 'Fragmentos de mucosa gástrica antral cuya morfología está preservada. Hay discreto edema e infiltración por linfocitos y células plasmáticas de la lámina propia. No se encuentra H. pylori, actividad inflamatoria ni cambios atróficos, metaplásicos ni displásicos.\r\n\r\n', ' Biopsia endoscópica de estómago:\r\n-GASTRITIS CRÓNICA INACTIVA\r\n', '', ''),
(15, 'Q2101-1555', NULL, '1005964517', 'CARLOS BERMUDEZ MORALES', '000', 'M', '2000/09/04', 'CLIN. SAN JOSE DE TORICES SAS', 'Org. Magisterio', 'Dr. EDUARDO QUINTERO MARTINEZ', NULL, '2021-01-14', '2021-01-14', 'OLIVA MARRUGO GRICE', 'Rotulado \"Mamoplastia reducción mama derecha\" se recibe, masa de tejido que pesa 83 gms. y mide 10 x 4 x 3 cms. de color amarillo y consistencia elástica. Al corte una superficie blanquecina. \r\n\r\n', 'Los cortes revelan mama que muestra canaliculos con discreta hiperplasia epitelial, el estroma colagenizado.\r\n\r\n\r\n', ' Mamoplastia por reducción de mama derecha:\r\n-GINECOMASTIA\r\n\r\n', '', ''),
(16, 'Q2101-1556', NULL, '73153420', 'EFREN RODRIGUEZ MARTELO', '00', 'M', '1972/06/11', 'CLIN. SAN JOSE DE TORICES SAS', 'Org. Magisterio', 'Dr. EDUARDO QUINTERO MARTINEZ', NULL, '2021-01-14', '2021-01-14', 'OLIVA MARRUGO GRICE', 'En recipientes separados y rotulados se reciben:\r\n1. \"Mama derecha\" masa irregular que mide 7 x 5 x 3 cms. de color amarillo y aspecto adiposo que pesa 52 gms. Al corte superficie multinodular de aspecto adiposo. Se toman cortes y se rotulan A.\r\n2. \"Mama izquierda\" masa irregular que mide 8x 6 x 3 cms. de color amarillo y aspecto adiposo que pesa 60 gms. Al corte superficie multinodular de aspecto adiposo. Se toman cortes y se rotulan B.\r\n', 'Los cortes de A y B revelan mama constituidas en su mayoría por tejido adiposo con escasos canaliculos.\r\n\r\n\r\n', '-GINECOMASTIA MAMA DERECHA E IZQUIERDA\r\n\r\n', '', ''),
(17, 'Q2101-1557', NULL, '64521354', 'APOLONIA DIAZ BERRIO', '00', 'F', '1972/10/06', 'LIGA CONTRA EL CANCER', 'LIGA CONTRA EL CANCER', 'Dra. LILY VILLARREAL', NULL, '2021-01-15', '2021-01-15', 'JOSÉ CARABALLO GRACIA', 'Rotulado con su nombre, se recibe una masa de tejido parcialmente cubierta por piel que mide 3.2 x 1.8 x 1.8 cms. en la piel se observa en su parte central una zona de aspecto ulcerado, redondeado de 0.8 cms. de diámetro por debajo de esta se encuentra un tejido de aspecto graso. Al corte por debajo de la zona descrita se encuentra un área de color negro, de 1 cm. de diámetro. El contenido de color negro se desprende dejando una cavidad. Se toman cortes.\r\n\r\n\r\n', 'Los cortes muestran piel por debajo de la cual se encuentra una cavidad quística tapizada por epitelio escamoso y con contenido de queratina laminar.\r\n\r\n\r\n', ' Resección de lesión en pierna izquierda:\r\n-QUÍSTE QUERATINOSO DE TIPO EPIDERMOIDE\r\n\r\n', '', ''),
(18, 'Q2101-1558', NULL, '45693949', 'ODELIN PEREZ VILLALOBOS', '00', 'F', '1978/10/02', 'CLIN. SAN JOSE DE TORICES SAS', 'Org. Magisterio', 'Dr. PEDRO IMBETH ACOSTA', NULL, '2021-01-15', '2021-01-15', 'JOSÉ CARABALLO GRACIA', 'Rotulado \"Antro gástrico\" se recibe un fragmento de tejido de color pardo claro y consistencia blanda que mide 0.2 cms. Se toma todo.\r\n\r\n\r\n', 'Los cortes muestran fragmentos de mucosa gástrica antral cuya morfología está preservada. Hay discreto edema e infiltración por linfocitos y células plasmáticas de la lámina propia. Hay formación ocasional de acúmulos linfoides. No se encuentra H. pylori, actividad inflamatoria ni cambios atróficos, metaplásicos ni displásicos.\r\n\r\n\r\n', ' Biopsia endoscópica de estómago:\r\n-GASTRITIS CRÓNICA INACTIVA\r\n\r\n', '', ''),
(19, 'Q2101-1559', NULL, '9176321', 'RAFAEL GONZALEZ OVIEDO', '00', 'M', '1974/12/13', 'CLIN. SAN JOSE DE TORICES SAS', 'SALUD TOTAL', 'Dr. HERNAN CALDERON', NULL, '2021-01-15', '2021-01-15', 'JOSÉ CARABALLO GRACIA', 'Rotulado \"Apendicectomía\" se recibe un apéndice cecal que mide 7 x 2 cms. en sus mayores dimensiones, la superficie externa es irregular, de color pardo oscuro. Al corte se encuentra una luz dilatada que contiene material fecal, hacia la base se encuentra un fecalito que obstruye completamente la luz. Se toman cortes.\r\n\r\n\r\n', 'Los cortes muestran apéndice cecal con un proceso inflamatorio agudo que compromete todo el espesor de la pared. \r\n\r\n\r\n\r\n', '-APENDICITIS AGUDA\r\n\r\n\r\n', '', ''),
(20, 'Q2101-1560', NULL, '33159533', 'CARMEN MONTES LAGARES', '000', 'F', '1956/05/26', 'CLIN. SAN JOSE DE TORICES SAS', 'Org. Magisterio', 'Dr. PEDRO IMBETH ACOSTA', NULL, '2021-01-15', '2021-01-15', 'JOSÉ CARABALLO GRACIA', 'Rotulado \"Antro gástrico\" se reciben dos fragmentos de tejido de color pardo claro y consistencia blanda que promedian 0.2 cms. Se toma todo.\r\n\r\n\r\n', 'Los cortes muestran fragmentos de mucosa gástrica antral cuya morfología está preservada. Hay discreto edema e infiltración por linfocitos y células plasmáticas de la lámina propia. No se encuentra H. pylori, actividad inflamatoria ni cambios atróficos, metaplásicos ni displásicos.\r\n\r\n\r\n', ' Biopsia endoscópica de estómago:\r\n-GASTRITIS CRÓNICA INACTIVA\r\n\r\n', '', ''),
(21, 'Q2101-1561', NULL, '33198831', 'YANETH JIMENEZ LOZANO', '00', 'F', '1964/05/01', 'CLIN. SAN JOSE DE TORICES SAS', 'Org. Magisterio', '', NULL, '2021-01-15', '2021-01-15', 'JOSÉ CARABALLO GRACIA', 'Rotulado \"Antro gástrico\" se recibe un fragmento de tejido de color pardo claro y consistencia blanda que mide 0.3 cms. Se toma todo.\r\n\r\n\r\n', 'Los cortes muestran fragmentos de mucosa gástrica antral cuya morfología está preservada. Hay discreto edema e infiltración por linfocitos y células plasmáticas de la lámina propia. No se encuentra H. pylori, actividad inflamatoria ni cambios atróficos, metaplásicos ni displásicos.\r\n\r\n\r\n', ' Biopsia endoscópica de estómago:\r\n-GASTRITIS CRÓNICA INACTIVA', '', ''),
(22, 'Q2101-1562', NULL, '73227143', 'PEDRO HERNANDEZ BARRIOS', '00', 'M', '1972/02/03', 'CLIN. SAN JOSE DE TORICES SAS', 'Org. Magisterio', 'Dr. PEDRO IMBETH ACOSTA', NULL, '2021-01-15', '2021-01-15', 'JOSÉ CARABALLO GRACIA', 'Rotulado \"Antro gástrico\" se reciben dos fragmentos de tejido de color pardo claro y consistencia blanda que promedian 0.2 cms. Se toma todo.\r\n\r\n\r\n\r\n', 'Los cortes muestran fragmentos de mucosa gástrica antral cuya morfología está preservada. Hay discreto edema e infiltración por linfocitos y células plasmáticas de la lámina propia. No se encuentra H. pylori, actividad inflamatoria ni cambios atróficos, metaplásicos ni displásicos.\r\n\r\n\r\n', ' Biopsia endoscópica de estómago:\r\n-GASTRITIS CRÓNICA INACTIVA\r\n\r\n', '', ''),
(23, 'Q2101-1563', NULL, '33134096', 'MARIA ZARATE ARNEDO', '000', 'F', '1944/09/18', 'CLIN. SAN JOSE DE TORICES SAS', 'Org. Magisterio', 'Dr. PEDRO IMBETH ACOSTA', NULL, '2021-01-15', '2021-01-15', 'JOSÉ CARABALLO GRACIA', 'Rotulado \"Antro gástrico\" se reciben dos fragmentos de tejido de color pardo claro y consistencia blanda que promedian 0.3 cms. Se toma todo.\r\n\r\n\r\n', 'Fragmentos de mucosa gástrica antral cuya morfología está preservada. Hay discreto edema e infiltración por linfocitos y células plasmáticas de la lámina propia. No se encuentra H. pylori, actividad inflamatoria ni cambios atróficos, metaplásicos ni displásicos.\r\n\r\n\r\n', ' Biopsia endoscópica de estómago:\r\n-GASTRITIS CRÓNICA INACTIVA\r\n\r\n', '', ''),
(24, 'Q2101-1564', NULL, '54258683', 'BETTINA GONZALEZ BUENAÑOS', '000', 'F', '1972/03/03', 'CLIN. SAN JOSE DE TORICES SAS', 'Org. Magisterio', 'Dr. SAMUEL CANTILLO VILLAR', NULL, '2021-01-15', '2021-01-15', 'JOSÉ CARABALLO GRACIA', 'Rotulado \"Histerectomía abdominal subtotal-Utero, ovario derecho + trompa derecha y izquierda\" en un mismo recipiente, se recibe un cuerpo uterino que pesa 203 gms., un ovario y dos fragmentos irregulares de tejido. El cuerpo está aumentado de tamaño cubierto por una serosa despulida y mide 7 x 8 x 6 cms. en sus mayores dimensiones. Al corte la cavidad endometrial esta tapizada por una mucosa irregular de color rosado. En el miometrio se encuentran nódulos blanquecinos cuyos diámetros oscilan entre pocos milimetros y 1.5 cms. Se toman cortes.\r\nEl ovario mide 3 x 2 x 1 cms. con una superficie externa irregular y una superficie de color homogeneo, se recibe además dos fragmentos de tejido de forma irregular, uno de ellos con una estructura quística que contiene un material de aspecto gelatinoso. Se toman cortes.\r\n\r\n', 'El endometrio está autólisado. Las masas miometriales estan compuestas por fibras musculares lisas dispuestas irregularmente en haces entrecruzadas y ovillos. Las trompas y el ovario son normales.\r\n\r\n\r\n', ' Cuerpo uterino, trompas y ovario derecho:\r\n-ENDOMETRIO AUTÓLISADO\r\n-LEIOMIOMAS INTRAMURALES\r\n-TROMPAS DE FALOPIO\r\n-OVARIO DERECHO', '', ''),
(25, 'Q2101-1565', NULL, '1237440569', 'MARIELA LLAMAS PATRON', '00000', 'F', '2003/01/15', 'PARTICULAR', 'PARTICULAR', '', NULL, '2021-01-15', '2021-01-15', 'ANA MAGOLA MANGA CEDEÑO', 'Rotulado \"Biopsia de cervix\" se recibe un fragmento de tejido de color blanquecino y consistencia elástica que mide 0.3 cms. Se toma todo.\r\n\r\n\r\n\r\n', 'Cervix tapizado por epitelio escamoso que muestra hiperplasia del epitelio y cambios coilociticos asociados, el estroma infiltrado por linfocitos, plasmocitos y neutrófilos.\r\n\r\n\r\n', ' Biopsia de cervix:\r\n-LIE DE BAJO GRADO (CONDILOMA)\r\n\r\n', '', ''),
(26, 'Q2101-1566', NULL, '22808886', 'ISMENIA SALGADO CARIAGA', '000', 'F', '1980/07/13', 'CLIN. SAN JOSE DE TORICES SAS', 'Org. Magisterio', '', NULL, '2021-01-15', '2021-01-15', 'ANA MAGOLA MANGA CEDEÑO', 'En recipientes separados y rotulados, se reciben:\r\n1. \"Trompa izquierda\" se recibe un fragmento de trompa que mide 1 cms. Al corte se observa la estructura usual. Se toman cortes y se rotulan A.\r\n2. \"Trompa derecha\" se recibe un fragmento de trompa que mide 1.3 cms. Al corte se observa la estructura usual. Se toman cortes y se rotulan B.\r\n\r\n\r\n', 'Los cortes rotulados A y B revelan trompas uterinas que muestra la estructura usual.\r\n\r\n\r\n', ' Salpingectomía parcial bilateral:\r\n1.TROMPA UTERINA IZQUIERDA. SEGMENTO\r\n2.TROMPA UTERINA DERECHA. SEGMENTO\r\n', '', ''),
(27, 'Q2101-1567', NULL, '45502280', 'MONICA DEL CARMEN ALCALA JARAMILLO', '3008057455', 'F', '1972/06/25', 'GASTROPACK SAS', 'ECOPETROL S.A', '', NULL, '2021-01-15', '2021-01-15', 'ANA MAGOLA MANGA CEDEÑO', 'Rotulado \"Antro\" se reciben dos fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que miden 0.2 y 0.1 cms. Se toma todo.\r\n\r\n\r\n\r\n\r\n\r\n', 'Fragmentos de mucosa gástrica antral cuya morfología está preservada. Hay discreto edema e infiltración por linfocitos y células plasmáticas de la lámina propia. No se encuentra H. pylori, actividad inflamatoria ni cambios atróficos, metaplásicos ni displásicos.\r\n\r\n\r\n', ' Biopsia endoscópica de estómago:\r\n-GASTRITIS CRÓNICA INACTIVA\r\n\r\n', '', ''),
(28, 'Q2101-1568', NULL, '64549208', 'MABEL MONTES PARDO', '000', 'F', '1960/03/06', 'GASTROPACK SAS', 'ECOPETROL S.A', '', NULL, '2021-01-15', '2021-01-15', 'ANA MAGOLA MANGA CEDEÑO', 'Rotulado \"Antro\" se reciben dos fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que miden 0.3 cms. Se toma todo.\r\n\r\n\r\n', 'Antro gástrico con focos de ulceración cuya lámina propia esta infiltrada por linfocitos, plasmocitos y neutrófilos en cantidad moderada en la luz de algunas glandulas, se observa H.pylori en poca cantidad. En la muestra no se observa metaplasia ni cambios displasicos.\r\n\r\n\r\n', ' Biopsia endoscópica de estómago:\r\n-GASTRITIS CRÓNICA ULCERADA POR H.PYLORI CON ACTIVIDAD INFLAMATORIA MODERADA\r\n\r\n', '', ''),
(29, 'Q2101-1569', NULL, '1005220751', 'MARIA JOSE RIOS AVILA', '000', 'F', '2001/05/10', 'GASTROPACK SAS', 'ECOPETROL S.A', '', NULL, '2021-01-15', '2021-01-15', 'ANA MAGOLA MANGA CEDEÑO', 'Rotulado \"Antro\" se reciben dos fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que miden 0.3 cms. Se toma todo.\r\n\r\n\r\n', 'Los cortes muestran mucosa gástrica cuya lámina propia esta edematosa, congestiva, infiltrada por linfocitos, plasmocitos en moderada cantidad y PMN neutrófilos en moderada cantidad. Hay formación ocasional de acúmulos linfoides. En las luces glandulares se observan H.pylori en escasa cantidad (+/+++). No hay atrófia, metaplasia intestinal ni cambios displásicos.\r\n\r\n\r\n\r\n', ' Biopsia endoscópica de estómago:\r\n-GASTRITIS CRÓNICA POR H.PYLORI CON ACTIVIDAD INFLAMATORIA MODERADA\r\n\r\n', '', ''),
(30, 'Q2101-1570', NULL, '8726447', 'IGNACIO JIMENEZ PRADA', '00000', 'M', '1962/12/09', 'GASTROPACK SAS', 'ECOPETROL S.A', 'Doctor: CESAR ORTIZ', NULL, '2021-01-15', '2021-01-15', 'ANA MAGOLA MANGA CEDEÑO', 'Rotulado \"Antro\" se reciben tres fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que miden 0.2 cms. Se toma todo.\r\n\r\n\r\n', 'Los cortes muestran mucosa gástrica cuya lámina propia esta edematosa, congestiva, infiltrada por linfocitos, plasmocitos en moderada cantidad y PMN neutrófilos en escasa cantidad. Hay formación ocasional de acúmulos linfoides. En las luces glandulares se observan H.pylori en escasa cantidad (+/+++). No hay atrófia, metaplasia intestinal ni cambios displásicos.\r\n\r\n\r\n\r\n', ' Biopsia endoscópica de estómago:\r\n-GASTRITIS CRÓNICA PO RH.PYLORI CON ACTIVIDAD INFLAMATORIA MODERADA\r\n\r\n', '', ''),
(31, 'Q2101-1571', NULL, '30761404', 'ALMA ROSA OROZCO BELTRAN', '000', 'F', '1961/03/03', 'ORG. CLINICA GENERAL DEL NORTE', '0', 'Doctor LUIS JAVIER ALZAMORA TABORDA', NULL, '2021-01-15', '2021-01-15', 'OLIVA MARRUGO GRICE', 'Rotulado \"Biopsia de exocervix\" se reciben dos fragmentos de tejido de color blanquecino y consistencia elástica que juntos hacen 0.1 cm. Se toma todo.\r\n\r\n\r\n', 'Los cortes revelan cervix atrófico que muestra cambios de una lesión intraepitelial escamosa de bajo grado.\r\n\r\n\r\n', ' Biopsia de cervix:\r\n-LIE DE BAJO GRADO ', '', ''),
(32, 'Q2101-1572', 'Q', '1044931274', 'JORWING SANCHEZ MESTRE', '000', 'M', '2013/12/03', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctor RAFAEL VIVERO CONEO', NULL, '2021-01-15', '2021-01-15', 'GUILLERMO ROVIRA ROSALES', 'Rotulado \"Quíste dentigeno\" se recibe una masa quistica previamente evacuada que mide 4 x 3 x 2 cms. La pared externa es lisa y blanquecina. La pared interna es lisa cubierta por un material amarillento. Se toman cortes', '', '', '', ''),
(33, 'Q2101-1573', NULL, '36505519', 'MARIA HERNANDEZ NUÑEZ', '0000', 'F', '1978/03/03', 'ORG. CLINICA GENERAL DEL NORTE', '0', 'Doctor LUIS JAVIER ALZAMORA TABORDA', NULL, '2021-01-15', '2021-01-15', 'GUILLERMO ROVIRA ROSALES', 'Rotulado \"Biopsia de exocervix\" se recibe un fragmento de tejido de color blanquecino y consistencia elástica que mide 0.6 cms. Se toma todo.\r\n\r\n\r\n', 'Cuello uterino con infiltración mononuclear del estroma. No hay cambios de LIE en la muestra enviada. \r\n\r\n\r\n\r\n', ' Biopsia de cervix:\r\n-CERVICITIS CRÓNICA\r\n\r\n', '', ''),
(34, 'Q2101-1574', NULL, '1049535132', 'MATIAS PEREZ RODRIGUEZ', '000', 'M', '2009/04/04', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctor LUIS MORENO BALLESTEROS', NULL, '2021-01-15', '2021-01-15', 'GUILLERMO ROVIRA ROSALES', 'Rotulado \"Apéndice\" se recibe un apéndice cecal que mide 9 x 1.5 cms. La pared esta recubierta por material seropurulento. Al corte la pared esta engrosada y el lumen contiene material fecal solidificada. Se toman cortes.\r\n\r\n\r\n', 'Apéndice cecal con un proceso inflamatorio agudo que compromete todo el espesor de la pared. \r\n\r\n\r\n', '-APENDICITIS AGUDA\r\n\r\n', '', ''),
(35, 'Q2101-1575', NULL, '1043305714', 'ADONAI HERRERA MEZA', '000', 'M', '2006/10/06', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctora NELLYS RODRIGUEZ ZULETA', NULL, '2021-01-15', '2021-01-15', 'GUILLERMO ROVIRA ROSALES', 'Rotulado \"Masa en fosa nasal izquierda\" se recibe una masa de tejido de color blanquecino, negruzca y pardo claro que mide 2 x 1.5 x 1 cms. Al corte tres formaciones quisticas que contienen un material negruzco, la mayor mide 1 cm. y l amenor de 0.4 cms. Se toman cortes.\r\n\r\n\r\n', 'Los cortes muestran lesión compuesta vasos capilares dispuestos en un patrón lobulado sobre un estroma de tejido conectivo laxo.\r\n\r\n\r\n', ' Resección de masa en fosa nasal izquierda:\r\n-HEMANGIOMA CAPILAR LOBULADO (GRANULOMA PIOGENO)\r\n\r\n', '', ''),
(36, 'Q2101-1576', NULL, '45361226', 'ROSA CABARCAS GUTIERREZ', '0000', 'F', '1984/05/13', 'CLINICA GENERAL DEL CARIBE SA.', '0', 'Doctor SAUL HERNANDEZ ALVAREZ', NULL, '2021-01-20', '2021-01-22', 'VIRNA CARABALLO OSORIO', 'Sin material de fijación, rotulado \"Apéndice\" se recibe un apéndice vermiforme que mide 5.5 x 1 cms. em sus mayores dimensiones, la superficie externa esta cubierta por una serosa despulida de color pardo oscuro. Al corte se encuentra una luz puntiforme. Se toman cortes.\r\n\r\n\r\n', 'Apéndice cecal con una mucosa intacta. Los folículos linfoides son hiperplásicos y la pared muscular y la serosa muestra la estructura usual.\r\n\r\n\r\n', ' Apendicectomía:\r\n-HIPERPLASIA LINFOIDE REACTIVA\r\n\r\n\r\n', '', ''),
(37, 'Q2101-1577', NULL, '63299917', 'ROCIO ACEVEDO DE AGUILAR', '0000', 'F', '1962/02/25', 'GASTROPACK SAS', 'ALLIANZ SEGUROS DE VIDA SA.', 'Doctor ELKIN ROMERO CAMARGO', NULL, '2021-01-20', '2021-01-22', 'VIRNA CARABALLO OSORIO', 'En recipientes separados y rotulados, se reciben:\r\n1. \"Antro\" dos fragmentos de tejido de forma irregular de color pardo claro y consistencia blanda que miden 0.3 cms. Se toma todo y se rotulan A.\r\n2. \"Cuerpo\" un fragmento de tejido de forma irregular de color pardo claro y consistencia blanda que mide 0.3 cms. Se toma todo y se rotulan B.\r\n\r\n\r\n', 'Los cortes rotulados A muestran mucosa gástrica cuya lámina propia esta edematosa, congestiva, infiltrada por linfocitos, células plasmáticas y PMN neutrófilos en moderada cantidad. Hay formación ocasional de acúmulos linfoides. En las luces glandulares se observan H.pylori en moderada cantidad (++/+++). No hay atrófia, metaplasia intestinal ni cambios displásicos.\r\nLos cortes rotulados B muestran mucosa antrocorporal cuya lámina propia es edematosa y está infiltrada por linfocitos y neutrófilos. Hay presencia de H.pylori en pequeña cantidad.\r\nEn la muestra enviada no se observan cambios displásicos, atróficos ni metaplásicos.\r\n\r\n', '1.Biopsia endoscópica de estómago (antro):\r\n-GASTRITIS CRÓNICA POR H.PYLORI CON ACTIVIDAD INFLAMATORIA MODERADA\r\n2.Biopsia endoscópica de estómago (cuerpo):\r\n-GASTRITIS CRÓNICA POR H.PYLORI CON ACTIVIDAD INFLAMATORIA LEVE\r\n', '', ''),
(38, 'Q2101-1578', NULL, '1007210773', 'DENISARA HERRERA HOYOS', '000', 'F', '2001/02/04', 'CLINICA GENERAL DEL CARIBE SA.', '0', 'Doctor SAUL HERNANDEZ ALVAREZ', NULL, '2021-01-20', '2021-01-22', 'VIRNA CARABALLO OSORIO', 'Rotulado \"Apéndice\" se recibe un apéndice cecal que mide 5 x 0.5 cms. en sus mayores dimensiones. La superficie externa esta cubierta por una serosa lisa y brillante de color rosado. Al corte se encuentra una luz ligeramente dilatada que contiene un material fecal. Se toman cortes.\r\n\r\n\r\n', 'Los cortes muestran apéndice cecal cuya morfología está preservada. No se encuentra actividad inflamatoria.\r\n\r\n\r\n', ' Apendicectomía:\r\n-VER DESCRIPCIÓN MICROSCÓPICA\r\n\r\n', '', ''),
(39, 'Q2101-1579', NULL, '45780761', 'ARIANA ZABALETA TAMARA', '3103698813', 'F', '1978/01/01', 'ORG. CLINICA GENERAL DEL NORTE', '0', 'Doctor LUIS JAVIER ALZAMORA TABORDA', NULL, '2021-01-21', '2021-01-21', 'OLIVA MARRUGO GRICE', 'Rotulado \"Biopsia de exocervix\" se reciben dos fragmentos de tejido de color blanquecino que juntos miden 0.5 cms. Se toma todo.\r\n\r\n\r\n', 'Cervix que muestra una lesión intraepitelial escamosa de bajo grado.\r\n\r\n\r\n', ' Biopsia de cervix:\r\n-LIE DE BAJO GRADO\r\n\r\n\r\n', '', ''),
(40, 'Q2101-1580', NULL, '1052987206', 'SILFREDO CARPIO CASTRO', '0000', 'M', '2012/01/01', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctor JESSICA TIPON GALVIS', NULL, '2021-01-15', '2021-01-15', 'OLIVA MARRUGO GRICE', 'Rotulado \"Mucosa labial inferior\" se recibe un fragmento de tejido que mide 1 x 0.6 cms. de color blanquecino y consistencia elástica que presneta una lesión sobreelevada de 0.8 cms. Al corte una formación nodular que mide 0.8 cms. de aspecto mucoide. Se toman cortes.\r\n\r\n\r\n', 'Los cortes revelan lesión quistica tapizada por tejido de granulación.\r\n\r\n\r\n', ' Resección de lesión en labio inferior:\r\n-MUCOCELE\r\n\r\n', '', ''),
(41, 'Q2101-1581', NULL, '1048442302', 'BREINER RODRIGUEZ MARTINEZ', '000', 'M', '', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctora JESSICA TIPON GALVIS', NULL, '2021-01-21', '2021-01-21', 'OLIVA MARRUGO GRICE', 'Rotulado \"Lesión lateral de lengua izquierda\" se recibe una formación nodular de 0.5 cms. de color blanquecino  y consistencia elástica. Al corte una superficie lisa, blanquecino. Se toma todo.\r\n\r\n\r\n', 'Los cortes revelan lesión constituida por una proliferación de fibroblastos uniformes, con escaso colageno, tapizada por epitelio escamoso maduro.\r\nNo se identifican figuras de mitosis.\r\n\r\n\r\n\r\n', ' Resección de lesión en lengua:\r\n-FIBROMA\r\n\r\n', '', ''),
(42, 'Q2101-1582', NULL, '1044004502', 'MARIA FERNANDEZ RIOS', '0000', 'F', '2016/12/22', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctor MARIO JAIMES GUTIERREZ', NULL, '2021-01-21', '2021-01-21', 'OLIVA MARRUGO GRICE', 'Rotulado \"Masa región abdominal\" se recibe una masa irregular de tejido de color blanco amarillento que mide 2  x 1 x 0.5 cms. Al corte una superficie amarillenta de aspecto adiposo. Se toman cortes.\r\n\r\n\r\n', 'Los cortes revelan tejido fibroadiposo sin cambios.\r\n\r\n\r\n\r\n', '-FRAGMENTOS DE TEJIDO FIBROADIPOSO, región abdominal\r\n\r\n', '', ''),
(43, 'Q2101-1583', NULL, '1238343460', 'MARIANYS BUSTAMANTE ORTEGA', '0000', 'F', '2019/05/30', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctor PASTOR THOMAS OLIVARES', NULL, '2021-01-21', '2021-01-21', 'OLIVA MARRUGO GRICE', 'Rotulado \"Quíste\" se recibe fragmento irregular de tejido que mide 1 cm. de color blanco amarillento. Al corte formación quistica de 0.3 cms. Se toma todo.\r\n\r\n\r\n', 'Los cortes revelan lesión quistica tapizada por epitelio escamoso con contenido de queratina laminar.\r\n\r\n\r\n', '-QUÍSTE QUERATINOSO DE TIPO EPIDERMOIDE, cuello\r\n\r\n\r\n', '', ''),
(44, 'Q2101-1584', NULL, '1043643506', 'OSCAR FLOREZ PINTO', '000', 'M', '2005/07/28', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctora JESSICA TIPON GALVIS', NULL, '2021-01-27', '2021-01-15', 'OLIVA MARRUGO GRICE', 'ulado \"Lesión en mucosa yugal izquierda\" se recibe una fromación nodular de color blanquecino y consistencia elástica que mide 1 x 0.5 cms. Al corte una superficie blanca , lisa. Se toma todo.\r\n\r\n\r\n', 'Los cortes revelan lesión tapizada por epitelio escamoso que descansa en un estroma fibroso con colageno interpuesto.\r\n\r\n\r\n\r\n', '-FIBROMA, mucosa yugal izquierda\r\n\r\n', '', ''),
(45, 'Q2101-1585', NULL, '1048465032', 'BELLA PEREZ OLIVARES', '0000', 'F', '2019/05/22', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctor SUANNY GONZALEZ COQUEL', NULL, '2021-01-21', '2021-01-21', 'OLIVA MARRUGO GRICE', 'Rotulado \"Cuerpo extraño orofaringe\" se recibe fragmento irregular de tejido que mide 3 x 2 cms. de color blanco amarillento y consistencia friable. Se toman cortes.\r\n\r\n\r\n\r\n', 'Tejido que muestra cambios severos de autólisis.\r\n\r\n\r\n', ' Cuerpo extraño orofaringe:\r\n-MATERIAL AUTÓLISADO\r\n\r\n\r\n', '', ''),
(46, 'Q2101-1586', NULL, '1051884848', 'KATY LUZ MUÑOZ SOLANO', '000', 'F', '2004/08/29', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctor MARIO JAIMES GUTIERREZ', NULL, '2021-01-21', '2021-01-21', 'OLIVA MARRUGO GRICE', 'Rotulado \"Fibroadenoma - mama izquierda\" se recieb una masa ovoide que mi 4 x 3 x 2 cms. de color blanquecino y consistencia elástica. Al corte una superficie multinodular de color blanquecino. Se toman cortes.\r\n\r\n\r\n', 'Tumor benigno compuesto por la proliferación combinada de elementos estromales y glandulares.\r\n\r\n\r\n\r\n', ' Resección de masa en mama izquierda:\r\n-FIBROADENOMA\r\n\r\n', '', ''),
(47, 'Q2101-1587', NULL, '1201258314', 'ZARECK ORTIZ DIAZ', '000', 'F', '2016/10/04', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctor ERICK ALVAREZ PEREIRA', NULL, '2021-01-27', '2021-01-21', 'OLIVA MARRUGO GRICE', 'Rotulado \"Nevo melanocitico\" se recibe una elipse de piel que mide 0.5 cms. de color pardo claro y consistencia elástica. Se toma todo.\r\n\r\n\r\n', 'los cortes revelan piel en cuyo dermis se observa un infiltrado denso de células poligonales de bordes citoplasmaticos poco definido, se observa además linfocitos dispersos.\r\n\r\n\r\n', ' Biopsia de piel de parpado inferior derecho:\r\n-XANTOGRANULOMA JUVENIL\r\n\r\nNOTA: Caso estudiado en conjunto con los doctores José Caraballo y Ana Magola Manga.', '', ''),
(48, 'Q2101-1588', NULL, '45691883', 'MAYERLIN LEMUS LUNA', '0000', 'F', '1978/11/15', 'CLINICA GENERAL DEL CARIBE SA.', '0', 'Doctor LUIS ALCAZAR GONZALEZ', NULL, '2021-01-21', '2021-01-21', 'OLIVA MARRUGO GRICE', 'Rotulado \"Apéndice\" se recibe un apéndice cecal que mide 7 x 1 cms. tapizada por una serosa opaca bien vascularizada de color pardo grisáceo. Al corte salida de material fecal. Se toman cortes.\r\n\r\n\r\n', 'Apéndice cecal con un proceso inflamatorio agudo que compromete todo el espesor de la pared. \r\n\r\n\r\n\r\n', ' Apendicectomía:\r\n-APENDICITIS AGUDA\r\n\r\n\r\n\r\n', '', ''),
(49, 'Q2101-1589', NULL, '1043296355', 'KELLY PAUTT GUZMAN', '0000', 'F', '2003/11/30', 'CLIN. SAN JOSE DE TORICES SAS', 'Puertos', 'Doctor JOSÉ LUIS ACEVEDO', NULL, '2021-01-25', '2021-01-22', 'JOSÉ CARABALLO GRACIA', 'Rotulado \"Placenta\" se recibe una placenta con sus membranas que pesa 460 gms. y mide 16 x 14 x 3 cms. en sus mayores dimensiones, en la cara fetal se encuentra un segmento de cordon umbilical de implantación central que mide 11 cms. de longitud. En la misma cara se observa una protuberancia redondeada, de color violáceo que mide 8 x 6 cms. La cara materna muestra los cotiledones completos, las membranas conservan su aspecto habitual. Al corte del área descrita como protuberancia se encuentran grandes vasos que contienen coágulos sanguineos. Estos vasos se extienden hasta los límites de la placenta y sus membranas. El resto del tejido placentario conserva su forma habitual. Se toman cortes.\r\n\r\n', 'Los cortes muestran placenta del tercer trimestre en la que se observa un foco de proliferación de vasos capilares que alternan con grandes espacios vasculares con contenido de sangre. En la periferia de esta zona se observan focos de microcalcificaciones distróficas. El resto del tejido placentario es morfológicamente normal. El cordon tiene dos vasos arteriales y uno venoso.\r\n\r\n\r\n', ' Placenta del tercer trimestre (460 gms.):\r\n-HEMANGIOMA PLACENTARIO (CORANGIOMA)\r\n\r\n', '', ''),
(50, 'Q2101-1590', NULL, '9113787', 'EDGAR VARGAS  ANILLO', '00000', 'M', '1959/08/24', 'ORG. CLINICA GENERAL DEL NORTE', '0', '', NULL, '2021-01-22', '2021-01-22', 'JOSÉ CARABALLO GRACIA', 'Rotulado \"Colecistectomía\" se recibe una vesícula biliar que mide 6 x 1.5 cms. en sus mayores dimensiones, la superficie externa es irregular parcialmente cubierta por una serosa despulida. Al corte las paredes son gruesas, aspecto fibroso y en la luz se encuentra un calculo ovoide de color verde oscuro. Se toman cortes.\r\n\r\n\r\n', 'Los cortes muestran vesícula biliar cuya mucosa muestra abundantes histiocitos cargados de lípidos en las puntas de las vellosidades. Hay infiltrado mononuclear de la lámina propia y cambios hipertróficos del estrato muscular.\r\n\r\n\r\n', '-COLECISTITIS CRÓNICA CON COLELITIASIS\r\n-COLESTEROLOSIS\r\n\r\n', '', ''),
(51, 'Q2101-1591', NULL, '1043967486', 'DONIS HERAZO GARCIA', '00000', 'F', '2005/04/28', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Dcotor LUIS MORENO', NULL, '2021-01-22', '2021-01-22', 'JOSÉ CARABALLO GRACIA', 'Rotulado \"Apendice\" se recibe un apéndice cecal que mide 8 x 1.5 cms. en sus mayores dimensiones, la superficie externa esta cubierta por una serosa despulida de color pardo claro con áreas violáceas. Al corte se encuentra una luz dilatada que contiene un material grumoso de color pardo oscuro. Se toman cortes.\r\n\r\n\r\n', 'Los cortes muestran apéndice cecal con un proceso inflamatorio agudo que compromete todo el espesor de la pared. \r\n\r\n\r\n\r\n', '-APENDICITIS AGUDA\r\n\r\n\r\n', '', ''),
(52, 'Q2101-1592', NULL, '1143364483', 'SERGIO ANDRES TORRES VIVES', '000', 'M', '1993/04/05', 'CLIN. SAN JOSE DE TORICES SAS', 'Coosalud', 'Doctor EDUARDO QUINTERO', NULL, '2021-01-22', '2021-01-22', 'JOSÉ CARABALLO GRACIA', 'Rotulado \"Apéndice\" se reciben dos fragmentos de tejido, uno de ellos de forma irregular y el otro de forma tubular. el fragmento de forma irregular mide 5 x 1.3 x 1 cms. y presenta al corte un aspecto de tejido grado, el fragmento tubular mide 5 x 1.3 cms. y muestra una luz ligeramente dilatada sin contenido aparente. Se toman cortes.\r\n\r\n\r\n\r\n', 'Los cortes muestran apéndice cecal con un proceso inflamatorio agudo que compromete todo el espesor de la pared. \r\n\r\n\r\n\r\n', '-APENDICITIS AGUDA\r\n\r\n\r\n', '', ''),
(53, 'Q2101-1593', NULL, '1032443267', 'MARIA BELTRAN DIAZ', '0000', 'F', '1992/03/03', 'SEGUROS BOLIVAR S.A', '0', 'Doctor ORLANDO BUSTILLO', NULL, '2021-01-27', '2021-01-22', 'ANA MAGOLA MANGA CEDEÑO', 'Rotulado \"Biopsia de cervical\" se reciben cuatro fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que miden 0.1 cms. Se toma todo.\r\n\r\n\r\n', 'Los cortes revelan cervix tapizado por epitelio escamoso con focos de una lesión intraepitelial escamosa de alto grado, hay cambios coilociticos asociados, el estroma infiltrado por linfocitos y plasmocitos.\r\n\r\n\r\n', ' Biopsia de cervix:\r\n-LIE DE ALTO GRADO (NIC II)\r\n-VER DESCRIPCIÓN MICROSCÓPICA\r\n\r\n\r\n\r\n\r\n', '', ''),
(54, 'Q2101-1594', NULL, '1047382072', 'MIRYAM MELENDEZ SANCHEZ', '00000', 'F', '1986/03/05', 'GASTROPACK SAS', 'PARTICULAR', 'Doctor: CESAR ORTIZ', NULL, '2021-01-27', '2021-01-22', 'ANA MAGOLA MANGA CEDEÑO', 'Rotulado \"Biopsia de polipo cuerpo gastrico\" se reciben diminutos fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que miden 0.2 cms. Se toma todo.\r\n\r\n\r\n', 'Los cortes muestran una estructura compuesta por glándulas fúndicas irregulares, algunas dilatadas, que reposan desordenadamente en una lámina propia edematosa moderadamente infiltrada por células mononucleares. No hay cambios neoplásicos.\r\n\r\n\r\n\r\n\r\n', ' Biopsia endsocópica de estómago:\r\n-PÓLIPO DE GLÁNDULAS FÚNDICAS\r\n\r\n', '', ''),
(55, 'Q2101-1595', NULL, '1237439985', 'YOBANNA ISABEL BERRIO ALVARADO', '000', 'F', '2007/11/08', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Dcotora CLAUDIA YAMAL MATTOS', NULL, '2021-01-27', '2021-01-22', 'ANA MAGOLA MANGA CEDEÑO', 'Rotulado \"Adenoides\" se reciben cuatro fragmentos de tejido de froma irregular de color blanquecino y consistencia blanda el mayor mide 1.5 x 1 cms. y el menor de 0.3 cms. Se toma muestra.\r\n\r\n\r\n', 'Amígdalas faríngeas con inflamación crónica e hiperplasia del tejido linfoide\r\n\r\n\r\n\r\n', '-HIPERPLASIA ADENOIDEA (ADENOIDITIS CRÓNICA)\r\n\r\n\r\n\r\n', '', ''),
(56, 'Q2101-1596', NULL, '1142930508', 'MOISES HERRERA DELGADO', '0000', 'M', '2011/01/02', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctora CLAUDIA YAMAL MATTOS', NULL, '2021-01-27', '2021-01-22', 'ANA MAGOLA MANGA CEDEÑO', 'En recipientes separados y rotulados, se reciben:\r\n1. \"Amigdala derecha\" una masa de tejido de forma ovoide, que mide 2  x 1 x 0.5 cms. Al corte una superficie multinodular de color rosado. Se toman cortes y se rotulan A.\r\n2. \"Amigada izquierda\" una masa de tejido de forma ovoide, que mide 1.8  x 1.7 x 0.5 cms. Al corte una superficie multinodular de color rosado. Se toman cortes y se rotulan B.\r\n\r\n\r\n', 'Los cortes de A y B revelan amígdalas palatinas con inflamación crónica, fibrosis e hiperplasia del tejido linfoide.\r\n\r\n\r\n\r\n', '-AMIGDALITIS CRÓNICA\r\n\r\n', '', ''),
(57, 'Q2101-1597', NULL, '1043963645', 'NATALIA MORALES VALDES', '0000', 'F', '2004/09/16', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctor LUIS MORENO BALLESTEROS', NULL, '2021-01-27', '2021-01-22', 'ANA MAGOLA MANGA CEDEÑO', 'En recipientes separados y rotulados, se reciben:\r\n1. \"Mama supernumeraria izquierda\" masa de tejido de forma ovoide de aspecto fibroadiposo, consistencia elástica que mide 4 x 2.2 x 2 cms. Al corte una superficie de color amarillento y aspecto adiposo. Se toman cortes y se rotulan A.\r\n2.  \"Mama supernumeraria derecha\" masa de tejido de forma ovoide de aspecto fibroadiposo, consistencia elástica que mide 6 x 4 x 2 cms. Al corte una superficie de color amarillento y aspecto fibroadiposo. Se toman cortes y se rotulan B.\r\n\r\n\r\n', 'Los cortes de A y B revelan tejido fibroadiposo que contiene lobulillos y canaliculos mamarios.\r\n\r\n\r\n', '1.MAMA SUPERNUMERARIA IZQUIERDA\r\n2.MAMA SUPERNUMERARIA DERECHA\r\n\r\n', '', ''),
(58, 'Q2101-1598', 'Q', '1051885670', 'KAREN HENRIQUEZ JIMENEZ', '000', 'F', '1987/08/31', 'CLINICA GENERAL DEL CARIBE SA.', '0', 'Dcotor ANGEL VASQUEZ PAJARO', NULL, '2021-01-22', '2021-01-22', 'ANA MAGOLA MANGA CEDEÑO', 'Rotulado \"Placenta\" ae ercibe una placenta que pesa 95 gms. y mide 9  x7 cms. Trae adhereido un segemnto de cordon umbilical de 30 cms. La cara fetal es de aspecto membranoso, blanqueicna, la cara materna presneta múlti´ñes cotiledones de color gris, el cordon umbilical al corte esta constituido po rtres vasos. S etoman cortes', '', '', '', ''),
(59, 'Q2101-1599', NULL, '45494801', 'MEDLINA POMARE PEDROZA', '0000', 'F', '1971/03/03', 'LIGA CONTRA EL CANCER', 'PARTICULAR', 'Doctora SONIA LONDOÑO ', NULL, '2021-01-27', '2021-01-27', 'GUILLERMO ROVIRA ROSALES', 'Rotulado \"Biopsia de cervix\" se reciben tres fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que juntos hacen 1.5 x 0.5 cms. Se toma todo\r\n\r\n\r\n', 'Cuello uterino con infiltración mononuclear del estroma. No hay cambios de LIE en la muestra enviada. \r\n\r\n\r\n', ' Biopsia de cervix:\r\n-CERVICITIS CRÓNICA\r\n\r\n', '', ''),
(60, 'Q2101-1600', NULL, '73070213', 'ARQUIMEDES JARABA GARAY', '3205674573', 'M', '1956/07/04', 'GASTROPACK SAS', 'LIBERTY SEGUROS S.A.', 'Doctora BEATRIZ ELENA LINCE', NULL, '2021-01-27', '2021-01-27', 'GUILLERMO ROVIRA ROSALES', 'Rotulado \"Antro\" se reciben dos fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que miden 0.8 cms. Se toma todo.\r\n\r\n\r\n', 'Fragmentos de mucosa gástrica antral cuya morfología está preservada. Hay discreto edema e infiltración por linfocitos y células plasmáticas de la lámina propia. No se encuentra H. pylori, actividad inflamatoria ni cambios atróficos, metaplásicos ni displásicos.\r\n\r\n\r\n', ' Biopsia endoscópica de estómago:\r\n-GASTRITIS CRÓNICA INACTIVA\r\n\r\n', '', ''),
(61, 'Q2101-1601', 'Q', '8638331', 'ALVARO RUBEN VILLAVECES REALES', '3008156245', 'M', '1959/08/16', 'GASTROPACK SAS', 'ECOPETROL S.A', 'Doctora BEATRIZ ELENA LINCE', NULL, '2021-01-27', '2021-01-27', 'GUILLERMO ROVIRA ROSALES', 'En recipientes separados y rotualdos, se reciben:\r\n1. \"Esófago\" un fragmento de tejido de forma irregular de color blanquecino y consistencia elástica que mide 0.4 cms. Se toma todo y se rotula A.\r\n2. \"Antro\" tres fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que juntos miden 0.8 cms. Se toma todo y se rotulan B.', '', '', '', ''),
(62, 'Q2101-1602', NULL, '1193371842', 'YENIFER SANDOVAL LOPEZ', '000', 'F', '1992/03/13', 'CLIN. SAN JOSE DE TORICES SAS', 'Mutual SER', 'Doctor EDUARDO QUINTERO', NULL, '2021-01-27', '2021-01-27', 'GUILLERMO ROVIRA ROSALES', 'Rotulado \"Apéndice\" se recibe un apéndice cecal que mide 7 x 0.6 cms. Los vasos sanguineos se encuentran ingurgitados. Al corte la pared esta engrosada y el lumen contiene material fecal solidificada. Se toman cortes.\r\n\r\n\r\n', 'Apéndice cecal con un proceso inflamatorio agudo que compromete todo el espesor de la pared. \r\n\r\n\r\n\r\n', '-APENDICITIS AGUDA\r\n\r\n\r\n', '', ''),
(63, 'Q2101-1603', NULL, '1048438520', 'NATALIA PUELLO AYCARDI', '000', 'F', '2005/11/17', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctor PASTOR THOMAS OLIVARES', NULL, '2021-01-27', '2021-01-27', 'GUILLERMO ROVIRA ROSALES', 'Rotulado \"Vesícula\" se recibe una vesícula bilair que mide 6.5 x 1.5 cms. esta cubierta por una serosa despulida, viene previamente evacuada, la pared esta engrosada y la mucosa ha sido reemplazada parcialmente por tejido fibroso y se observan calculos de diferentes tamaños, elmayor mide 1 cm. y el mneor de 0.5 cms. Se toman cortes.\r\n\r\n\r\n', 'Vesícula biliar con inflamación crónica, fibrosis e hipertrofia del estrato muscular.\r\n\r\n\r\n\r\n', '-COLECISTITIS CRÓNICA CON COLELITIASIS\r\n\r\n', '', ''),
(64, 'Q2101-1604', NULL, '1235039943', 'YEIKOL RODRIGUEZ MEZA', '3044362670', 'M', '2012/06/08', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctor JOSE PRETELT MENDOZA', NULL, '2021-01-27', '2021-01-27', 'GUILLERMO ROVIRA ROSALES', 'Rotulado \"Granuloma\" se reciben dos fragmentos de tejido el mayor redondeado mide 1.5 x 1.2 cms. y el menor aplanado mide 1.5 cms. de color grisáceo y negruzco. Al corte del mayor trae una formación quistica llena de un material gelatinoso, grisáceo, blanquecino, el menor tejido aplanadao negruzco, blanquecino. Se toman cortes .\r\n\r\n\r\n', 'Los cortes revelan epitelio escamoso, debajo de este se observa una proliferación de capilares rodeado por células inflamatorias tipo linfocitica, plasmaticas y neutrófilos.\r\n\r\n\r\n', ' Extirpación de lesión en cuero cabelludo:\r\n-HEMANGIOMA CAPILAR\r\n\r\n\r\n\r\n', '', ''),
(65, 'Q2101-1605', 'Q', '1049829737', 'ELY CAROLINA JIMENEZ MEJIA', '3043900773', 'F', '2012/12/10', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctora NELLYS RODRIGUEZ ZULETA', NULL, '2021-01-27', '2021-01-27', 'GUILLERMO ROVIRA ROSALES', 'Rotulado \"Mucocele\" se recibe un fragmento de tejido de color blanquecino con pequeñas formaciones quisticas llenas de un material amarillento que mide 1  x 0.7 cms. Se toma todo', '', '', '', '');
INSERT INTO `informe` (`id`, `informe_cod`, `t_informe`, `numdoc`, `paciente`, `telefono`, `sexo`, `edad`, `entidad`, `eps`, `medRemitente`, `fec_muestra`, `fec_inf`, `fec_ingreso`, `patologo`, `macro`, `micro`, `diagnostico`, `inmuno`, `observaciones`) VALUES
(66, 'Q2101-1606', NULL, '1043656984', 'DANA LUCIA DORIA SIERRA', '3205232840', 'F', '2008/03/21', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctor PERLA VILLAMOR ROJAS', NULL, '2021-01-27', '2021-01-27', 'GUILLERMO ROVIRA ROSALES', 'En recipientes separados y rotulados, se reciben:\r\n1. \"Amigdala derecha\" una amigdala palatina de forma irregular con múltiples formaciones cripticas de color blanco grisáceo que mide 4 x 3 x 2.5 cms. Al corte tejido blanquecino, homogeneo con formaciones cripticas. Se toman cortes y se rotulan A.\r\n2. \"Amigdala izquierda\" una amigdala palatina de forma irregular con múltiples formaciones cripticas de color blanco grisáceo que mide 4 x 3.5 x 2.5 cms. Al corte tejido blanquecino, homogeneo con formaciones cripticas. Se toman cortes y se rotulan B.\r\n\r\n', 'Los cortes rotulados A y B revelan amígdalas palatinas con inflamación crónica, fibrosis e hiperplasia del tejido linfoide.\r\n\r\n\r\n\r\n', '-AMIGDALITIS CRÓNICA\r\n\r\n', '', ''),
(67, 'Q2101-1607', NULL, '1002423067', 'JESUS RANGEL TOLOZA', '3225135774', 'M', '1992/02/08', 'CLINICA GENERAL DEL CARIBE SA.', '0', 'Doctor LUIS HERRERA ZABALETA', NULL, '2021-01-27', '2021-01-27', 'GUILLERMO ROVIRA ROSALES', 'Rotulado \"Apéndice\" se recibe un apéndice cecal que mide 7.5 x 1 cms. Los vasos sanguíneos estan ingurgitados. Al corte la pared esta engrosada y el lumen contiene material fecal solidificado de color blanquecino. Se toman cortes.\r\n\r\n\r\n', 'Apéndice cecal con un proceso inflamatorio agudo que compromete todo el espesor de la pared. \r\n\r\n\r\n\r\n', '-APENDICITIS AGUDA\r\n\r\n\r\n', '', ''),
(68, 'Q2101-1608', NULL, '1007367992', 'ROSA LIÑAN BENITEZ', '0000', 'F', '1994/09/07', 'CLINICA GENERAL DEL CARIBE SA.', '0', 'Doctor LAURISELL GUTIERREZ BLANCHAR', NULL, '2021-01-27', '2021-01-27', 'GUILLERMO ROVIRA ROSALES', 'Rotulado \"Vesícula\" se recibe una vesícula biliar que mide 12.5 x 3 cms. cubierta por una serosa despulida. Viene evacuada. Al corte la apred esta engrosada, la mucosa ha sido reemplazada parcialmente por tejido fibroso, se observan calculos de diferentes tamaños de color amarillento el mayor mide 1 cm. y el menor de 0.3 cms. Se toman cores.\r\n\r\n\r\n', 'Vesícula biliar con inflamación crónica, fibrosis e hipertrofia del estrato muscular.\r\n\r\n\r\n\r\n', '-COLECISTITIS CRÓNICA CON COLELITIASIS\r\n\r\n', '', ''),
(69, 'Q2101-1609', 'Q', '0', 'DIOHANA AVILA DORANTE', '3116647551', 'F', '1994/04/10', 'CLINICA GENERAL DEL CARIBE SA.', '0', 'Doctor ANGEL VASQUEZ PAJARO', NULL, '2021-01-27', '2021-01-27', 'GUILLERMO ROVIRA ROSALES', 'Rotulado \"Utero + trompas\" se recibe un cuerpo uterino que mide 15  x12 x 8 cms. y pesa 813 gms. Al corte la pared uterina mide 4 cms. la cavidad endoemtrial esta recubierta por coágulos sanguineos y la pared del endoemtrio mide 1 cm. \r\n\r\nNo se observan las trompas', '', '', '', ''),
(70, 'Q2101-1610', NULL, '30894137', 'ANA ROMERO CERVANTES', '000', 'F', '1980/03/03', 'ORG. CLINICA GENERAL DEL NORTE', '0', 'Doctor LUIS JAVIER ALZAMORA TABORDA', NULL, '2021-01-29', '2021-01-28', 'VIRNA CARABALLO OSORIO', 'Rotulado \"Polipo endocervical\" se reciben dos fragmentos de tejido de forma irregular  decolor pardo claro y consistencia blanda que en conjunto hacen un volumen de 1 ml. y mide 2.2 x 0.6 y 1.5 x 0.6 cms. Se toma todo.\r\n\r\n\r\n\r\n', 'Los cortes muestran fragmentos de una estructura compuesta por glándulas endocervicales dispuestas irregularmente sobre un estroma fibrovascular.\r\n\r\n\r\n', '-PÓLIPO ENDOCERVICAL (FRAGMENTOS)\r\n\r\n\r\n', '', ''),
(71, 'Q2101-1611', NULL, '1052969880', 'JOSSIET LASTRE TELLEZ', '3059422401', 'M', '1990/07/08', 'GASTROPACK SAS', 'SEGUROS DE VIDA SURAMERICANA S.A', 'Doctor ELKIN ROMERO CAMARGO', NULL, '2021-01-29', '2021-01-28', 'VIRNA CARABALLO OSORIO', 'Rotulado \"Antro gástrico\" se reciben cuatro diminutos fragmentos de tejido de forma irregular de color pardo claro y consistencia blanda que promedian 0.5 cms. Se toma todo.\r\n\r\n\r\n', 'Fragmentos de mucosa gástrica antral cuya morfología está preservada. Hay discreto edema e infiltración por linfocitos y células plasmáticas de la lámina propia. No se encuentra H. pylori, actividad inflamatoria ni cambios atróficos, metaplásicos ni displásicos.\r\n\r\n\r\n', ' Biopsia endoscópica de estómago:\r\n-GASTRITIS CRÓNICA INACTIVA\r\n\r\n\r\n\r\n', '', ''),
(72, 'Q2101-1612', NULL, '1047466973', 'CATERINE WILCOX DIAZ', '0000', 'F', '1994/03/17', 'CLIN. SAN JOSE DE TORICES SAS', 'Mutual SER', 'Doctor HERNAN CALDERON', NULL, '2021-01-29', '2021-01-28', 'VIRNA CARABALLO OSORIO', 'Rotulado \"Apéndice\" se recibe un apéndice cecal que mide 6.6 x 0.7 cms. La superficie externa esta cubierta por una serosa despulida con aumento de la trama vascular. Al corte la pared esta engrosada y la luz puntiforme. Se toman cortes.\r\n\r\n\r\n', 'Los cortes muestran apéndice cecal con un proceso inflamatorio agudo que compromete todo el espesor de la pared. \r\n\r\n\r\n', '-APENDICITIS AGUDA\r\n\r\n\r\n', '', ''),
(73, 'Q2101-1613', NULL, '52245982', 'MORAIMA TORRES VASQUEZ', '000', 'F', '1976/01/05', 'PARTICULAR', 'LIGA CONTRA EL CANCER', 'Doctor LUIS JAVIER ALZAMORA TABORDA', NULL, '2021-01-29', '2021-01-28', 'VIRNA CARABALLO OSORIO', 'Rotulado \"Biopsia de vulva\" se reciben dos fragmentos de tejido de forma irregular de color pardo claro y consistencia blanda que miden 0.6 y 0.3 cms. en su mayor dimesnión. Se toma todo.\r\n\r\n\r\n\r\n\r\n', 'Los cortes muestran una estructuta compuesta por epitelio escamoso que rodea un tallo fibrovascular.\r\nOtros cortes muestran un tumor benigno derivado de las glandulas sudoriparas apocrinas compuestas por células epiteliales y mioepiteliales que tapizan un tallo fibrovascular ramificado.\r\n\r\n\r\n', ' Biopsia de vulva:\r\n1.PAPILOMA ESCAMOSO\r\n2.HIDRADENOMA PAPILAR\r\n', '', ''),
(74, 'Q2101-1614', NULL, '26162681', 'MARGENIA BURGOS PEREZ', '000', 'F', '1977/12/30', 'CLIN. SAN JOSE DE TORICES SAS', 'Mutual SER', 'Doctor GUSTAVO CARBALLO', NULL, '2021-01-29', '2021-01-28', 'OLIVA MARRUGO GRICE', 'Rotulado \"Restos ovulares\" se reciben fragmentos de tejido de aspecto membranoso de color pardo oscuro y consistencia friable que juntos hacen un volumen de 6 ml. Se toma todo.\r\n\r\n\r\n\r\n', 'Tejido placentario compuesto por vellosidades edematosas tapizadas por cito y sinciciotrofoblásto sin alteraciones.\r\n\r\n\r\n\r\n', ' Legrado uterino.\r\n-RESTOS OVULARES\r\n\r\n', '', ''),
(75, 'Q2101-1615', NULL, '412', 'YOHANMARIS VELASQUEZ GARCIA', '3124333739', 'F', '2009/08/25', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctor PASTOR THOMAS OLIVARES', NULL, '2021-01-29', '2021-01-28', 'OLIVA MARRUGO GRICE', 'Rotulado \"Tumor cervical\" se recibe una masa de tejido que mide 5 x 5 x 2.5 cms. de color blanquecino y consistencia firme. Al corte una superficie blanquecina. lisa. Se toman cortes.\r\n\r\n\r\n', 'Los cortes revelan tumor benigno constituido por células epiteliales que se disponen en cordones y ductos pequeños, descansan en un estroma condromixoide.\r\n\r\n\r\n', ' Resección de tumor cervical:\r\n-ADENOMA PLEOMORFO (TUMOR MIXTO BENIGNO)\r\n\r\n\r\n\r\n', '', ''),
(76, 'Q2101-1616', NULL, '1042610839', 'JHERONIMO GOMEZ SOLANO', '000', 'M', '2017/12/17', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctor IVAN JIMENEZ SANCHEZ', NULL, '2021-01-29', '2021-01-28', 'OLIVA MARRUGO GRICE', 'En recipientes separados y rotulados, se reciben:\r\n1. \"Yeyuno proximal\" segmento de intestino sin marcación de bordes que mide 6 x 1.5 cms. tapizado por una serosa opaca bien vascularizada de color pardo oscuro, a 1 cm. de uno de los bordes se observa un punto de sutura. Se toman cortes A bordes de resección. Al corte mucosa edematosa y cerca de uno de los bordes hiperhemico. Se toman cortes y se rotulan B.\r\n2. \"Borde distal\" segmento de intestino mide 3 x 2 cms. tapizado por una serosa opaca bien vascularizada de color pardo oscuro, trae adherido material fibrinopurulento. Se toman cortes asi: C bordes, D área que presenta el exudado purulento.\r\n\r\n', 'Los cortes rotulados yeyuno proximal muestra intestino delgado con inflamación aguda que se extiende hasta la serosa, edema, congestión y áreas de necrosis hemorrágica. Uno de los bordes esta comprometido.\r\nLos cortes rotulados distal muestra intestino delgado con inflamación aguda y focos de necrosis hemorrágica. Uno de los bordes comprometidos.\r\n\r\n', '1.Resección de yeyuno proximal (6 cms.):\r\n-INTESTINO DELGADO CON INFLAMACIÓN AGUDA, NECROSIS HEMORRÁGICA\r\n-UNO DE LOS BORDES COMPROMETIDOS\r\n2.Resección yeyuno distal (3 cms.):\r\n-INFLAMACIÓN AGUDA Y ÁREAS DE NECROSIS HEMORRÁGICA\r\n-UNO DE LOS BORDES COMPROMETIDOS\r\n', '', ''),
(77, 'Q2101-1617', 'Q', '9087312', 'RAFAEL CABARCAS CABARCAS', '3008318500', 'M', '1953/12/16', 'GASTROPACK SAS', 'ECOPETROL S.A', 'Doctor ISMAEL YEPES', NULL, '2021-01-30', '2021-01-30', 'JOSÉ CARABALLO GRACIA', 'Rotulado \"Antro\" se reciben dos fragmentos de tejido de forma irregular de color pardo claro y consistencia blanda que miden 0.3 cms. Se toma todo.\r\n\r\n', '', '', '', ''),
(78, 'Q2101-1618', 'Q', '22810564', 'HELLEN VASQUEZ AGUILAR', '3147827760', 'F', '1981/01/07', 'GASTROPACK SAS', 'SEGUROS BOLIVAR S.A', 'Doctor ISMAEL YEPES', NULL, '2021-01-30', '2021-01-30', '0', 'En recipientes separados y rotulados, se reciben:\r\n1. \"Antro\" un fragmento de tejido de forma irregular de color pardo claro y consistencia blanda que mide 0.4 cms. Se toma todo y se rotula A.\r\n2. \"Polipo\" dos fragmentos de tejido de forma irregular de color pardo claro y consistencia blanda que promedian 0.4 cms. Se toma todo y se rotulan B.\r\n\r\n\r\n\r\n', '', '', '', ''),
(79, 'Q2101-1619', 'Q', '7919696', 'JHON RAIGOSA OSPINA', '3002084224', 'M', '1978/05/13', 'GASTROPACK SAS', 'ALLIANZ SEGUROS DE VIDA SA.', 'Doctor ISMAEL YEPES', NULL, '2021-01-30', '2021-01-30', 'JOSÉ CARABALLO GRACIA', 'Rotulado \"Polipo de recto\" recibe un fragmento de tejido de forma irregular de color pardo claro y consistencia blanda que mide 1 cms. en su mayor dimensión. Se toma todo en dos cortes\r\n\r\n', '', '', '', ''),
(80, 'Q2101-1620', 'Q', '1201251278', 'BRITANY BOLIVAR CONTRERAS', '3217657173', 'F', '2015/12/03', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctor ERICK ALVAREZ PEREIRA', NULL, '2021-01-30', '2021-01-30', 'JOSÉ CARABALLO GRACIA', 'Rotulado \"Verruga en rodilla derecha\" se recibe recibe un fragmento de tejido, aplanado de color pardo claro y consistencia firme que miden 0.7 cms. en su mayor diámetro. Se toma todo.\r\n\r\n', '', '', '', ''),
(81, 'Q2101-1621', 'Q', '1201222704', 'JHORLAN MORALES REYES', '3216130927', 'M', '2010/08/31', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctor ERICK ALVAREZ PEREIRA', NULL, '2021-01-30', '2021-01-30', 'JOSÉ CARABALLO GRACIA', 'Rotulado \"Quíste epidermico en espalda\" se reciben dos fragmentos de tejido de forma irregular de color amarillento y aspecto graso, uno de ellos cubierto parcialmente por una elipse de piel mide 0.6 cms. en su mayor diámetro miden respectivamente 1.8 y 1.5 cms. Uno de ellos contiene un nódulo. Se corta el nódulo descrito encontrandose una superficie irregular de aspecto calcificado. S etoman cortes', '', '', '', ''),
(82, 'Q2101-1622', 'Q', '33146646', 'JUDITH DEL RIO DE BORRE', '3044562512', 'F', '1953/01/07', 'PARTICULAR', 'C.', 'Doctor FERNANDO GARCIA DEL RISCO', NULL, '2021-01-30', '2021-01-30', 'ANA MAGOLA MANGA CEDEÑO', 'Rotulado \"Antro\" se reciben tres fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica el mayor mide  0.3 cms. y el menor de 0.1 cms. Se toma todo.\r\n\r\n', '', '', '', ''),
(83, 'Q2101-1623', 'Q', '45456699', 'ESTER VILLANUEVA ROJAS', '3046260097', 'F', '1962/01/07', 'PARTICULAR', 'LIGA CONTRA EL CANCER', 'Doctor LUIS JAVIER ALZAMORA TABORDA', NULL, '2021-01-30', '2021-01-30', 'ANA MAGOLA MANGA CEDEÑO', 'Rotulado \"Exocervix\" se reciben dos fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica el mayor mide 1.2 cms. y el menor de 0.4 cms. Se toma todo.\r\n\r\n', '', '', '', ''),
(84, 'Q2101-1624', 'Q', '45469657', 'CARMEN ALVAREZ CHICO', '3023208970', 'F', '1962/01/07', 'PARTICULAR', 'LIGA CONTRA EL CANCER', 'Doctor LUIS JAVIER ALZAMORA TABORDA', NULL, '2021-01-30', '2021-01-30', 'ANA MAGOLA MANGA CEDEÑO', 'Rotulado \"Polipo\" se reciben dos fragmentos de tejido de aspecto polipoide de color blanquecino y consistencia elástica el mayor mide 1 cms. y el menor 0.5 cms. Se toman cortes.\r\n\r\n', '', '', '', ''),
(85, 'Q2101-1625', 'Q', '73569827', 'ANA CARDENAS DE BALCEIRO', '3103670912', 'F', '1955/01/07', 'PARTICULAR', 'PARTICULAR', 'Doctor FERNANDO GARCIA DEL RISCO', NULL, '2021-01-30', '2021-01-30', 'ANA MAGOLA MANGA CEDEÑO', 'Rotulado \"Antro\" se recibe un fragmento de tejido de forma irregular de color blanquecino y consistencia elástica que mide 0.3 cms. Se toma todo.\r\n\r\n', '', '', '', ''),
(86, 'Q2101-1626', 'Q', '45480372', 'SANDRA VERBEL MARTINEZ', '3043775976', 'F', '1968/01/07', 'PARTICULAR', 'PARTICULAR', 'Doctor FERNANDO GARCIA DEL RISCO', NULL, '2021-01-30', '2021-01-30', 'ANA MAGOLA MANGA CEDEÑO', 'Rotulado \"Antro\" se recibe fragmento de tejido de forma irregular de color blanquecino y consistencia elástica que mide 0.4 cms. Se toma todo.\r\n\r\n', '', '', '', ''),
(87, 'Q2101-1627', 'Q', '45480372', 'SANDRA VERBEL MARTINEZ', '3043775976', 'F', '1968/01/07', 'PARTICULAR', 'PARTICULAR', 'Doctor FERNANDO GARCIA DEL RISCO', NULL, '2021-01-30', '2021-01-30', 'ANA MAGOLA MANGA CEDEÑO', 'Rotulado \"Antro\" se reciben dos fragmentos de tejido de forma irregular de color blanquecino y consistencia elástica que miden 0.3 cms. Se toma todo.\r\n\r\n', '', '', '', ''),
(88, 'Q2101-1628', 'Q', '73100117', 'MARCO MARZAN MANZUR', '3162951186', 'M', '1962/05/15', 'GASTROPACK SAS', 'SEGUROS BOLIVAR S.A', 'Doctor ISMAEL YEPES', NULL, '2021-01-30', '2021-01-30', 'ANA MAGOLA MANGA CEDEÑO', 'Rotulado \"Estómago\" se recibe fragmento de tejido de forma irregular de color blanquecino y consistencia elástica que mide 0.3 cms. Se toma todo.\r\n\r\n', '', '', '', ''),
(89, 'Q2101-1629', 'Q', '1127655792', 'EDUARDO ARIAS RANGEL', '3059368966', 'M', '2003/09/11', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctor LUIS MORENO BALLESTEROS', NULL, '2021-01-30', '2021-01-30', 'ANA MAGOLA MANGA CEDEÑO', 'Rotulado \"Apéndice\" se recibe un apéndice cecal qie ,ode 6 cms. La serosa es opaca y despulida y esta cubeirta por material amarillento. Al corte la luz ocupada pro material oscuro. S etoman cortes', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informec`
--

CREATE TABLE `informec` (
  `id` int(11) NOT NULL,
  `informe_cod` varchar(11) DEFAULT NULL,
  `t_informe` varchar(1) DEFAULT NULL,
  `numdoc` varchar(13) DEFAULT NULL,
  `paciente` varchar(100) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `entidad` varchar(100) DEFAULT NULL,
  `eps` varchar(100) DEFAULT NULL,
  `medRemitente` varchar(100) DEFAULT NULL,
  `fec_muestra` varchar(10) DEFAULT NULL,
  `fec_inf` varchar(10) DEFAULT NULL,
  `fec_ingreso` varchar(10) DEFAULT NULL,
  `patologo` varchar(100) DEFAULT NULL,
  `cal_muestra` int(1) DEFAULT NULL,
  `ins_motivo` varchar(50) DEFAULT NULL,
  `cat_gen` int(1) DEFAULT NULL,
  `cbox1` varchar(5) DEFAULT NULL,
  `cbox2` varchar(5) DEFAULT NULL,
  `cbox3` varchar(5) DEFAULT NULL,
  `cbox4` varchar(5) DEFAULT NULL,
  `cbox5` varchar(5) DEFAULT NULL,
  `cbox6` varchar(5) DEFAULT NULL,
  `cbox7` varchar(5) DEFAULT NULL,
  `cbox8` varchar(5) DEFAULT NULL,
  `cbox9` varchar(5) DEFAULT NULL,
  `cbox10` varchar(5) DEFAULT NULL,
  `cbox11` varchar(5) DEFAULT NULL,
  `cbox12` varchar(5) DEFAULT NULL,
  `cbox13` varchar(5) DEFAULT NULL,
  `cbox14` varchar(5) DEFAULT NULL,
  `cbox15` varchar(5) DEFAULT NULL,
  `cbox16` varchar(5) DEFAULT NULL,
  `cbox17` varchar(5) DEFAULT NULL,
  `cbox18` varchar(5) DEFAULT NULL,
  `cbox19` varchar(5) DEFAULT NULL,
  `cbox20` varchar(5) DEFAULT NULL,
  `cbox21` varchar(5) DEFAULT NULL,
  `cbox22` varchar(5) DEFAULT NULL,
  `cbox23` varchar(5) DEFAULT NULL,
  `cbox24` varchar(5) DEFAULT NULL,
  `cbox25` varchar(5) DEFAULT NULL,
  `cbox26` varchar(5) DEFAULT NULL,
  `cbox27` varchar(5) DEFAULT NULL,
  `cbox28` varchar(5) DEFAULT NULL,
  `cbox29` varchar(5) DEFAULT NULL,
  `cbox30` varchar(5) DEFAULT NULL,
  `cbox31` varchar(5) DEFAULT NULL,
  `cbox32` varchar(5) DEFAULT NULL,
  `cbox33` varchar(5) DEFAULT NULL,
  `observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `informec`
--

INSERT INTO `informec` (`id`, `informe_cod`, `t_informe`, `numdoc`, `paciente`, `telefono`, `sexo`, `edad`, `entidad`, `eps`, `medRemitente`, `fec_muestra`, `fec_inf`, `fec_ingreso`, `patologo`, `cal_muestra`, `ins_motivo`, `cat_gen`, `cbox1`, `cbox2`, `cbox3`, `cbox4`, `cbox5`, `cbox6`, `cbox7`, `cbox8`, `cbox9`, `cbox10`, `cbox11`, `cbox12`, `cbox13`, `cbox14`, `cbox15`, `cbox16`, `cbox17`, `cbox18`, `cbox19`, `cbox20`, `cbox21`, `cbox22`, `cbox23`, `cbox24`, `cbox25`, `cbox26`, `cbox27`, `cbox28`, `cbox29`, `cbox30`, `cbox31`, `cbox32`, `cbox33`, `observaciones`) VALUES
(1, '', 'C', '', '', '', 'F', '1956/07/31', 'ASEGURADORA DE VIDA SURAMERICANA S.A', 'SEGUROS DE VIDA SURAMERICANA S.A', '', '2021-01-01', '2021-01-01', '2021-01-01', 'ANA MAGOLA MANGA CEDEÑO', 0, '', 1, 'on', NULL, NULL, NULL, 'on', NULL, 'on', 'on', NULL, NULL, NULL, NULL, NULL, 'on', 'on', NULL, NULL, 'on', NULL, 'on', 'on', 'on', NULL, NULL, NULL, NULL, NULL, 'on', NULL, NULL, NULL, NULL, NULL, ''),
(2, 'C2101-133', 'C', '1102232987', 'CINDY BLANQUICETH RANGEL', '00', 'F', '1996/03/03', 'ASEGURADORA DE VIDA SURAMERICANA S.A', '0', 'Doctor ALBERTO ACUÑA ARICO', '2021-01-01', '2021-01-20', '2021-01-20', 'JOSÉ CARABALLO GRACIA', 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', 'on', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(3, 'C2101-134', 'C', '45468313', 'NURIS WILCHES DELGADO', '0000', 'F', '1967/03/03', 'SEGUROS BOLIVAR S.A', '0', 'Dcotor ORLANDO BUSTILLO', '2021-01-01', '2021-01-25', '2021-01-22', 'JOSÉ CARABALLO GRACIA', 1, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Extendido marcadamente atrófico.'),
(4, 'C2101-135', 'C', '1143357713', 'ANDREA BOGOYA JARABA', '000', 'F', '1993/03/03', 'SEGUROS BOLIVAR S.A', '0', 'Doctor ORLANDO BUSTILLO ', '2021-01-01', '2021-01-26', '2021-01-26', 'VIRNA CARABALLO OSORIO', 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Extendido dentro de los límites de la normalidad.'),
(5, 'C2101-136', 'C', '1047495090', 'VALENTINA GARAVITO AREVALO', '000', 'F', '1997/03/03', 'ASEGURADORA DE VIDA SURAMERICANA S.A', '0', 'Doctor ORLANDO BUSTILLO', '2021-01-01', '2021-01-26', '2021-01-26', 'VIRNA CARABALLO OSORIO', 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Extendido dentro de los límites de la normalidad.'),
(6, 'C2101-137', 'C', '33335505', 'YOVANNA LOPEZ CAMPIÑO', '0000', 'F', '1996/03/03', 'ASEGURADORA DE VIDA SURAMERICANA S.A', '0', 'Doctor ORLANDO BUSTILLO', '2021-01-01', '2021-01-26', '2021-01-26', 'VIRNA CARABALLO OSORIO', 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Extendido dentro de los límites de la normalidad.'),
(7, 'C2101-138', 'C', '34976341', 'MANUELA BERROCAL REVUELTAS', '0000', 'F', '1954/03/03', 'PARTICULAR', 'C.', 'Doctora MARIA CLAUDIA BURGOS', '2021-01-01', '2021-01-28', '2021-01-28', 'JOSÉ CARABALLO GRACIA', 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', 'on', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Extendido atrófico e inflamatorio.'),
(8, 'C2101-139', 'C', '34976341', 'MARCELA BERROCAL REVUELTAS', '000', 'F', '1960/03/03', 'PARTICULAR', 'C.', 'Doctora MARIA CLAUDIA BURGOS', '2021-01-01', '2021-01-28', '2021-01-28', 'JOSÉ CARABALLO GRACIA', 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Extendido atrófico.'),
(9, 'C2102-140', 'C', '2147483647', 'CATALINA AVILA CARRASCAL', '000', 'F', '2001/02/02', 'ASEGURADORA DE VIDA SURAMERICANA S.A', '0', 'Doctor ORLANDO BUSTILLO', '2021-01-01', '2021-01-01', '2021-01-01', 'ANA MAGOLA MANGA CEDEÑO', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(10, 'C2102-141', 'C', '1143351044', 'PAOLA DE ARCO OROZCO', '00000', 'F', '1992/02/02', 'ALLIANZ SEGUROS DE VIDA S.A', '0', 'Doctor ORLANDO BUSTILLO', '2021-01-01', '2021-01-01', '2021-01-01', 'ANA MAGOLA MANGA CEDEÑO', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(11, 'C2102-142', 'C', '45477400', 'LEIDA PERNETT CARDENAS', '0000', 'F', '1968/02/02', 'SEGUROS BOLIVAR S.A', '0', 'Doctor ORLANDO BUSTILLO', '2021-01-01', '2021-01-01', '2021-01-01', 'ANA MAGOLA MANGA CEDEÑO', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(12, 'C2102-143', 'C', '1193561475', 'VANESSA VALDERRAMA PERNETT', '00000', 'F', '2021/02/02', 'SEGUROS BOLIVAR S.A', '0', 'Doctor ALBERTO ACUÑA ARICO', '2021-01-01', '2021-01-01', '2021-01-01', 'ANA MAGOLA MANGA CEDEÑO', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(13, 'C2102-144', 'C', '33152492', 'ISOLINA VISBAL DE PUELLO', '000', 'F', '1954/02/02', 'PARTICULAR', 'C.', 'Doctor NESTOR MARTINEZ', '2021-01-01', '2021-01-01', '2021-01-01', 'ANA MAGOLA MANGA CEDEÑO', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medremitente`
--

CREATE TABLE `medremitente` (
  `id` int(11) NOT NULL,
  `medRemitente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `id` int(11) NOT NULL,
  `t_docu` varchar(11) NOT NULL,
  `num_docu` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` varchar(35) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `fecha_nacimiento` varchar(13) NOT NULL,
  `description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`id`, `t_docu`, `num_docu`, `nombre`, `sexo`, `direccion`, `telefono`, `email`, `fecha_nacimiento`, `description`, `user_id`, `created_at`) VALUES
(1, 'cedula', 1235046492, 'MARIA PAULA QUINTERO ARTETA', 'F', '...', '....', '...mapaquintero@hotmail.com', '1999-05-05', '', 1, '2021-01-04 21:50:56'),
(2, 'cedula', 33107794, 'ROSARIO BRIEVA ORTEGA', 'F', 'rleonestorres@hotmail.com', '010101', 'correo@correo.com', '1968-04-06', '', 1, '2021-01-14 16:46:02'),
(3, 'cedula', 7306146, 'CEDRICK CONTRERA GUARDO', 'F', 'Centro', '3005274659', 'cedrickcontrera@gmail.com', '2021-01-14', '', 1, '2021-01-14 17:02:50'),
(4, 'cedula', 73105307, 'RICARDO PEREZ ALCALA', 'M', 'AV 3 # 67-108', '3114285736', 'ricapera@hotmail.com', '1963-12-06', '', 1, '2021-01-14 18:16:35'),
(5, 'tarjeta', 1047422568, 'LUIS GABRIEL TOVAR CARMONA', 'M', 'Cartagena', '3135189362', 'correo@correo.com', '2008-02-23', '', 1, '2021-01-14 18:21:12'),
(6, 'tarjeta', 1050719827, 'DANIRYS AURORA DIAZ TORRES', 'F', 'Barrio las flores', '3116892698', 'correo@correo.com', '2006-05-01', '', 1, '2021-01-14 18:25:17'),
(7, 'tarjeta', 1142914352, 'RINA MARCELA ALFARO GOMEZ', 'F', 'Cartagena', '3105142432', 'correo@correo.com', '2006-04-28', '', 1, '2021-01-14 18:28:56'),
(8, 'cedula', 22798927, 'LUZ MARY CHIQUILLO CHIQUILLO', 'F', 'Bayunca', '46155555', 'correo@correo.com', '1976-10-06', '', 1, '2021-01-14 18:33:36'),
(9, 'cedula', 9312624, 'EDILBERTO VILLALBA VIERA', 'M', 'Castillogrande', '0000', 'correo@correo.com', '1968-07-10', '', 1, '2021-01-14 18:35:59'),
(10, 'cedula', 9096608, 'ALEXANDER SANCHEZ BARCASNEGRAS', 'M', 'Chiquinquira', '000', 'correo@correo.com', '1977-10-20', '', 1, '2021-01-14 18:39:00'),
(11, 'cedula', 1003100312, 'JOSE LUIS JULIO DIAZ', 'M', 'San pedro', '000', 'correo@correo.com', '2000-08-25', '', 1, '2021-01-14 19:01:35'),
(12, 'cedula', 45475264, 'OLGA PATRICIA SOTOMAYOR POLO', 'F', 'Centro', '000', 'correo@correo.com', '1967-03-03', '', 1, '2021-01-14 19:05:32'),
(13, 'cedula', 1010110750, 'EDWIN DE JESUS NAVARRO MORELOS', 'M', 'CASTILLOGRANDE', '000', 'correo@correo.com', '2000-06-16', '', 1, '2021-01-14 19:24:30'),
(14, 'cedula', 45429962, 'JULIA BARRIOS DE FERNANDEZ', 'F', 'CENTRO', '000', 'correo@correo.com', '1956-07-31', '', 1, '2021-01-14 19:28:08'),
(15, 'cedula', 1005964517, 'CARLOS BERMUDEZ MORALES', 'M', 'CENTRO', '000', 'correo@correo.com', '2000-09-04', '', 1, '2021-01-14 19:30:35'),
(16, 'cedula', 73153420, 'EFREN RODRIGUEZ MARTELO', 'M', 'CASTILLOGRANDE', '00', 'correo@correo.com', '1972-06-11', '', 1, '2021-01-14 19:38:35'),
(17, 'cedula', 64521354, 'APOLONIA DIAZ BERRIO', 'F', 'La providencia', '00', 'correo@correo.com', '1972-10-06', '', 1, '2021-01-15 21:35:01'),
(18, 'cedula', 45693949, 'ODELIN PEREZ VILLALOBOS', 'F', 'Turbaquito', '00', 'correo@correo.com', '1978-10-02', '', 1, '2021-01-15 21:40:14'),
(19, 'cedula', 9176321, 'RAFAEL GONZALEZ OVIEDO', 'M', 'San jacinto', '00', 'correo@correo.com', '1974-12-13', '', 1, '2021-01-15 21:45:20'),
(20, 'cedula', 33159533, 'CARMEN MONTES LAGARES', 'F', 'CENTRO', '000', 'correo@correo.com', '1956-05-26', '', 1, '2021-01-15 21:49:22'),
(21, 'cedula', 33198831, 'YANETH JIMENEZ LOZANO', 'F', 'Magangué', '00', 'correo@correo.com', '1964-05-01', '', 1, '2021-01-15 21:52:00'),
(22, 'cedula', 73227143, 'PEDRO HERNANDEZ BARRIOS', 'M', 'Los alpes', '00', 'correo@correo.com', '1972-02-03', '', 1, '2021-01-15 21:53:30'),
(23, 'cedula', 33134096, 'MARIA ZARATE ARNEDO', 'F', 'Pie de la popa', '000', 'correo@correo.com', '1944-09-18', '', 1, '2021-01-15 21:55:17'),
(24, 'cedula', 54258683, 'BETTINA GONZALEZ BUENAÑOS', 'F', 'Centro', '000', 'correo@correo.com', '1972-03-03', '', 1, '2021-01-15 21:57:18'),
(25, 'cedula', 1237440569, 'MARIELA LLAMAS PATRON', 'F', 'Centro', '00000', 'correo@correo.com', '2003-01-15', '', 1, '2021-01-16 17:07:44'),
(26, 'cedula', 22808886, 'ISMENIA SALGADO CARIAGA', 'F', 'Centro', '000', 'correo@correo.com', '1980-07-13', '', 1, '2021-01-16 17:12:15'),
(27, 'cedula', 45502280, 'MONICA DEL CARMEN ALCALA JARAMILLO', 'F', 'CLLE 65|', '3008057455', 'correo@correo.com', '1972-06-25', '', 1, '2021-01-16 17:14:48'),
(28, 'cedula', 64549208, 'MABEL MONTES PARDO', 'F', 'CENTRO', '000', 'correo@correo.com', '1960-03-06', '', 1, '2021-01-16 17:16:35'),
(29, 'cedula', 1005220751, 'MARIA JOSE RIOS AVILA', 'F', 'Centro', '000', 'correo@correo.com', '2001-05-10', '', 1, '2021-01-16 17:17:43'),
(30, 'cedula', 8726447, 'IGNACIO JIMENEZ PRADA', 'M', 'Centro', '00000', 'correo@correo.com', '1962-12-09', '', 1, '2021-01-16 17:19:35'),
(31, 'cedula', 30761404, 'ALMA ROSA OROZCO BELTRAN', 'F', 'Calle del nacimiento', '000', 'correo@correo.com', '1961-03-03', '', 1, '2021-01-20 14:28:52'),
(32, 'cedula', 1044931274, 'JORWING SANCHEZ MESTRE', 'M', 'Turbaco', '000', 'correo@correo.com', '2013/12/03', '', 1, '2021-01-20 14:31:50'),
(33, 'cedula', 36505519, 'MARIA HERNANDEZ NUÑEZ', 'F', 'San fernando', '0000', 'correo@correo.com', '1978-03-03', '', 1, '2021-01-20 14:34:50'),
(34, 'tarjeta', 1049535132, 'MATIAS PEREZ RODRIGUEZ', 'M', 'ARENAL', '000', 'correo@correo.com', '2009-04-04', '', 1, '2021-01-20 14:38:49'),
(35, 'tarjeta', 1043305714, 'ADONAI HERRERA MEZA', 'M', 'Pasacaballo', '000', 'correo@correo.com', '2006-10-06', '', 1, '2021-01-20 14:46:51'),
(36, 'cedula', 1102232987, 'CINDY BLANQUICETH RANGEL', 'F', 'CENTRO', '00', 'correo@correo.com', '1996-03-03', '', 1, '2021-01-20 22:06:21'),
(37, 'cedula', 78758101, 'LUIS OQUENDO NUÑEZ', 'M', 'CENTRO', '000', 'correo@correo.com', '1976-10-26', '', 1, '2021-01-21 16:25:43'),
(38, 'cedula', 45361226, 'ROSA CABARCAS GUTIERREZ', 'F', 'Nuevo paraiso', '0000', 'correo@correo.com', '1984-05-13', '', 1, '2021-01-21 19:42:59'),
(39, 'cedula', 63299917, 'ROCIO ACEVEDO DE AGUILAR', 'F', 'Calle 28', '0000', 'correo@correo.com', '1962-02-25', '', 1, '2021-01-21 19:46:03'),
(40, 'cedula', 1007210773, 'DENISARA HERRERA HOYOS', 'F', 'Centro', '000', 'correo@correo.com', '2001-02-04', '', 1, '2021-01-21 19:49:01'),
(41, 'cedula', 45780761, 'ARIANA ZABALETA TAMARA', 'F', 'Barrio Chile', '3103698813', 'kiara_17_18@hotmail.com', '1978-01-01', '', 1, '2021-01-21 19:52:32'),
(42, 'tarjeta', 1052987206, 'SILFREDO CARPIO CASTRO', 'M', 'CENTRO', '0000', 'correo@correo.com', '2012-01-01', '', 1, '2021-01-21 19:55:00'),
(43, 'cedula', 1048442302, 'BREINER RODRIGUEZ MARTINEZ', 'M', 'Centro', '000', 'correo@correo.com', '20007/06/26', '', 1, '2021-01-21 19:57:56'),
(44, 'registro', 1044004502, 'MARIA FERNANDEZ RIOS', 'F', 'Centro', '0000', 'correo@correo.com', '2016-12-22', '', 1, '2021-01-21 20:01:28'),
(45, 'registro', 1238343460, 'MARIANYS BUSTAMANTE ORTEGA', 'F', 'CENTRO', '0000', 'correo@correo.com', '2019-05-30', '', 1, '2021-01-21 20:03:37'),
(46, 'tarjeta', 1043643506, 'OSCAR FLOREZ PINTO', 'M', 'COR', '000', 'correo@correo.com', '2005-07-28', '', 1, '2021-01-21 20:05:47'),
(47, 'registro', 1048465032, 'BELLA PEREZ OLIVARES', 'F', 'LIBANO', '0000', 'correo@correo.com', '2019-05-22', '', 1, '2021-01-21 20:07:55'),
(48, 'tarjeta', 1051884848, 'KATY LUZ MUÑOZ SOLANO', 'F', 'CENTRO', '000', 'correo@correo.com', '2004-08-29', '', 1, '2021-01-21 20:10:08'),
(49, 'registro', 1201258314, 'ZARECK ORTIZ DIAZ', 'F', 'CCE', '000', 'correo@correo.com', '2016-10-04', '', 1, '2021-01-21 20:12:10'),
(50, 'cedula', 45691883, 'MAYERLIN LEMUS LUNA', 'F', 'CE', '0000', 'correo@correo.com', '1978-11-15', '', 1, '2021-01-21 20:14:18'),
(51, 'tarjeta', 1043296355, 'KELLY PAUTT GUZMAN', 'F', 'Centro', '0000', 'correo@correo.com', '2003-11-30', '', 1, '2021-01-25 13:46:55'),
(52, 'cedula', 9113787, 'EDGAR VARGAS  ANILLO', 'M', 'CENTRO', '00000', 'correo@correo.com', '1959-08-24', '', 1, '2021-01-25 14:00:55'),
(53, 'cedula', 1043967486, 'DONIS HERAZO GARCIA', 'F', 'BICENTENARIO', '00000', 'correo@correo.com', '2005/04/28', '', 1, '2021-01-25 14:04:20'),
(54, 'cedula', 1143364483, 'SERGIO ANDRES TORRES VIVES', 'M', 'Cm', '000', 'correo@correo.com', '1993-04-05', '', 1, '2021-01-25 14:05:48'),
(55, 'cedula', 1032443267, 'MARIA BELTRAN DIAZ', 'F', 'Centro', '0000', 'correo@correo.com', '1992-03-03', '', 1, '2021-01-25 14:10:57'),
(56, 'cedula', 1047382072, 'MIRYAM MELENDEZ SANCHEZ', 'F', 'Centro', '00000', 'correo@correo.com', '1986-03-05', '', 1, '2021-01-25 14:14:15'),
(57, 'tarjeta', 1237439985, 'YOBANNA ISABEL BERRIO ALVARADO', 'F', 'CENTRO', '000', 'correo@correo.com', '2007-11-08', '', 1, '2021-01-25 14:16:28'),
(58, 'tarjeta', 1142930508, 'MOISES HERRERA DELGADO', 'M', 'CENTRO', '0000', 'correo@correo.com', '2011-01-02', '', 1, '2021-01-25 14:19:24'),
(59, 'tarjeta', 1043963645, 'NATALIA MORALES VALDES', 'F', 'CENTRO', '0000', 'correo@correo.com', '2004-09-16', '', 1, '2021-01-25 14:22:37'),
(60, 'cedula', 1051885670, 'KAREN HENRIQUEZ JIMENEZ', 'F', 'CENTRO', '000', 'correo@correo.com', '1987-08-31', '', 1, '2021-01-25 14:25:56'),
(61, 'cedula', 45468313, 'NURIS WILCHES DELGADO', 'F', 'CENTRO', '0000', 'correo@correo.com', '1967-03-03', '', 1, '2021-01-25 15:00:35'),
(62, 'cedula', 45494801, 'MEDLINA POMARE PEDROZA', 'F', 'CENTRO', '0000', 'correo@correo.com', '1971-03-03', '', 1, '2021-01-27 13:42:38'),
(63, 'cedula', 73070213, 'ARQUIMEDES JARABA GARAY', 'M', 'Mza', '3205674573', 'carmenalicia1473@gmail.com', '1956-07-04', '', 1, '2021-01-27 13:46:56'),
(64, 'cedula', 8638331, 'ALVARO RUBEN VILLAVECES REALES', 'M', 'Urb Mayor', '3008156245', 'alvarovillavecesreales@gmail.com', '1959/08/16', '', 1, '2021-01-27 13:55:58'),
(65, 'cedula', 1193371842, 'YENIFER SANDOVAL LOPEZ', 'F', 'La boquilla', '000', 'correo@correo.com13031992', '1992/03/13', '', 1, '2021-01-27 14:02:08'),
(66, 'tarjeta', 1048438520, 'NATALIA PUELLO AYCARDI', 'F', 'Olaya', '000', 'correo@correo.com', '2005-11-17', '', 1, '2021-01-27 14:06:59'),
(67, 'tarjeta', 1235039943, 'YEIKOL RODRIGUEZ MEZA', 'M', 'La candelaria', '3044362670', 'correo@correo.com', '2012-06-08', '', 1, '2021-01-27 14:11:02'),
(68, 'tarjeta', 1049829737, 'ELY CAROLINA JIMENEZ MEJIA', 'F', 'Finca Cascajo', '3043900773', 'correo@correo.com', '2012-12-10', '', 1, '2021-01-27 14:16:10'),
(69, 'tarjeta', 1049829737, 'ELY CAROLINA JIMENEZ MEJIA', 'F', 'Finca Cascajo', '3043900773', 'correo@correo.com', '2012-12-10', '', 1, '2021-01-27 14:16:49'),
(70, 'tarjeta', 1043656984, 'DANA LUCIA DORIA SIERRA', 'F', 'Zaragocilla', '3205232840', 'correo@correo.com', '2008-03-21', '', 1, '2021-01-27 14:22:11'),
(71, 'cedula', 1002423067, 'JESUS RANGEL TOLOZA', 'M', 'Urbanización Chapacua', '3225135774', 'correo@correo.com', '1992-02-08', '', 1, '2021-01-27 14:34:14'),
(72, 'cedula', 1007367992, 'ROSA LIÑAN BENITEZ', 'F', 'Olaya', '0000', 'correo@correo.com', '1994-09-07', '', 1, '2021-01-27 14:37:06'),
(73, 'cedula', 0, 'DIOHANA AVILA DORANTE', 'F', 'Nelson Mandela', '3116647551', 'correo@correo.com', '1994-04-10', '', 1, '2021-01-27 14:40:01'),
(74, 'cedula', 30894137, 'ANA ROMERO CERVANTES', 'F', 'Ternera', '000', 'correo@correo.com', '1980-03-03', '', 1, '2021-01-28 21:23:47'),
(75, 'cedula', 1052969880, 'JOSSIET LASTRE TELLEZ', 'M', 'Trans', '3059422401', 'jlastre@outlook', '1990-07-08', '', 1, '2021-01-28 21:26:39'),
(76, 'cedula', 1047466973, 'CATERINE WILCOX DIAZ', 'F', 'Torices', '0000', 'correo@correo.com', '1994-03-17', '', 1, '2021-01-28 21:31:17'),
(77, 'cedula', 52245982, 'MORAIMA TORRES VASQUEZ', 'F', 'CENTRO', '000', 'correo@correo.com', '1976-01-05', '', 1, '2021-01-28 21:34:52'),
(78, 'cedula', 26162681, 'MARGENIA BURGOS PEREZ', 'F', 'CENTRO', '000', 'correo@correo.com', '1977-12-30', '', 1, '2021-01-28 21:43:58'),
(79, 'tarjeta', 0, 'YOHANMARIS VELASQUEZ GARCIA', 'F', 'TIERRA BAJA', '3124333739', 'correo@correo.com', '2009-08-25', '', 1, '2021-01-28 21:46:42'),
(80, 'registro', 1042610839, 'JHERONIMO GOMEZ SOLANO', 'M', 'ARJONA', '000', 'correo@correo.com', '2017-12-17', '', 1, '2021-01-28 21:48:36'),
(81, 'cedula', 1143357713, 'ANDREA BOGOYA JARABA', 'F', 'Centro', '000', 'correo@correo.com', '1993-03-03', '', 1, '2021-01-28 21:54:59'),
(82, 'cedula', 1047495090, 'VALENTINA GARAVITO AREVALO', 'F', 'CENTRO', '000', 'correo@correo.com', '1997-03-03', '', 1, '2021-01-28 21:57:48'),
(83, 'cedula', 33335505, 'YOVANNA LOPEZ CAMPIÑO', 'F', 'CENTRO', '0000', 'correo@correo.com', '1996-03-03', '', 1, '2021-01-28 21:59:09'),
(84, 'cedula', 34965611, 'MANUELA BERROCAL REVUELTAS', 'F', 'CENTRO', '0000', 'correo@correo.com', '1954/03/03', '', 1, '2021-01-28 22:02:55'),
(85, 'cedula', 34976341, 'MARCELA BERROCAL REVUELTAS', 'F', 'CENTRO', '000', 'correo@correo.com', '1960-03-03', '', 1, '2021-01-28 22:02:26'),
(86, 'cedula', 9087312, 'RAFAEL CABARCAS CABARCAS', 'M', 'CLLE 4', '3008318500', 'cabarcasycabarcas@hotmail.com', '1953-12-16', '', 1, '2021-01-30 14:10:42'),
(87, 'cedula', 22810564, 'HELLEN VASQUEZ AGUILAR', 'F', 'CASTELLON DE SANTA', '000', 'hellendj@hotmail.com', '1981-01-07', '', 1, '2021-01-30 14:14:50'),
(88, 'cedula', 7919696, 'JHON RAIGOSA OSPINA', 'M', 'DG 47', '3002084224', 'jraigosaospina@gmail.com', '1978-05-13', '', 1, '2021-01-30 14:25:25'),
(89, 'registro', 1201251278, 'BRITANY BOLIVAR CONTRERAS', 'F', 'Olaya', '3217657173', 'correo@correo.com', '2015-12-03', '', 1, '2021-01-30 14:27:58'),
(90, 'tarjeta', 1201222704, 'JHORLAN MORALES REYES', 'M', 'MZA 119', '3216130927', 'correo@correo.com', '2010-08-31', '', 1, '2021-01-30 14:30:35'),
(91, 'cedula', 33146646, 'JUDITH DEL RIO DE BORRE', 'F', 'Centro', '3044562512', 'correo@correo.com', '1953-01-07', '', 1, '2021-01-30 14:33:43'),
(92, 'cedula', 45456699, 'ESTER VILLANUEVA ROJAS', 'F', 'Centro', '3046260097', 'correo@correo.com', '1962-01-07', '', 1, '2021-01-30 14:37:02'),
(93, 'cedula', 45469657, 'CARMEN ALVAREZ CHICO', 'F', 'Centro', '3023208970', 'correo@correo.com', '1962-01-07', '', 1, '2021-01-30 14:39:35'),
(94, 'cedula', 73569827, 'ANA CARDENAS DE BALCEIRO', 'F', 'Cntro', '3103670912', 'cwltda@hotmail.com', '1955-01-07', '', 1, '2021-01-30 14:42:21'),
(95, 'cedula', 45480372, 'SANDRA VERBEL MARTINEZ', 'F', 'Centro', '3043775976', 'suerbelmartinez@hotmail.com', '1968-01-07', '', 1, '2021-01-30 14:44:48'),
(96, 'cedula', 33129451, 'MARIA CONTRERAS MORENO', 'F', 'CENTRO', '3106154879', 'correo@correo.com', '1950-01-07', '', 1, '2021-01-30 15:00:26'),
(97, 'cedula', 73100117, 'MARCO MARZAN MANZUR', 'M', 'CLLE 6', '3162951186', 'marcomarzanm@gmail.com', '1962-05-15', '', 1, '2021-01-30 15:03:09'),
(98, 'tarjeta', 1127655792, 'EDUARDO ARIAS RANGEL', 'M', 'Portales de alicante', '3059368966', 'correo@correo.com', '2003-09-11', '', 1, '2021-01-30 15:05:02'),
(99, 'cedula', 2147483647, 'CATALINA AVILA CARRASCAL', 'F', 'Centro', '000', 'correo@correo.com', '2001-02-02', '', 1, '2021-02-01 13:42:11'),
(100, 'cedula', 1143351044, 'PAOLA DE ARCO OROZCO', 'F', 'Centro', '00000', 'correo@correo.com', '1992-02-02', '', 1, '2021-02-01 13:43:31'),
(101, 'cedula', 45477400, 'LEIDA PERNETT CARDENAS', 'F', 'Centro', '0000', 'correo@correo.com', '1968-02-02', '', 1, '2021-02-01 13:44:42'),
(102, 'cedula', 1193561475, 'VANESSA VALDERRAMA PERNETT', 'F', 'Centro', '00000', 'correo@correo.com', '2021-02-02', '', 1, '2021-02-01 13:46:09'),
(103, 'cedula', 33152492, 'ISOLINA VISBAL DE PUELLO', 'F', 'CENTRO', '000', 'correo@correo.com', '1954-02-02', '', 1, '2021-02-01 13:47:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patologo`
--

CREATE TABLE `patologo` (
  `id` int(11) NOT NULL,
  `patologo` varchar(100) NOT NULL,
  `num_doc` varchar(11) NOT NULL,
  `reg_med` varchar(5) NOT NULL,
  `reg_med_ciudad` varchar(15) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `telefono` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `patologo`
--

INSERT INTO `patologo` (`id`, `patologo`, `num_doc`, `reg_med`, `reg_med_ciudad`, `direccion`, `telefono`, `email`) VALUES
(1, 'JOSÉ CARABALLO GRACIA', '9062729', '26368', 'Cartagena', 'Cabrero', '6601351', 'josecaraballo@medipat.com.co'),
(2, 'RAFAEL MESTRE YÚNEZ', '3793803', '849', 'Cartagena', 'CENTRO', '6601351', 'rmestrey@hotmail.com'),
(3, 'OLIVA MARRUGO GRICE', '33155143', '976', 'Cartagena', 'Centro', '6601351', 'olivamarrugo@gmail.com'),
(4, 'ANA MAGOLA MANGA CEDEÑO', '33158611', '659', 'Cartagena', 'Manga', '6601351', 'anamisabel@yahoo.es'),
(5, 'GUILLERMO ROVIRA ROSALES', '9051647', '430', 'Cartagena', 'Castillogrande', '6601351', 'guiroro42@gmail.com'),
(6, 'VIRNA CARABALLO OSORIO', '45505029', '23818', 'Cartagena', 'Manga', '6601351', 'virnacaraballo@yahoo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secuenciainforme`
--

CREATE TABLE `secuenciainforme` (
  `id` int(11) NOT NULL,
  `ultQ` int(5) NOT NULL,
  `ultC` int(5) NOT NULL,
  `ultL` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `secuenciainforme`
--

INSERT INTO `secuenciainforme` (`id`, `ultQ`, `ultC`, `ultL`) VALUES
(1, 1629, 144, 71);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('l-eGk5684vUT5ouTntmyNXT95ms75Cet', 1612273673, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"passport\":{\"user\":1}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(60) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `email`) VALUES
(1, 'admin', '$2a$10$WiYc72QXOCtUZi9d.klSJu8dyeLuigNhLMZFP6iEvk9lmBCsCkQ2G', 'Administrador', 'administracion@medipat.com.co');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entidad`
--
ALTER TABLE `entidad`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `eps`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `informe`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `informec`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `medremitente`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id`),

ALTER TABLE `patologo`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `secuenciainforme`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entidad`
--
ALTER TABLE `entidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE `eps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE `informe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

ALTER TABLE `informec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

ALTER TABLE `medremitente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `paciente` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

ALTER TABLE `patologo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `secuenciainforme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `paciente_fk0` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

--
-- Volcado de datos para la tabla `pma__central_columns`
--

INSERT INTO `pma__central_columns` (`db_name`, `col_name`, `col_type`, `col_length`, `col_collation`, `col_isNull`, `col_extra`, `col_default`) VALUES
('adminpatdb', 'diagnostico', 'text', '', 'utf8mb4_general_ci', 1, ',', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Volcado de datos para la tabla `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'adminpatdb', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"adminpatdb\",\"phpmyadmin\",\"temp\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'database', 'Medipat', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"entidad\",\"eps\",\"informe\",\"informec\",\"medremitente\",\"paciente\",\"patologo\",\"secuenciainforme\",\"sessions\",\"users\"],\"table_structure[]\":[\"entidad\",\"eps\",\"informe\",\"informec\",\"medremitente\",\"paciente\",\"patologo\",\"secuenciainforme\",\"sessions\",\"users\"],\"table_data[]\":[\"entidad\",\"eps\",\"informe\",\"informec\",\"medremitente\",\"paciente\",\"patologo\",\"secuenciainforme\",\"sessions\",\"users\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"adminpatdb\",\"table\":\"informe\"},{\"db\":\"adminpatdb\",\"table\":\"secuenciainforme\"},{\"db\":\"mysql\",\"table\":\"plugin\"},{\"db\":\"mysql\",\"table\":\"global_priv\"},{\"db\":\"mysql\",\"table\":\"general_log\"},{\"db\":\"mysql\",\"table\":\"db\"},{\"db\":\"mysql\",\"table\":\"servers\"},{\"db\":\"mysql\",\"table\":\"tables_priv\"},{\"db\":\"mysql\",\"table\":\"columns_priv\"},{\"db\":\"adminpatdb\",\"table\":\"medremitente\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'adminpatdb', 'informe', '{\"sorted_col\":\"`informe`.`informe_cod` ASC\"}', '2021-01-29 15:40:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-02-01 15:02:27', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"ThemeDefault\":\"pmahomme\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `temp`
--
CREATE DATABASE IF NOT EXISTS `temp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `temp`;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
