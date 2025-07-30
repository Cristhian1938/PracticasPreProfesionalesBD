-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-07-2025 a las 16:32:53
-- Versión del servidor: 11.8.2-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemagestionproyectos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `idComentario` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `fecha` date NOT NULL,
  `idTarea` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`idComentario`, `contenido`, `fecha`, `idTarea`, `idUsuario`) VALUES
(1, 'Buen trabajo en los requerimientos.', '2025-05-06', 1, 7),
(2, 'Faltan íconos en la UI.', '2025-05-10', 2, 7),
(3, 'El backend no compila.', '2025-05-20', 3, 8),
(4, 'Agregar más casos de prueba.', '2025-05-28', 4, 8),
(5, 'Modelo relacional correcto.', '2025-04-20', 5, 9),
(6, 'Documento completo, bien hecho.', '2025-07-10', 6, 10);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `consulta1`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `consulta1` (
`nombre` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `consulta2`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `consulta2` (
`estado` varchar(50)
,`nombre_proyecto` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `consulta3`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `consulta3` (
`nombre` varchar(50)
,`nombre_proyecto` varchar(50)
,`paralelo` varchar(10)
,`semestre` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `consulta4`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `consulta4` (
`nombre` varchar(50)
,`puntaje` decimal(10,0)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `consulta5`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `consulta5` (
`nombre` varchar(50)
,`contenido` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `consulta6`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `consulta6` (
`nombre` varchar(50)
,`contenido` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `consulta7`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `consulta7` (
`nombre_documento` varchar(50)
,`nombre_proyecto` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `consulta8`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `consulta8` (
`nombre` varchar(50)
,`nombre_proyecto` varchar(50)
,`rol` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `consulta9`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `consulta9` (
`nombre` varchar(50)
,`fecha` date
,`tipo` varchar(50)
,`contenido` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `consulta10`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `consulta10` (
`idTarea` int(11)
,`descripcion` varchar(50)
,`estado` varchar(50)
,`fecha_inicio` date
,`fecha_fin` date
,`nombre_sprint` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `idUsuario` int(11) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `grado_academico` varchar(50) DEFAULT NULL,
  `oficina` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`idUsuario`, `titulo`, `grado_academico`, `oficina`) VALUES
(7, 'Dra.', 'PhD en Ciencias Computacionales', 'Oficina A-101'),
(8, 'Dr.', 'PhD en Ingeniería de Software', 'Oficina B-202'),
(9, 'Mg.', 'Magíster en Informática', 'Oficina C-303'),
(10, 'Ing.', 'Ingeniero en Sistemas', 'Oficina D-404');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `idDocumento` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `version` varchar(50) NOT NULL,
  `url` varchar(150) NOT NULL,
  `idProyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`idDocumento`, `nombre`, `fecha`, `version`, `url`, `idProyecto`) VALUES
(1, 'Documento Inicial', '2025-05-10', 'v1.0', 'https://example.com/doc1.pdf', 1),
(2, 'Requisitos', '2025-05-15', 'v1.1', 'https://example.com/doc2.pdf', 1),
(3, 'Diseño', '2025-05-20', 'v2.0', 'https://example.com/doc3.pdf', 2),
(4, 'Manual de Usuario', '2025-06-01', 'v1.0', 'https://example.com/doc4.pdf', 2),
(5, 'Planificación', '2025-06-05', 'v0.9', 'https://example.com/doc5.pdf', 3),
(6, 'Informe Parcial', '2025-06-15', 'v1.2', 'https://example.com/doc6.pdf', 4),
(7, 'Plan de Pruebas', '2025-06-20', 'v1.0', 'https://example.com/doc7.pdf', 4),
(8, 'Resumen Ejecutivo', '2025-06-25', 'v1.0', 'https://example.com/doc8.pdf', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `idUsuario` int(11) NOT NULL,
  `paralelo` varchar(10) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`idUsuario`, `paralelo`, `semestre`) VALUES
(1, 'A1', 3),
(2, 'A1', 3),
(3, 'B1', 4),
(4, 'B1', 4),
(5, 'C1', 5),
(6, 'C1', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_proyecto`
--

CREATE TABLE `estudiante_proyecto` (
  `idUsuario` int(11) NOT NULL,
  `idProyecto` int(11) NOT NULL,
  `rol` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante_proyecto`
--

INSERT INTO `estudiante_proyecto` (`idUsuario`, `idProyecto`, `rol`) VALUES
(1, 1, 'Frontend'),
(2, 1, 'Backend'),
(3, 2, 'Base de datos'),
(4, 2, 'Documentación'),
(5, 3, 'Testing'),
(6, 4, 'Desarrollador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

CREATE TABLE `evaluacion` (
  `idEvaluacion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `rubricas` text DEFAULT NULL,
  `puntaje` decimal(10,0) DEFAULT NULL,
  `idDocente` int(11) NOT NULL,
  `idProyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evaluacion`
--

INSERT INTO `evaluacion` (`idEvaluacion`, `fecha`, `rubricas`, `puntaje`, `idDocente`, `idProyecto`) VALUES
(1, '2025-06-01', 'Requisitos, Diseño, Funcionalidad', 10, 7, 1),
(2, '2025-06-10', 'Calidad del código, documentación', 8, 8, 2),
(3, '2025-06-15', 'Presentación y pruebas', 9, 9, 3),
(4, '2025-06-20', 'Entrega final, organización', 9, 10, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion`
--

CREATE TABLE `notificacion` (
  `idNotificacion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `contenido` text NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notificacion`
--

INSERT INTO `notificacion` (`idNotificacion`, `fecha`, `contenido`, `tipo`, `idUsuario`) VALUES
(1, '2025-06-01', 'Entrega de avance del proyecto', 'Recordatorio', 1),
(2, '2025-06-01', 'Reunión con el docente', 'Aviso', 2),
(3, '2025-06-02', 'Cambio de fecha de entrega', 'Alerta', 3),
(4, '2025-06-02', 'Nueva rúbrica de evaluación', 'Informativo', 4),
(5, '2025-06-03', 'Revisión de tareas', 'Aviso', 5),
(6, '2025-06-03', 'Entrega final próxima', 'Recordatorio', 6),
(7, '2025-06-04', 'Revisión de proyecto', 'Sistema', 7),
(8, '2025-06-04', 'Evaluaciones disponibles', 'Sistema', 8),
(9, '2025-06-05', 'Actualización de plataforma', 'Aviso', 9),
(10, '2025-06-05', 'Recordatorio de tutoría', 'Recordatorio', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `idProyecto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripción` text DEFAULT NULL,
  `estado` varchar(40) DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `idDocente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`idProyecto`, `nombre`, `descripción`, `estado`, `fecha_inicio`, `fecha_fin`, `idDocente`) VALUES
(1, 'App Gestión Tareas', 'Sistema para administrar tareas estudiantiles', 'En desarrollo', '2025-05-01', '2025-08-01', 7),
(2, 'Sistema Académico', 'Módulo de notas y materias', 'Completado', '2025-04-15', '2025-07-15', 8),
(3, 'Plataforma de Cursos', 'Sistema de e-learning', 'Pendiente', '2025-05-10', '2025-09-01', 9),
(4, 'Control de Inventario', 'App para gestión de inventario', 'En desarrollo', '2025-06-01', '2025-09-30', 10),
(5, 'Gestión de Biblioteca', 'Sistema de préstamos y catálogos', 'Planeado', '2025-06-10', '2025-09-10', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sprint`
--

CREATE TABLE `sprint` (
  `idSprint` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `idProyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sprint`
--

INSERT INTO `sprint` (`idSprint`, `nombre`, `fecha_inicio`, `fecha_fin`, `idProyecto`) VALUES
(1, 'Sprint 1', '2025-05-01', '2025-05-15', 1),
(2, 'Sprint 2', '2025-05-16', '2025-05-31', 1),
(3, 'Sprint Inicial', '2025-04-15', '2025-04-30', 2),
(4, 'Sprint Final', '2025-07-01', '2025-07-15', 2),
(5, 'Sprint Planeación', '2025-05-10', '2025-05-25', 3),
(6, 'Sprint Diseño', '2025-06-01', '2025-06-15', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE `tarea` (
  `idTarea` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `estado` varchar(50) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `horas_trabajadas` decimal(10,0) DEFAULT NULL,
  `idSprint` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tarea`
--

INSERT INTO `tarea` (`idTarea`, `descripcion`, `estado`, `fecha_inicio`, `fecha_fin`, `horas_trabajadas`, `idSprint`) VALUES
(1, 'Definir requerimientos', 'Completado', '2025-05-01', '2025-05-05', 8, 1),
(2, 'Diseño UI', 'En progreso', '2025-05-06', '2025-05-10', 5, 1),
(3, 'Programación backend', 'Pendiente', '2025-05-16', '2025-05-25', 0, 2),
(4, 'Pruebas unitarias', 'En progreso', '2025-05-26', '2025-05-31', 2, 2),
(5, 'Modelado BD', 'Completado', '2025-04-15', '2025-04-18', 6, 3),
(6, 'Redacción documento final', 'Completado', '2025-07-01', '2025-07-10', 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `clave` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nombre`, `correo`, `clave`) VALUES
(1, 'Ana Torres', 'ana@example.com', 'clave123'),
(2, 'Luis Méndez', 'luis@example.com', 'clave123'),
(3, 'Camila Ríos', 'camila@example.com', 'clave123'),
(4, 'Pedro Suárez', 'pedro@example.com', 'clave123'),
(5, 'Laura Pérez', 'laura@example.com', 'clave123'),
(6, 'Carlos León', 'carlos@example.com', 'clave123'),
(7, 'Dra. Roberta Díaz', 'roberta@example.com', 'clave123'),
(8, 'Dr. Julio Aguilar', 'julio@example.com', 'clave123'),
(9, 'Mg. Teresa Quispe', 'teresa@example.com', 'clave123'),
(10, 'Ing. Marco Lema', 'marco@example.com', 'clave123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`idComentario`),
  ADD KEY `idTarea` (`idTarea`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`idDocumento`),
  ADD KEY `idProyecto` (`idProyecto`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `estudiante_proyecto`
--
ALTER TABLE `estudiante_proyecto`
  ADD PRIMARY KEY (`idUsuario`,`idProyecto`),
  ADD KEY `idProyecto` (`idProyecto`);

--
-- Indices de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD PRIMARY KEY (`idEvaluacion`),
  ADD KEY `idDocente` (`idDocente`),
  ADD KEY `idProyecto` (`idProyecto`);

--
-- Indices de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD PRIMARY KEY (`idNotificacion`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`idProyecto`),
  ADD KEY `idDocente` (`idDocente`);

--
-- Indices de la tabla `sprint`
--
ALTER TABLE `sprint`
  ADD PRIMARY KEY (`idSprint`),
  ADD KEY `idProyecto` (`idProyecto`);

--
-- Indices de la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD PRIMARY KEY (`idTarea`),
  ADD KEY `idSprint` (`idSprint`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `idComentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `idDocumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  MODIFY `idEvaluacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  MODIFY `idNotificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `idProyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `sprint`
--
ALTER TABLE `sprint`
  MODIFY `idSprint` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tarea`
--
ALTER TABLE `tarea`
  MODIFY `idTarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

-- --------------------------------------------------------

--
-- Estructura para la vista `consulta1`
--
DROP TABLE IF EXISTS `consulta1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `consulta1`  AS SELECT `u`.`nombre` AS `nombre` FROM ((`usuario` `u` join `estudiante_proyecto` `ep` on(`u`.`idUsuario` = `ep`.`idUsuario`)) join `proyecto` `p` on(`ep`.`idProyecto` = `p`.`idProyecto`)) WHERE `p`.`nombre` = 'App Gestión Tareas' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `consulta2`
--
DROP TABLE IF EXISTS `consulta2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `consulta2`  AS SELECT `t`.`estado` AS `estado`, `p`.`nombre` AS `nombre_proyecto` FROM ((`tarea` `t` join `sprint` `s` on(`t`.`idSprint` = `s`.`idSprint`)) join `proyecto` `p` on(`s`.`idProyecto` = `p`.`idProyecto`)) WHERE `t`.`estado` = 'Completado' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `consulta3`
--
DROP TABLE IF EXISTS `consulta3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `consulta3`  AS SELECT `p`.`nombre` AS `nombre`, `u`.`nombre` AS `nombre_proyecto`, `e`.`paralelo` AS `paralelo`, `e`.`semestre` AS `semestre` FROM (((`usuario` `u` join `estudiante` `e` on(`u`.`idUsuario` = `e`.`idUsuario`)) join `estudiante_proyecto` `ep` on(`e`.`idUsuario` = `ep`.`idUsuario`)) join `proyecto` `p` on(`ep`.`idProyecto` = `p`.`idProyecto`)) WHERE `u`.`nombre` = 'Camila Ríos' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `consulta4`
--
DROP TABLE IF EXISTS `consulta4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `consulta4`  AS SELECT DISTINCT `p`.`nombre` AS `nombre`, `e`.`puntaje` AS `puntaje` FROM (`evaluacion` `e` join `proyecto` `p` on(`e`.`idProyecto` = `p`.`idProyecto`)) WHERE `e`.`puntaje` < 9 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `consulta5`
--
DROP TABLE IF EXISTS `consulta5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `consulta5`  AS SELECT `u`.`nombre` AS `nombre`, `c`.`contenido` AS `contenido` FROM ((`comentario` `c` join `usuario` `u` on(`c`.`idUsuario` = `u`.`idUsuario`)) join `docente` `d` on(`u`.`idUsuario` = `d`.`idUsuario`)) WHERE `d`.`grado_academico` = 'PhD en Ingeniería de Software' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `consulta6`
--
DROP TABLE IF EXISTS `consulta6`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `consulta6`  AS SELECT `u`.`nombre` AS `nombre`, `c`.`contenido` AS `contenido` FROM ((`comentario` `c` join `usuario` `u` on(`c`.`idUsuario` = `u`.`idUsuario`)) join `docente` `d` on(`u`.`idUsuario` = `d`.`idUsuario`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `consulta7`
--
DROP TABLE IF EXISTS `consulta7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `consulta7`  AS SELECT `d`.`nombre` AS `nombre_documento`, `p`.`nombre` AS `nombre_proyecto` FROM (`documento` `d` join `proyecto` `p` on(`d`.`idProyecto` = `p`.`idProyecto`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `consulta8`
--
DROP TABLE IF EXISTS `consulta8`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `consulta8`  AS SELECT `u`.`nombre` AS `nombre`, `p`.`nombre` AS `nombre_proyecto`, `ep`.`rol` AS `rol` FROM (((`estudiante_proyecto` `ep` join `estudiante` `e` on(`ep`.`idUsuario` = `e`.`idUsuario`)) join `usuario` `u` on(`e`.`idUsuario` = `u`.`idUsuario`)) join `proyecto` `p` on(`ep`.`idProyecto` = `p`.`idProyecto`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `consulta9`
--
DROP TABLE IF EXISTS `consulta9`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `consulta9`  AS SELECT `u`.`nombre` AS `nombre`, `n`.`fecha` AS `fecha`, `n`.`tipo` AS `tipo`, `n`.`contenido` AS `contenido` FROM (`notificacion` `n` join `usuario` `u` on(`n`.`idUsuario` = `u`.`idUsuario`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `consulta10`
--
DROP TABLE IF EXISTS `consulta10`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `consulta10`  AS SELECT `t`.`idTarea` AS `idTarea`, `t`.`descripcion` AS `descripcion`, `t`.`estado` AS `estado`, `t`.`fecha_inicio` AS `fecha_inicio`, `t`.`fecha_fin` AS `fecha_fin`, `s`.`nombre` AS `nombre_sprint` FROM (`tarea` `t` join `sprint` `s` on(`t`.`idSprint` = `s`.`idSprint`)) ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`idTarea`) REFERENCES `tarea` (`idTarea`),
  ADD CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `docente_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `documento`
--
ALTER TABLE `documento`
  ADD CONSTRAINT `documento_ibfk_1` FOREIGN KEY (`idProyecto`) REFERENCES `proyecto` (`idProyecto`);

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `estudiante_proyecto`
--
ALTER TABLE `estudiante_proyecto`
  ADD CONSTRAINT `estudiante_proyecto_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `estudiante` (`idUsuario`),
  ADD CONSTRAINT `estudiante_proyecto_ibfk_2` FOREIGN KEY (`idProyecto`) REFERENCES `proyecto` (`idProyecto`);

--
-- Filtros para la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD CONSTRAINT `evaluacion_ibfk_1` FOREIGN KEY (`idDocente`) REFERENCES `docente` (`idUsuario`),
  ADD CONSTRAINT `evaluacion_ibfk_2` FOREIGN KEY (`idProyecto`) REFERENCES `proyecto` (`idProyecto`);

--
-- Filtros para la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD CONSTRAINT `notificacion_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `proyecto_ibfk_1` FOREIGN KEY (`idDocente`) REFERENCES `docente` (`idUsuario`);

--
-- Filtros para la tabla `sprint`
--
ALTER TABLE `sprint`
  ADD CONSTRAINT `sprint_ibfk_1` FOREIGN KEY (`idProyecto`) REFERENCES `proyecto` (`idProyecto`);

--
-- Filtros para la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD CONSTRAINT `tarea_ibfk_1` FOREIGN KEY (`idSprint`) REFERENCES `sprint` (`idSprint`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
