-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-01-2021 a las 21:58:08
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
(15, '90000', 'PARTICULAR', 'Centro', '000', 'correo@correo.com');

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
(15, '9000', 'C.', 'Centro', '0000', 'correo@correo.com');

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
(33, 'Q2101-1573', 'Q', '36505519', 'MARIA HERNANDEZ NUÑEZ', '0000', 'F', '1978/03/03', 'ORG. CLINICA GENERAL DEL NORTE', '0', 'Doctor LUIS JAVIER ALZAMORA TABORDA', NULL, '2021-01-15', '2021-01-15', 'GUILLERMO ROVIRA ROSALES', 'Rotulado \"Biopsia de exocervix\" se recibe un fragmento de tejido de color blanquecino y consistencia elástica que mide 0.6 cms. Se toma todo', '', '', '', ''),
(34, 'Q2101-1574', 'Q', '1049535132', 'MATIAS PEREZ RODRIGUEZ', '000', 'M', '2009/04/04', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctor LUIS MORENO BALLESTEROS', NULL, '2021-01-15', '2021-01-15', 'GUILLERMO ROVIRA ROSALES', 'Rotulado \"Apéndice\" se recibe un apéndice cecal que mide 9 x 1.5 cms. La pared esta recubierta por material seropurulento. Al corte la pared esta engrosada y el lumen contiene material fecal solidificada. Se toman cortes', '', '', '', ''),
(35, 'Q2101-1575', 'Q', '1043305714', 'ADONAI HERRERA MEZA', '000', 'M', '2006/10/06', 'HOSP. INF. NAPOLEON FRANCO PAREJA', '0', 'Doctora NELLYS RODRIGUEZ ZULETA', NULL, '2021-01-15', '2021-01-15', 'GUILLERMO ROVIRA ROSALES', 'Rotulado \"Masa en fosa nasal izquierda\" se recibe una masa de tejido de color blanquecino, negruzca y pardo claro que mide 2 x 1.5 x 1 cms. Al corte tres formaciones quisticas que contienen un material negruzco, la mayor mide 1 cm. y l amenor de 0.4 cms. Se toman cortes', '', '', '', '');

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
(1, 'C2101-130', 'C', '45429962', 'JULIA BARRIOS DE FERNANDEZ', '', 'F', '1956/07/31', 'ASEGURADORA DE VIDA SURAMERICANA S.A', 'SEGUROS DE VIDA SURAMERICANA S.A', '', '2021-01-01', '2021-01-01', '2021-01-01', 'ANA MAGOLA MANGA CEDEÑO', 0, '', 1, 'on', NULL, NULL, NULL, 'on', NULL, 'on', 'on', NULL, NULL, NULL, NULL, NULL, 'on', 'on', NULL, NULL, 'on', NULL, 'on', 'on', 'on', NULL, NULL, NULL, NULL, NULL, 'on', NULL, NULL, NULL, NULL, NULL, '');

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
(35, 'tarjeta', 1043305714, 'ADONAI HERRERA MEZA', 'M', 'Pasacaballo', '000', 'correo@correo.com', '2006-10-06', '', 1, '2021-01-20 14:46:51');

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
(1, 'JOSÉ CARABALLO GRACIA', '9062729', '0411', 'Cartagena', 'Cabrero', '6601351', 'josecaraballo@medipat.com.co'),
(2, 'RAFAEL MESTRE YÚNEZ', '3793803', '849', 'Cartagena', 'CENTRO', '6601351', 'rmestrey@hotmail.com'),
(3, 'OLIVA MARRUGO GRICE', '33155143', '976', 'Cartagena', 'Centro', '6601351', 'olivamarrugo@gmail.com'),
(4, 'ANA MAGOLA MANGA CEDEÑO', '33158611', '659', 'Cartagena', 'Manga', '6601351', 'anamisabel@yahoo.es'),
(5, 'GUILLERMO ROVIRA ROSALES', '9051647', '430', 'Cartagena', 'Castillogrande', '6601351', 'guiroro42@gmail.com'),
(6, 'VIRNA CARABALLO OSORIO', '45505029', '2813', 'Cartagena', 'Manga', '6601351', 'virnacaraballo@yahoo.com');

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
(1, 1575, 130, 69);

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
('0aCj3aMFhyfkmdvOdE02GGfxIHr-quQt', 1611262597, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"passport\":{\"user\":1}}'),
('LgL_rP3tXz2UsSPIqZLnGPmrSk2d7Xjo', 1611262146, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"passport\":{\"user\":1}}');

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

--
-- Indices de la tabla `eps`
--
ALTER TABLE `eps`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `informe`
--
ALTER TABLE `informe`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `informec`
--
ALTER TABLE `informec`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medremitente`
--
ALTER TABLE `medremitente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paciente_fk0` (`user_id`);

--
-- Indices de la tabla `patologo`
--
ALTER TABLE `patologo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `secuenciainforme`
--
ALTER TABLE `secuenciainforme`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entidad`
--
ALTER TABLE `entidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `eps`
--
ALTER TABLE `eps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `informe`
--
ALTER TABLE `informe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `informec`
--
ALTER TABLE `informec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `medremitente`
--
ALTER TABLE `medremitente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `patologo`
--
ALTER TABLE `patologo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `secuenciainforme`
--
ALTER TABLE `secuenciainforme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
