CREATE TABLE Usuarios(
    _idUsuario INT NOT NULL PRIMARY KEY, 
    _matricula VARCHAR(10) NOT NULL, 
    _contrasena VARCHAR(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;