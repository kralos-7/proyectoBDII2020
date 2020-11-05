DROP TABLE IF EXISTS student;

CREATE TABLE IF NOT EXISTS student (
    _id INT AUTO_INCREMENT PRIMARY KEY,
    _name VARCHAR(30) NOT NULL,
    _ntable VARCHAR(20) NOT NULL
);

INSERT INTO student (_name,_ntable) 
VALUES  ("Carlos","Pagos"),
        ("Cesar","Usuarios"),
        ("Everardo","Alumno"),

        ("Jonathan","Beca"),
        ("Kevin","Tutorias"),
        ("Libia","Calificaciones"),
        ("Zurisadai","Profesor"),
        ("Yara","Asignatura");