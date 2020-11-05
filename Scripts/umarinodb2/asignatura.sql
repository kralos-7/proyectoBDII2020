CREATE TABLE IF NOT EXISTS Asignatura(
    _idAsignatura VARCHAR(4) NOT NULL, 
    _idProfesor VARCHAR(11) NOT NULL,
    _nombreAsignatura VARCHAR(40) NOT NULL,
    _semestre VARCHAR(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;