CREATE TABLE IF NOT EXISTS Calificaciones (
    _id INT AUTO_INCREMENT PRIMARY KEY,
    _matricula CHAR(11)(FK) NOT NULL,
    _idAsignatura CHAR(4)(FK) NOT NULL,
    _calificacion NUMBER(2) NOT NULL
);