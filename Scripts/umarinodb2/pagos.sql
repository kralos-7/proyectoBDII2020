CREATE TABLE IF NOT EXISTS Pagos (
    _idPago VARCHAR(4) NOT NULL,
    _matricula VARCHAR(10),
    _inscripcion INT(6),
    _credencial INT(6),
    _colegiatura INT(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;