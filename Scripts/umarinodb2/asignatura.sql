
CREATE TABLE IF NOT EXISTS Asignatura(
    idAsignatura INT NOT NULL PRIMARY KEY, 
    idProfesor CHAR(11) NOT NULL,
    nombreAsignatura CHAR(40) NOT NULL,
    semestre CHAR(10) NOT NULL,
    FOREIGN KEY(idProfesor) REFERENCES umarinoDB2.Profesor(idProfesor) ON DELETE NO ACTION ON UPDATE NO ACTION
);