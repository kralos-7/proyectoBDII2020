CREATE TABLE IF NOT EXISTS Pagos (
    _idPago varchar(4) not null,
    _matricula varchar(10),
    _inscripcion INT(6),
    _credencial INT(6),
    _colegiatura INT(6),

    PRIMARY KEY(_idPago),
    FOREIGN KEY (_matricula) REFERENCES Alumno (_matricula)
);