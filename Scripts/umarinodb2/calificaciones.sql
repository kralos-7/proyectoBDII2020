CREATE TABLE IF NOT EXISTS Calificaciones(
    _matricula VARCHAR(10) NOT NULL,
    _idAsignatura VARCHAR(4) NOT NULL,
    _calificacion INT(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;