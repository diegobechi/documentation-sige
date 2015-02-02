/*Con el legajo del docente y el ciclo lectivo obtengo los diferentes cursos que el mismo tiene asigandos en el año lectivo actual.*/
     
SELECT DISTINCT  c.idCurso,ne.salaGradoAño, t.nombre as 'Turno'
FROM Docente d, AsignaturaPorDocente ad, Asignatura a, NivelEducativo ne, Curso c, Turno t
WHERE d.legajoDocente = ad.legajoDocente and 
    a.idAsignatura = ad.idAsignatura and
    ne.idNivelEducativo = a.idNivelEducativo and
    ne.idNivelEducativo = c.idNivelEducativo and
    c.idTurno = t.idTurno and
    d.legajoDocente = '10002'and
    c.cicloLectivo = '2014'


/*Con el curso y el docente commo parametro obtengo: las asignaturas del curso.*/

SELECT DISTINCT a.nombre as Asignaturas
FROM Docente d, AsignaturaPorDocente ad, Asignatura a, NivelEducativo ne, Curso c, Turno t
WHERE d.legajoDocente = ad.legajoDocente and 
  a.idAsignatura = ad.idAsignatura and
  ne.idNivelEducativo = a.idNivelEducativo and
  ne.idNivelEducativo = c.idNivelEducativo and
  c.idTurno = t.idTurno and
  c.idCurso = '4' and
  c.cicloLectivo= '2014'
  order by a.nombre;
  
    
/*Con el curso y la asignatura cargo / actualizo / borro las notas de los alumnos.*/

INSERT INTO CalificacionEscolar (idCurso, idAsignatura, legajoAlumno, etapa, nroCalificacion, motivo, calificacion)
VALUES (@idCurso, @idAsignatura, @legajoAlumno, @etapa, @nroCalificacion, @motivo, @calificacion)


UPDATE CalificacionEscolar SET  idCurso =@idCurso, idAsignatura = @idAsignatura, legajoAlumno=@legajoAlumno, etapa=@etapa, nroCalificacion=@nroCalificacion, motivo=@motivo, calificacion=@calificacion, modificacion = @modificacion) 
WHERE idCurso = @idCurso and idAsignatura = @idAsignatura and legajoAlumno=@legajoAlumno and etapa = @etapa, and nroCalificacion =@nroCalificacion, motivo=@motivo, calificacion =@calificacion,modificacion = @modificacion       
        
DELETE FROM CalificacionEscolar
 WHERE idCurso = $idCurso and
       idAsignatura= $idAsignatura and
       legajoAlumno = $legajoAlumno and
       etapa = $etapa and
       nroCalificacion = $nroCalificacion


/*Con la asignatura,el curso,la etapa y nro de calificaion  veo las calificaciones de cada alumno del nivel inicial del curso en dicha asignatura en un etapa en particular.*/ 
                                 
SELECT  alu.legajoAlumno, alu.apellido, alu.nombre,ce.etapa,  ce.motivo, ce.calificacion
from Alumno alu , CalificacionEscolar ce, Asignatura a, Curso c, HorarioCurso hc, Inscripcion i
where c.idCurso = hc.idCurso and
	  a.idAsignatura = hc.idAsignatura and
      alu.legajoAlumno = ce.legajoAlumno and
      a.idAsignatura = ce.idAsignatura and
      alu.legajoAlumno=i.legajoAlumno and
      c.idCurso = i.idCurso and
      a.idAsignatura = 42 and
      c.idCurso = 3 and
      ce.etapa= 'Primera'   

/*Con el curso obtengo el listado de alumnos ordenados por apellido y nombre */

SELECT  alu.legajoAlumno, alu.apellido, alu.nombre
FROM Alumno alu, Curso c, Inscripcion i
WHERE i.idCurso = c.idCurso and
i.legajoAlumno = alu.legajoAlumno  and
c.idCurso = 9                                                
GROUP BY alu.legajoAlumno, alu.apellido, alu.nombre
ORDER BY alu.apellido ASC
	  
	  
/*Con el legajo del alumno todos los datos del mismo incluyendo datos del tutor */

select alu.nroDocumento,CAST(alu.fechaNacimiento AS VARCHAR(12)), alu.nacionalidad, alu.sexo,alu.correoElectronico,d.calle, d.numero, d.piso, b.nombre , t.apellido, t.nombre, t.telefonoMovil
from Alumno alu, Tutor t , GrupoFamiliar gf, Domicilio d, Inscripcion i, Curso c, Barrio b
where alu.legajoAlumno = gf.legajoAlumno and
      t.idTutor = gf.idTutor and
      alu.idDomicilio = d.idDomicilio and
      d.idBarrio = b.idBarrio and
      alu.legajoAlumno = i.legajoAlumno and 
      c.idCurso = i.idCurso and
      c.idCurso = '4' and
      alu.legajoAlumno= '100012'    
	  
/*Con el curso obtengo un listado de los alumnos con las inasistencias de los mismos */    

select alu.legajoAlumno, alu.apellido, alu.nombre, count(aa.justificacion) as 'Cantidad de Inasistencias', aa.fecha, aa.presente
from Alumno alu, AsistenciaAlumno aa, Inscripcion i, Curso c
where alu.legajoAlumno = aa.legajoAlumno and 
	  alu.legajoAlumno = i.legajoAlumno and
	  c.idCurso = i.idCurso and
	  c.idCurso ='9' 
	  GROUP BY  alu.legajoAlumno, alu.apellido, alu.nombre, aa.fecha, aa.presente
	  ORDER BY  alu.apellido asc, alu.nombre asc 

/*Con el curso obtengo un listado de los alumnos con las inasistencias de los mismos en una fecha determinada*/    

SELECT alu.legajoAlumno, alu.apellido, alu.nombre, CONVERT (char(10),aa.fecha, 103) as fecha, aa.justificacion
FROM Alumno alu, AsistenciaAlumno aa, Inscripcion i, Curso c
WHERE alu.legajoAlumno = aa.legajoAlumno and 
	  alu.legajoAlumno = i.legajoAlumno and
	  c.idCurso = i.idCurso and
	  c.idCurso ='9' and
	  aa.fecha = '13 Nov 2014'
	  GROUP BY  alu.legajoAlumno, alu.apellido, alu.nombre, aa.fecha, aa.justificacion
	  ORDER BY  alu.apellido asc, alu.nombre asc 

	  
/* Cargar la inasistencia de los alumnos de un curso pasando como parametro el curso*/

INSERT INTO AsistenciaAlumno (legajoAlumno, fecha, presente, justificacion) 
VALUES ($legajoAlumno, $fecha, $presente, $justificacion)	  

/* Actualizar la inasistencia de los alumnos de un curso pasando como parametro el curso*/

UPDATE  AsistenciaAlumno SET legajoAlumno = @legajoAlumno, fecha = @fecha, presente = @presente, justificacion = @justitifacion 
 WHERE  legajoAlumno = $legajoAlumno and fecha = $fecha and presente = @presente  and justificacion = @justificacion 
  


/*Con el curso obtengo un listado de las asignaturas del mismo *  datepart(HOUR,hc.horaInicio)*/

select distinct  a.nombre, a.tipo, d.apellido, d.nombre,hc.diaSemana
from Asignatura a, Curso c, HorarioCurso hc, Docente d, AsignaturaPorDocente ad, NivelEducativo ne
where  hc.idAsignatura = a.idAsignatura and
	   hc.idCurso = c.idCurso and
	   hc.legajoDocente = ad.legajoDocente and
	   hc.idAsignatura = ad.idAsignatura and
	   d.legajoDocente = ad.legajoDocente and
	   c.idCurso = '4'
	   
/*Con el legajo del docente obtengo: Asignaturas que el mismo da en los diferentes cursos.*/

SELECT DISTINCT a.nombre as Asignatura, ne.salaGradoAño, t.nombre as 'Turno'
FROM Docente d, AsignaturaPorDocente ad, Asignatura a, NivelEducativo ne, Curso c, Turno t
WHERE d.legajoDocente = ad.legajoDocente and 
  a.idAsignatura = ad.idAsignatura and
  ne.idNivelEducativo = a.idNivelEducativo and
  ne.idNivelEducativo = c.idNivelEducativo and
  c.idTurno = t.idTurno and
  d.legajoDocente = '10002'
  
/* Con un alumno como paramatero me debe devolver sus tutores*/
  
select distinct t.nroDocumento, t.sexo,CONVERT (char(10),t.fechaNacimiento, 103) as Fecha , e.nombre as 'Estado Civil', d.calle, d.numero, d.piso,t.telefonoFijo, t.telefonoMovil, t.correoElectronico
from Alumno a, Tutor t, GrupoFamiliar gf, Domicilio d, Estado e
where a.legajoAlumno = gf.legajoAlumno and
	  t.idTutor = gf.idTutor and
	  t.idDomicilio = d.idDomicilio and
	  t.idEstadoCivil = e.idEstado and
	  a.legajoAlumno='100002'
	  
	  
/* Con un tutor como paramatero me debe devolver todos los alumnos que tiene a su cargo*/

select distinct a.legajoAlumno,a.apellido, a.nombre
from Alumno a, Tutor t, GrupoFamiliar gf
where a.legajoAlumno = gf.legajoAlumno and
	  t.idTutor = gf.idTutor and
	  t.idTutor = '2'; 
	  
/* Con el legajo del docente, el curso como parametro visualizo los comunicados web enviados a los  alumnos desde el dia actual hasta 7 dias atras */
	  
SELECT CONVERT (char(10),cw.fecha, 103) as fecha,cw.comunicado, d.apellido, d.nombre, cw.idComunicadoWeb
FROM ComunicadoWeb cw, Docente d, Curso c 
WHERE cw.legajoDocente = d.legajoDocente and 
  cw.idCurso = c.idCurso and 
  ( cw.fecha between 10-11-2014 and 
   15-12-2014)and c.idCurso = 9
  
/* Cargar un nuevo comnuicado web */

INSERT INTO ComunicadoWeb(idCurso, legajoDocente, fecha, comunicado) VALUES (9, 10003, '10/11/2014', 'Tercer comunicado')
/* Con el id del comunicado web  como parametro actualizo el  comunicado web enviado a los  alumnos de un curso determinado */
               
UPDATE ComunicadoWeb  SET idCurso= @idCurso, legajoDocente = @legajoDocente, fecha = @fecha, comunicado = @comunicado
WHERE idComunicadoWeb = $idComunicadoWeb

/* borrar un mensaje ingresa por parametro */

DELETE  FROM ComunicadoWeb WHERE idComunicadoWeb = $idComunicadoWeb  
       
/* Con el legajo del docente y el curso inserto un comunicado web para los alumnos del curso */

INSERT INTO ComunicadoWeb(idCurso, legajoDocente, fecha, comunicado) VALUES (@idCurso, @legajoDocente, @fecha, @comunicado)

  
/* devolver el temario dictado de una asignatura paso el curso y la asignatura */

SELECT CONVERT(VARCHAR(11),tm.fecha, 106) as 'fechaPublicacion'  , tm.temasClase , d.apellido , d.nombre
FROM TemarioDictado tm, Docente d , Asignatura a
WHERE tm.legajoDocente = d.legajoDocente and
      tm.idAsignatura = a.idAsignatura and
      tm.idCurso = 9;   
  
/* Con el legajo del docente y el curso inserto un comunicado web para los alumnos del curso */


INSERT INTO TemarioDictado(idCurso, idAsignatura, fecha, temasClase, legajoDocente) 
VALUES (@idCurso, @idAsignatura, @fecha, @temasClase, @legajoDocente) 

/* Con el idCurso, idAsignatura, legajo del docente actualizo el temario dictado para los alumnos de un curso en una asignatura */

 UPDATE  TemarioDictado SET  temasClase = @temasClase, legajoDocente = @legajoDocente 
 WHERE  idcurso = $idCurso and idAsignatura = $idAsignatura and legajoDocente = $legajoDocente 
  

/*devolver los datos de un comunicado web en particular pasado como parametro */  

SELECT  cw.idComunicadoWeb,CONVERT (char(10),cw.fecha, 103) as 'fechaComunicado' , cw.comunicado, a.nombre
FROM ComunicadoWeb cw, Curso c, Docente d, Asignatura a, AsignaturaPorDocente ad
WHERE cw.idCurso = c.idCurso and
      cw.legajoDocente = d.legajoDocente and
      d.legajoDocente = ad.legajoDocente and
      a.idAsignatura = ad.idAsignatura and
      d.legajoDocente = 10002 and 
      cw.idComunicadoWeb = 1 
      
      
/* devolver un temario dictado seleccionado de una asignatura en un curso determinado  */

SELECT CONVERT(VARCHAR(11),td.fecha, 106) as 'fechaPublicacion'  , td.temasClase , d.apellido , d.nombre, a.idAsignatura
FROM TemarioDictado td, Docente d , Asignatura a
WHERE td.legajoDocente = d.legajoDocente and
      td.idAsignatura = a.idAsignatura and
      td.idCurso = 9 and 
      a.idAsignatura = 44 and
      td.fecha ='15 Ene 2015' 
      
      select * from TemarioDictado
    
      
/*Borrar un comunicado web especifcado como parametro*/    

DELETE FROM ComunicadoWeb 
 WHERE idComunicadoWeb = $idComunicadoWeb
     
     
      
/*Borrar un temario dictado especifcado como parametro*/    

DELETE FROM TemarioDictado
 WHERE idCurso = $idCurso and
       idAsignatura= $idAsignatura and
       fecha = $fecha
       
       
/* con el legajo del docentes devuelvo todos los datos personales del mismo */

SELECT d.apellido, d.nombre, d.nroDocumento, d.lugarNacimiento,CONVERT(VARCHAR(11),d.fechaNacimiento, 106), d.nacionalidad,d.legajoDocente,
	   dom.calle, dom.numero, dom.departamento, dom.piso, dom.numero, d.telefonoFijo, d.telefonoMovil, d.correoElectronico
FROM Docente d, Domicilio dom
WHERE d.idDomicilio = dom.idDomicilio and
      d.legajoDocente = 10002
      
   select * from Docente
 
   
   
SELECT  a.nombre, hc.diaSemana, SUBSTRING(CONVERT(CHAR(38),hc.horaInicio,121), 12,8) as 'horaInicio' ,  SUBSTRING(CONVERT(CHAR(38),hc.horaFin,121), 12,8) as 'horaFin', d.apellido, d.nombre,d.correoElectronico, d.curriculumVitae
FROM HorarioCurso hc, Docente d,Curso c, Asignatura a 
WHERE hc.legajoDocente = d.legajoDocente and 
   hc.idCurso = c.idCurso and
   hc.idAsignatura = a.idAsignatura and
   c.idCurso = 4
   order by diaSemana asc 
   
   
   
UPDATE CalificacionEscolar
SET modificacion = 'hola'
WHERE idCurso = 9 and idAsignatura = 44 and etapa = 'Primera'                     
    
    
    