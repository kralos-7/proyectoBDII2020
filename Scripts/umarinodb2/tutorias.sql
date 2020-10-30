CREAR TABLA SI NO EXISTE TUTORIAS (
    foreign key (matricula ) references umarinoDB2.Alumno(matricula) on delate no action on update no action,
    foreign key (idProfesor ) references umarinoDB2.Profesor(idProfesor) on delate no action on update no action
    );
