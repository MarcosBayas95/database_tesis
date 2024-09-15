-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: blyjpf4f1z3sqpoh8zub-mysql.services.clever-cloud.com:3306
-- Tiempo de generación: 14-08-2024 a las 04:05:34
-- Versión del servidor: 8.0.22-13
-- Versión de PHP: 8.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_tesis`
--

CREATE DATABASE IF NOT EXISTS `proyecto_tesis` DEFAULT CHARACTER SET utf8;
USE `proyecto_tesis`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `analisis`
--

CREATE TABLE `analisis` (
  `id_analisis` int NOT NULL,
  `analisis` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_especialidad` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `analisis`
--

INSERT INTO `analisis` (`id_analisis`, `analisis`, `fecha`, `id_especialidad`) VALUES
(28, 'Hemograma Completo', '2024-07-12 05:32:26', 9),
(29, 'Extracción Molar', '2024-07-18 02:50:59', 10),
(30, 'Prueba VIH', '2024-07-18 03:25:23', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria`
--

CREATE TABLE `auditoria` (
  `id` int NOT NULL,
  `usuario_nombre` varchar(255) DEFAULT NULL,
  `ip_usuario` varchar(45) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auditoria`
--

INSERT INTO `auditoria` (`id`, `usuario_nombre`, `ip_usuario`, `fecha`, `accion`) VALUES
(29761, 'Maybeth Jimenes', '157.100.112.220', '2024-08-11 16:48:36', 'Eliminó Paciente con cédula: 0998516557'),
(29762, 'Maybeth Jimenes', '157.100.112.220', '2024-08-11 16:48:45', 'Eliminó Paciente con cédula: 0877451448'),
(29763, 'Administrador', '157.100.112.220', '2024-08-11 16:52:29', 'Eliminó Paciente con cédula: 0945678901'),
(29764, 'Administrador', '157.100.112.220', '2024-08-11 16:53:02', 'Editó Usuario con cédula: 2150337331'),
(29765, 'Administrador', '157.100.112.220', '2024-08-11 16:53:51', 'Editó Usuario con cédula: 0931116255'),
(29766, 'Administrador', '157.100.112.220', '2024-08-11 16:54:50', 'Editó Usuario con cédula: 0912345678'),
(29767, 'Administrador', '157.100.112.220', '2024-08-11 16:55:26', 'Editó Usuario con cédula: 0931116255'),
(29768, 'Administrador', '157.100.112.220', '2024-08-11 16:56:01', 'Editó Usuario con cédula: 0912345678'),
(29769, 'Administrador', '157.100.112.220', '2024-08-11 16:56:19', 'Editó Usuario con cédula: 2150337331'),
(29770, 'Administrador', '157.100.112.220', '2024-08-11 16:56:38', 'Editó Paciente con cédula: 0884924882'),
(29771, 'Administrador', '157.100.112.220', '2024-08-11 16:56:53', 'Eliminó Médico con cédula: 0994327991'),
(29772, 'Administrador', '157.100.112.220', '2024-08-11 16:59:10', 'Editó Análisis: Extracción Molar'),
(29773, 'Administrador', '157.100.112.220', '2024-08-11 16:59:42', 'Editó Análisis: Hemograma Completo'),
(29774, 'Administrador', '157.100.112.220', '2024-08-11 17:00:01', 'Editó Examen: Electrocardiograma'),
(29775, 'Administrador', '157.100.112.220', '2024-08-11 17:01:07', 'Editó Análisis: Hemograma Completo'),
(29776, 'Administrador', '181.199.60.160', '2024-08-13 02:28:27', 'Creó Usuario con cédula: 0951142520'),
(29777, 'Administrador', '181.199.60.160', '2024-08-13 02:29:03', 'Eliminó usuario con cédula: 0951142520'),
(29778, 'Administrador', '157.100.112.220', '2024-08-14 03:22:28', 'Editó Paciente con cédula: 2150337331'),
(29779, 'Administrador', '157.100.112.220', '2024-08-14 03:23:14', 'Eliminó Paciente con cédula: 0912345678'),
(29780, 'Administrador', '157.100.112.220', '2024-08-14 03:23:20', 'Eliminó Paciente con cédula: 2150337331'),
(29781, 'Administrador', '157.100.112.220', '2024-08-14 03:23:25', 'Eliminó Paciente con cédula: 0985521478'),
(29782, 'Administrador', '157.100.112.220', '2024-08-14 03:23:34', 'Eliminó Médico con cédula: 0992578446'),
(29783, 'Administrador', '157.100.112.220', '2024-08-14 03:23:55', 'Editó Médico con cédula: 0992578445'),
(29784, 'Administrador', '157.100.112.220', '2024-08-14 03:27:09', 'Eliminó usuario con cédula: 0931116255'),
(29785, 'Administrador', '157.100.112.220', '2024-08-14 03:30:48', 'Creó Médico con cédula: 095587668'),
(29786, 'Administrador', '157.100.112.220', '2024-08-14 03:32:41', 'Editó Examen: Examen de Sangre'),
(29787, 'Administrador', '157.100.112.220', '2024-08-14 03:34:13', 'Editó Rol: Administrador'),
(29788, 'Administrador', '157.100.112.220', '2024-08-14 03:34:37', 'Editó Rol: Administrador'),
(29789, 'Administrador', '157.100.112.220', '2024-08-14 03:36:04', 'Editó Rol: Administrador'),
(29790, 'Administrador', '157.100.112.220', '2024-08-14 03:41:49', 'Editó Médico con cédula: 0992578445');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `id_especialidad` int NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`id_especialidad`, `nombre`) VALUES
(9, 'Medicina General'),
(10, 'Odontologia'),
(11, 'Cardiologia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examenes`
--

CREATE TABLE `examenes` (
  `id_examen` int NOT NULL,
  `id_analisis` int NOT NULL,
  `examen` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `examenes`
--

INSERT INTO `examenes` (`id_examen`, `id_analisis`, `examen`, `fecha`) VALUES
(28, 28, 'Electrocardiograma', '2024-07-12 05:32:39'),
(29, 29, 'Examen de Rayos X a la Mandibula', '2024-07-18 02:51:26'),
(36, 30, 'Examen de Sangre', '2024-07-28 21:47:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_detalle`
--

CREATE TABLE `examen_detalle` (
  `id_detalle` int NOT NULL,
  `id_examen` int DEFAULT NULL,
  `detalle` varchar(255) DEFAULT NULL,
  `unidad` varchar(50) DEFAULT NULL,
  `valor_referencia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `examen_detalle`
--

INSERT INTO `examen_detalle` (`id_detalle`, `id_examen`, `detalle`, `unidad`, `valor_referencia`) VALUES
(1, 29, 'Glóbulos Blancos', '10³/µL', '4.5 - 10'),
(2, 28, 'Neutrófilos (%)', '%', '40 - 70'),
(3, 29, 'Linfocitos (%)', '%', '20 - 40'),
(4, 29, 'Glucosa', 'mg/dL', '70 - 100'),
(5, 29, 'Creatinina', 'mg/dL', '0.6 - 1.3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

CREATE TABLE `medico` (
  `id_medico` int NOT NULL,
  `cedula` varchar(15) NOT NULL,
  `nombre_apellido` varchar(255) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `id_especialidad` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medico`
--

INSERT INTO `medico` (`id_medico`, `cedula`, `nombre_apellido`, `celular`, `direccion`, `id_especialidad`) VALUES
(7, '0992578445', 'Dr. Joel Mendez', '0993247881', 'Mucho Lote Mz 2581 Villa 11', 9),
(11, '095587668', 'Dra. Carmen Guerrero Solano', '0998748557', 'Alamos Norte Mz 14 Solar 10 villa 45', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id_paciente` int NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `paciente` varchar(100) NOT NULL,
  `edad` int NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `fecha_de_ingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id_paciente`, `cedula`, `paciente`, `edad`, `sexo`, `celular`, `fecha_de_ingreso`) VALUES
(11, '0992578445', 'Ana Martinez Gonzalez', 35, 'Femenino', '0993247881', '2024-07-08 01:05:32'),
(18, '0952462372', 'Samantha Bajaña', 18, 'Femenino', '09845417471', '2024-08-08 04:22:17'),
(4710, '0954876662', 'Martin Guevara', 36, 'Masculino', '0965432105', '2024-08-10 23:36:00'),
(4712, '0912345678', 'Juan Perez', 30, 'Masculino', '0998765432', '2024-06-01 00:00:00'),
(4713, '0923456789', 'Maria Lopez', 45, 'Femenino', '0987654321', '2024-06-02 00:00:00'),
(4714, '0934567890', 'Carlos Ruiz', 50, 'Masculino', '0976543210', '2024-06-03 00:00:00'),
(4715, '0945678901', 'Ana Morales', 28, 'Femenino', '0965432109', '2024-06-04 00:00:00'),
(4716, '0956789012', 'Pedro Gomez', 38, 'Masculino', '0954321098', '2024-06-05 00:00:00'),
(4717, '0969890123', 'Laura Fernandez', 32, 'Femenino', '0943210987', '2024-06-06 00:00:00'),
(4718, '0978901234', 'Luis Ramirez', 40, 'Masculino', '0932109876', '2024-06-07 00:00:00'),
(4719, '0989012345', 'Claudia Castillo', 29, 'Femenino', '0921098765', '2024-06-08 00:00:00'),
(4720, '0990123456', 'Jorge Vargas', 55, 'Masculino', '0910987654', '2024-06-09 00:00:00'),
(4721, '1001234567', 'Isabel Sanchez', 42, 'Femenino', '0909876543', '2024-06-10 00:00:00'),
(4722, '2012345678', 'Eduardo Silva', 36, 'Masculino', '0898765432', '2024-06-11 00:00:00'),
(4723, '1023456789', 'Beatriz Ortega', 48, 'Femenino', '0887654321', '2024-06-12 00:00:00'),
(4724, '0934567890', 'Ricardo Martinez', 33, 'Masculino', '0876543210', '2024-06-13 00:00:00'),
(4725, '0945678581', 'Sofia Torres', 27, 'Femenino', '0865432109', '2024-06-14 00:00:00'),
(4726, '0956789012', 'Fernando Morales', 60, 'Masculino', '0854321098', '2024-06-15 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id_permiso` int NOT NULL,
  `nombre_permiso` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id_permiso`, `nombre_permiso`, `descripcion`, `categoria`) VALUES
(1, 'Crear usuarios', 'Permite crear nuevos usuarios', 'Usuarios'),
(2, 'Editar usuarios', 'Permite editar información de usuarios', 'Usuarios'),
(3, 'Eliminar usuarios', 'Permite eliminar  usuarios', 'Usuarios'),
(4, 'Crear Roles', 'Permite crear Roles', 'Roles'),
(5, 'Editar Roles', 'Permite editar Roles', 'Roles'),
(6, 'Eliminar Roles', 'Permite eliminar Roles', 'Roles'),
(7, 'Editar Contraseña', 'Permite editar contraseña de usuarios', 'Usuarios'),
(8, 'Ver Usuarios', 'Permite ver los usuarios registrados', 'Usuarios'),
(9, 'Ver Auditoria', 'Permite ver las acciones que el usuario ha realizado', 'Auditoria'),
(10, 'Ver Roles', 'Permite ver los roles', 'Roles'),
(12, 'Registrar Pacientes', 'Permite registrar los datos de los pacientes', 'Pacientes'),
(13, 'Registrar Medico', 'Permite registrar nuevos medicos', 'Medico'),
(14, 'Generar Orden de Examenes', 'Permite Generar Orden de examenes', 'Realizar Examenes'),
(19, 'Registrar Analisis', 'Permite Registrar Análisis', 'Analisis'),
(20, 'Registrar Examenes', 'Permite Registrar Examenes', 'Examenes'),
(22, 'Registrar Especialidades', 'Permite Registrar Especialidades', 'Especialidad'),
(24, 'Detalles de Examenes', 'Permite Crear Nuevos Detalles de examenes', 'Examen Detalles'),
(25, 'Resultados de Examen', 'Permite ver los Resultados de los examenes registrados', 'Resultados de Examen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `realizar_examen`
--

CREATE TABLE `realizar_examen` (
  `id_realizar` int NOT NULL,
  `id_paciente` int NOT NULL,
  `id_medico` int NOT NULL,
  `id_examen` int NOT NULL,
  `id_analisis` int NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `realizar_examen`
--

INSERT INTO `realizar_examen` (`id_realizar`, `id_paciente`, `id_medico`, `id_examen`, `id_analisis`, `fecha`) VALUES
(729, 11, 7, 28, 28, '2024-08-14 03:32:03'),
(730, 18, 11, 29, 29, '2024-08-14 03:42:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado`
--

CREATE TABLE `resultado` (
  `id_resultado` int NOT NULL,
  `resultado` longblob,
  `id_realizar` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resultado`
--

INSERT INTO `resultado` (`id_resultado`, `resultado`, `id_realizar`) VALUES
(34, 0x255044462d312e330a25badface00a332030206f626a0a3c3c2f54797065202f506167650a2f506172656e742031203020520a2f5265736f75726365732032203020520a2f4d65646961426f78205b302030203539352e32373939393939393939393939373237203834312e383839393939393939393939393836345d0a2f436f6e74656e74732034203020520a3e3e0a656e646f626a0a342030206f626a0a3c3c0a2f4c656e67746820333632340a3e3e0a73747265616d0a302e3536373030303030303030303030303120770a3020470a42540a2f46312031322054660a31332e3739393939393939393939393939383920544c0a3020670a35362e36393239313333383538323637373735203738352e313937303836363134313733323538362054640a285265706f727465206465205573756172696f732920546a0a45540a302e20470a302e3536373030303030303030303030303120770a302e20470a302e3536373030303030303030303030303120770a302e313620302e3520302e37332072670a302e373820470a302e20770a302e313620302e3520302e37332072670a34302e203830312e38383939393939393939393939383634203133352e33313930323730323730323730333332202d32312e343939393939393939393939393936342072650a660a42540a2f46322031302054660a31312e3520544c0a312e20670a34352e203738382e333839393939393939393939393836342054640a284e6f6d6272652920546a0a45540a302e313620302e3520302e37332072670a302e373820470a302e20770a302e313620302e3520302e37332072670a3137352e33313930323730323730323730333332203830312e383839393939393939393939393836342037352e34333531333531333531333531323639202d32312e343939393939393939393939393936342072650a660a42540a2f46322031302054660a31312e3520544c0a312e20670a3138302e33313930323730323730323730333332203738382e333839393939393939393939393836342054640a2843e964756c612920546a0a45540a302e313620302e3520302e37332072670a302e373820470a302e20770a302e313620302e3520302e37332072670a3235302e37353431363231363231363231343539203830312e38383939393939393939393939383634203138322e30383838313038313038313037393836202d32312e343939393939393939393939393936342072650a660a42540a2f46322031302054660a31312e3520544c0a312e20670a3235352e37353431363231363231363231343539203738382e333839393939393939393939393836342054640a28436f7272656f20456c65637472f36e69636f2920546a0a45540a302e313620302e3520302e37332072670a302e373820470a302e20770a302e313620302e3520302e37332072670a3433322e38343239373239373239373239313631203830312e38383939393939393939393939383634203132322e34333730323730323730323639393938202d32312e343939393939393939393939393936342072650a660a42540a2f46322031302054660a31312e3520544c0a312e20670a3433372e38343239373239373239373239313631203738382e333839393939393939393939393836342054640a28526f6c2920546a0a45540a302e20470a302e3536373030303030303030303030303120770a302e393620670a302e373820470a302e20770a302e393620670a34302e203738302e33383939393939393939393939383634203133352e33313930323730323730323730333332202d32312e343939393939393939393939393936342072650a660a42540a2f46312031302054660a31312e3520544c0a302e33313420670a34352e203736362e383839393939393939393939393836342054640a284d6172636f7320426179617320457370696e6f7a612920546a0a45540a302e393620670a302e373820470a302e20770a302e393620670a3137352e33313930323730323730323730333332203738302e333839393939393939393939393836342037352e34333531333531333531333531323639202d32312e343939393939393939393939393936342072650a660a42540a2f46312031302054660a31312e3520544c0a302e33313420670a3138302e33313930323730323730323730333332203736362e383839393939393939393939393836342054640a28303933313131363235352920546a0a45540a302e393620670a302e373820470a302e20770a302e393620670a3235302e37353431363231363231363231343539203738302e33383939393939393939393939383634203138322e30383838313038313038313037393836202d32312e343939393939393939393939393936342072650a660a42540a2f46312031302054660a31312e3520544c0a302e33313420670a3235352e37353431363231363231363231343539203736362e383839393939393939393939393836342054640a2864617669646261796173393540686f746d61696c2e636f6d2920546a0a45540a302e393620670a302e373820470a302e20770a302e393620670a3433322e38343239373239373239373239313631203738302e33383939393939393939393939383634203132322e34333730323730323730323639393938202d32312e343939393939393939393939393936342072650a660a42540a2f46312031302054660a31312e3520544c0a302e33313420670a3433372e38343239373239373239373239313631203736362e383839393939393939393939393836342054640a284d656469636f202d204c61626f7261746f72696f2920546a0a45540a312e20670a302e373820470a302e20770a312e20670a34302e203735382e38383939393939393939393939383634203133352e33313930323730323730323730333332202d32312e343939393939393939393939393936342072650a660a42540a2f46312031302054660a31312e3520544c0a302e33313420670a34352e203734352e333839393939393939393939393836342054640a28416c7661726f20436869726967756179612920546a0a45540a312e20670a302e373820470a302e20770a312e20670a3137352e33313930323730323730323730333332203735382e383839393939393939393939393836342037352e34333531333531333531333531323639202d32312e343939393939393939393939393936342072650a660a42540a2f46312031302054660a31312e3520544c0a302e33313420670a3138302e33313930323730323730323730333332203734352e333839393939393939393939393836342054640a28303935323531373636352920546a0a45540a312e20670a302e373820470a302e20770a312e20670a3235302e37353431363231363231363231343539203735382e38383939393939393939393939383634203138322e30383838313038313038313037393836202d32312e343939393939393939393939393936342072650a660a42540a2f46312031302054660a31312e3520544c0a302e33313420670a3235352e37353431363231363231363231343539203734352e333839393939393939393939393836342054640a28616c7661726f63686972696775617961303040686f746d61696c2e636f6d2920546a0a45540a312e20670a302e373820470a302e20770a312e20670a3433322e38343239373239373239373239313631203735382e38383939393939393939393939383634203132322e34333730323730323730323639393938202d32312e343939393939393939393939393936342072650a660a42540a2f46312031302054660a31312e3520544c0a302e33313420670a3433372e38343239373239373239373239313631203734352e333839393939393939393939393836342054640a284178756c6961722041646d696e69737472617469766f2920546a0a45540a302e393620670a302e373820470a302e20770a302e393620670a34302e203733372e33393030303030303030303031203133352e33313930323730323730323730333332202d32312e343939393939393939393939393936342072650a660a42540a2f46312031302054660a31312e3520544c0a302e33313420670a34352e203732332e383839393939393939393939393836342054640a284d617962657468204a696d656e657a2920546a0a45540a302e393620670a302e373820470a302e20770a302e393620670a3137352e33313930323730323730323730333332203733372e333930303030303030303030312037352e34333531333531333531333531323639202d32312e343939393939393939393939393936342072650a660a42540a2f46312031302054660a31312e3520544c0a302e33313420670a3138302e33313930323730323730323730333332203732332e383839393939393939393939393836342054640a28323135303333373333312920546a0a45540a302e393620670a302e373820470a302e20770a302e393620670a3235302e37353431363231363231363231343539203733372e33393030303030303030303031203138322e30383838313038313038313037393836202d32312e343939393939393939393939393936342072650a660a42540a2f46312031302054660a31312e3520544c0a302e33313420670a3235352e37353431363231363231363231343539203732332e383839393939393939393939393836342054640a286d6261796173406173736973742e636f6d2e75792920546a0a45540a302e393620670a302e373820470a302e20770a302e393620670a3433322e38343239373239373239373239313631203733372e33393030303030303030303031203132322e34333730323730323730323639393938202d32312e343939393939393939393939393936342072650a660a42540a2f46312031302054660a31312e3520544c0a302e33313420670a3433372e38343239373239373239373239313631203732332e383839393939393939393939393836342054640a284d656469636f202d204c61626f7261746f72696f2920546a0a45540a302e20470a302e3536373030303030303030303030303120770a302e373820470a302e20770a302e20470a302e3536373030303030303030303030303120770a302e20470a302e3536373030303030303030303030303120770a656e6473747265616d0a656e646f626a0a312030206f626a0a3c3c2f54797065202f50616765730a2f4b696473205b3320302052205d0a2f436f756e7420310a3e3e0a656e646f626a0a352030206f626a0a3c3c0a2f54797065202f466f6e740a2f42617365466f6e74202f48656c7665746963610a2f53756274797065202f54797065310a2f456e636f64696e67202f57696e416e7369456e636f64696e670a2f4669727374436861722033320a2f4c61737443686172203235350a3e3e0a656e646f626a0a362030206f626a0a3c3c0a2f54797065202f466f6e740a2f42617365466f6e74202f48656c7665746963612d426f6c640a2f53756274797065202f54797065310a2f456e636f64696e67202f57696e416e7369456e636f64696e670a2f4669727374436861722033320a2f4c61737443686172203235350a3e3e0a656e646f626a0a372030206f626a0a3c3c0a2f54797065202f466f6e740a2f42617365466f6e74202f48656c7665746963612d4f626c697175650a2f53756274797065202f54797065310a2f456e636f64696e67202f57696e416e7369456e636f64696e670a2f4669727374436861722033320a2f4c61737443686172203235350a3e3e0a656e646f626a0a382030206f626a0a3c3c0a2f54797065202f466f6e740a2f42617365466f6e74202f48656c7665746963612d426f6c644f626c697175650a2f53756274797065202f54797065310a2f456e636f64696e67202f57696e416e7369456e636f64696e670a2f4669727374436861722033320a2f4c61737443686172203235350a3e3e0a656e646f626a0a392030206f626a0a3c3c0a2f54797065202f466f6e740a2f42617365466f6e74202f436f75726965720a2f53756274797065202f54797065310a2f456e636f64696e67202f57696e416e7369456e636f64696e670a2f4669727374436861722033320a2f4c61737443686172203235350a3e3e0a656e646f626a0a31302030206f626a0a3c3c0a2f54797065202f466f6e740a2f42617365466f6e74202f436f75726965722d426f6c640a2f53756274797065202f54797065310a2f456e636f64696e67202f57696e416e7369456e636f64696e670a2f4669727374436861722033320a2f4c61737443686172203235350a3e3e0a656e646f626a0a31312030206f626a0a3c3c0a2f54797065202f466f6e740a2f42617365466f6e74202f436f75726965722d4f626c697175650a2f53756274797065202f54797065310a2f456e636f64696e67202f57696e416e7369456e636f64696e670a2f4669727374436861722033320a2f4c61737443686172203235350a3e3e0a656e646f626a0a31322030206f626a0a3c3c0a2f54797065202f466f6e740a2f42617365466f6e74202f436f75726965722d426f6c644f626c697175650a2f53756274797065202f54797065310a2f456e636f64696e67202f57696e416e7369456e636f64696e670a2f4669727374436861722033320a2f4c61737443686172203235350a3e3e0a656e646f626a0a31332030206f626a0a3c3c0a2f54797065202f466f6e740a2f42617365466f6e74202f54696d65732d526f6d616e0a2f53756274797065202f54797065310a2f456e636f64696e67202f57696e416e7369456e636f64696e670a2f4669727374436861722033320a2f4c61737443686172203235350a3e3e0a656e646f626a0a31342030206f626a0a3c3c0a2f54797065202f466f6e740a2f42617365466f6e74202f54696d65732d426f6c640a2f53756274797065202f54797065310a2f456e636f64696e67202f57696e416e7369456e636f64696e670a2f4669727374436861722033320a2f4c61737443686172203235350a3e3e0a656e646f626a0a31352030206f626a0a3c3c0a2f54797065202f466f6e740a2f42617365466f6e74202f54696d65732d4974616c69630a2f53756274797065202f54797065310a2f456e636f64696e67202f57696e416e7369456e636f64696e670a2f4669727374436861722033320a2f4c61737443686172203235350a3e3e0a656e646f626a0a31362030206f626a0a3c3c0a2f54797065202f466f6e740a2f42617365466f6e74202f54696d65732d426f6c644974616c69630a2f53756274797065202f54797065310a2f456e636f64696e67202f57696e416e7369456e636f64696e670a2f4669727374436861722033320a2f4c61737443686172203235350a3e3e0a656e646f626a0a31372030206f626a0a3c3c0a2f54797065202f466f6e740a2f42617365466f6e74202f5a61706644696e67626174730a2f53756274797065202f54797065310a2f4669727374436861722033320a2f4c61737443686172203235350a3e3e0a656e646f626a0a31382030206f626a0a3c3c0a2f54797065202f466f6e740a2f42617365466f6e74202f53796d626f6c0a2f53756274797065202f54797065310a2f4669727374436861722033320a2f4c61737443686172203235350a3e3e0a656e646f626a0a322030206f626a0a3c3c0a2f50726f63536574205b2f504446202f54657874202f496d61676542202f496d61676543202f496d616765495d0a2f466f6e74203c3c0a2f46312035203020520a2f46322036203020520a2f46332037203020520a2f46342038203020520a2f46352039203020520a2f4636203130203020520a2f4637203131203020520a2f4638203132203020520a2f4639203133203020520a2f463130203134203020520a2f463131203135203020520a2f463132203136203020520a2f463133203137203020520a2f463134203138203020520a3e3e0a2f584f626a656374203c3c0a3e3e0a3e3e0a656e646f626a0a31392030206f626a0a3c3c0a2f50726f647563657220286a7350444620322e352e31290a2f4372656174696f6e446174652028443a32303234303831333232313332342d303527303027290a3e3e0a656e646f626a0a32302030206f626a0a3c3c0a2f54797065202f436174616c6f670a2f50616765732031203020520a2f4f70656e416374696f6e205b3320302052202f46697448206e756c6c5d0a2f506167654c61796f7574202f4f6e65436f6c756d6e0a3e3e0a656e646f626a0a787265660a302032310a303030303030303030302036353533352066200a30303030303033383238203030303030206e200a30303030303035363435203030303030206e200a30303030303030303135203030303030206e200a30303030303030313532203030303030206e200a30303030303033383835203030303030206e200a30303030303034303130203030303030206e200a30303030303034313430203030303030206e200a30303030303034323733203030303030206e200a30303030303034343130203030303030206e200a30303030303034353333203030303030206e200a30303030303034363632203030303030206e200a30303030303034373934203030303030206e200a30303030303034393330203030303030206e200a30303030303035303538203030303030206e200a30303030303035313835203030303030206e200a30303030303035333134203030303030206e200a30303030303035343437203030303030206e200a30303030303035353439203030303030206e200a30303030303035383933203030303030206e200a30303030303035393739203030303030206e200a747261696c65720a3c3c0a2f53697a652032310a2f526f6f74203230203020520a2f496e666f203139203020520a2f4944205b203c30454633434234453232444334323736343138323635434533363633463441383e203c30454633434234453232444334323736343138323635434533363633463441383e205d0a3e3e0a7374617274787265660a363038330a2525454f46, 729);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre`) VALUES
(1, 'Administrador'),
(2, 'Axuliar Administrativo'),
(4, 'Medico - Laboratorio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_permisos`
--

CREATE TABLE `roles_permisos` (
  `id_rol` int NOT NULL,
  `id_permiso` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles_permisos`
--

INSERT INTO `roles_permisos` (`id_rol`, `id_permiso`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 12),
(2, 12),
(1, 13),
(1, 14),
(2, 14),
(1, 19),
(4, 19),
(1, 20),
(1, 22),
(1, 25),
(4, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `cedula` varchar(15) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `rol_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`cedula`, `nombre`, `correo_electronico`, `contraseña`, `rol_id`) VALUES
('0912345678', 'Andres Coronel Mora', 'AndresCoronel20@gmail.com', '$2b$10$fL5nF4wY0XsrpfX1yIAOxenALht8R1VnOQDGmN6ESFKsV6pbMctcS', 4),
('2150337331', 'Maybeth Jimenez', 'maybethjm@assist.com.uy', '$2b$10$S7Zo7KnAEt00RmgEmcjYWOCjXSr7m9Fnv3czy4P09Pyilycz3w/5G', 2),
('Admin', 'Administrador', 'laboratorio.gblab@gmail.com', '$2b$10$dnrHZKwbjrjTfYa6vEU1Re6UDXfI1EaQ6dMoaHh45FT2cTKA4jrHi', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `analisis`
--
ALTER TABLE `analisis`
  ADD PRIMARY KEY (`id_analisis`),
  ADD KEY `fk_analisis_especialidad` (`id_especialidad`);

--
-- Indices de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`id_especialidad`);

--
-- Indices de la tabla `examenes`
--
ALTER TABLE `examenes`
  ADD PRIMARY KEY (`id_examen`),
  ADD KEY `id_analisis` (`id_analisis`);

--
-- Indices de la tabla `examen_detalle`
--
ALTER TABLE `examen_detalle`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_examen` (`id_examen`);

--
-- Indices de la tabla `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`id_medico`),
  ADD UNIQUE KEY `cedula` (`cedula`),
  ADD KEY `id_especialidad` (`id_especialidad`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permiso`);

--
-- Indices de la tabla `realizar_examen`
--
ALTER TABLE `realizar_examen`
  ADD PRIMARY KEY (`id_realizar`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_medico` (`id_medico`),
  ADD KEY `id_examen` (`id_examen`),
  ADD KEY `id_analisis` (`id_analisis`);

--
-- Indices de la tabla `resultado`
--
ALTER TABLE `resultado`
  ADD PRIMARY KEY (`id_resultado`),
  ADD KEY `id_realizar` (`id_realizar`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `roles_permisos`
--
ALTER TABLE `roles_permisos`
  ADD PRIMARY KEY (`id_rol`,`id_permiso`),
  ADD KEY `id_permiso` (`id_permiso`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cedula`),
  ADD KEY `rol_id` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `analisis`
--
ALTER TABLE `analisis`
  MODIFY `id_analisis` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29791;

--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `id_especialidad` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `examenes`
--
ALTER TABLE `examenes`
  MODIFY `id_examen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `examen_detalle`
--
ALTER TABLE `examen_detalle`
  MODIFY `id_detalle` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `medico`
--
ALTER TABLE `medico`
  MODIFY `id_medico` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id_paciente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4727;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id_permiso` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `realizar_examen`
--
ALTER TABLE `realizar_examen`
  MODIFY `id_realizar` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=731;

--
-- AUTO_INCREMENT de la tabla `resultado`
--
ALTER TABLE `resultado`
  MODIFY `id_resultado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `analisis`
--
ALTER TABLE `analisis`
  ADD CONSTRAINT `fk_analisis_especialidad` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidad` (`id_especialidad`);

--
-- Filtros para la tabla `examenes`
--
ALTER TABLE `examenes`
  ADD CONSTRAINT `examenes_ibfk_1` FOREIGN KEY (`id_analisis`) REFERENCES `analisis` (`id_analisis`);

--
-- Filtros para la tabla `examen_detalle`
--
ALTER TABLE `examen_detalle`
  ADD CONSTRAINT `examen_detalle_ibfk_1` FOREIGN KEY (`id_examen`) REFERENCES `examenes` (`id_examen`);

--
-- Filtros para la tabla `medico`
--
ALTER TABLE `medico`
  ADD CONSTRAINT `medico_ibfk_1` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidad` (`id_especialidad`);

--
-- Filtros para la tabla `realizar_examen`
--
ALTER TABLE `realizar_examen`
  ADD CONSTRAINT `realizar_examen_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`),
  ADD CONSTRAINT `realizar_examen_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_medico`),
  ADD CONSTRAINT `realizar_examen_ibfk_3` FOREIGN KEY (`id_examen`) REFERENCES `examenes` (`id_examen`),
  ADD CONSTRAINT `realizar_examen_ibfk_4` FOREIGN KEY (`id_analisis`) REFERENCES `analisis` (`id_analisis`);

--
-- Filtros para la tabla `resultado`
--
ALTER TABLE `resultado`
  ADD CONSTRAINT `resultado_ibfk_1` FOREIGN KEY (`id_realizar`) REFERENCES `realizar_examen` (`id_realizar`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `roles_permisos`
--
ALTER TABLE `roles_permisos`
  ADD CONSTRAINT `roles_permisos_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_permisos_ibfk_2` FOREIGN KEY (`id_permiso`) REFERENCES `permisos` (`id_permiso`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
