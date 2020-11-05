CREATE TABLE IF NOT EXISTS Alumno (
    _matricula VARCHAR(10) NOT NULL PRIMARY KEY,
    _nombre VARCHAR(40) NOT NULL,
    _aPaterno VARCHAR (20) NOT NULL,
    _aMaterno VARCHAR (20) NOT NULL,
    _fechaNacimiento DATE NOT NULL,
    _lugarProcecdencia VARCHAR(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;