CREATE TABLE Usuarios ( 
    _idUsuario INT NOT NULL PRIMARY KEY, 
    _login CHAR(10) NOT NULL, 
    _password CHAR(8) NULL

    FOREIGN KEY (loginmatricula) REFERENCE alumno(_matricula)
);