
/* Listado del horario del curso pasando un curso como parametro*/

select distinct hc.diaSemana,SUBSTRING ( CONVERT(char(38),hc.horaInicio,121), 12,8) as 'Hora Inicio',SUBSTRING ( CONVERT(char(38),hc.horaFin,121), 12,8) as 'Hora fin' , a.nombre,d.apellido, d.nombre
from Asignatura a, Curso c, HorarioCurso hc, Docente d, AsignaturaPorDocente ad, NivelEducativo ne
where  hc.idAsignatura = a.idAsignatura and
	   hc.idCurso = c.idCurso and
	   hc.legajoDocente = ad.legajoDocente and
	   hc.idAsignatura = ad.idAsignatura and
	   d.legajoDocente = ad.legajoDocente and
	   c.idCurso = 9 
	   order by diaSemana desc


/* listado de alumnos por sala,grado,año*/
 
select a.apellido, a.nombre,ne.division  
from Alumno a, Inscripcion i, Curso c,NivelEducativo ne 
where a.legajoAlumno = i.legajoAlumno and
	  i.idCurso = c.idCurso and
	  c.idNivelEducativo = ne.idNivelEducativo and
	  ne.division ='Sala de 3 Años'
	  order by a.apellido asc


/*Listado de inasistencias por curso*/ 

select a.legajoAlumno, a.nroDocumento, a.apellido, a.nombre, COUNT(*)as Inasistencias 
from AsistenciaAlumno aa, Alumno a, Inscripcion i, Curso c
where a.legajoAlumno = i.legajoAlumno and
      a.legajoAlumno= aa.legajoAlumno and
      i.idCurso = c.idCurso and 
      c.idCurso = 9 and
      aa.presente = 0   
      group by  a.legajoAlumno, a.nroDocumento, a.apellido, a.nombre
 
select  CONVERT (char(10),aa.fecha, 103) as Fecha, a.legajoAlumno, a.nroDocumento, a.apellido, a.nombre
from AsistenciaAlumno aa, Alumno a, Inscripcion i, Curso c
where a.legajoAlumno = i.legajoAlumno and
      a.legajoAlumno= aa.legajoAlumno and
      i.idCurso = c.idCurso and 
      c.idCurso = 9 and
      aa.presente = 0 
      group by  aa.fecha, a.legajoAlumno, a.nroDocumento, a.apellido, a.nombre

/* listado docentes por cargo le pasaria el cargo por parametro */

select distinct  d.legajoDocente,d.apellido,d.nombre,c.nombre as 'Cargo docente'
from docente d,CargoPorDocente cd, Cargo c, NivelEducativo ne
where d.legajoDocente = cd.legajoDocente and
      cd.idCargo = c.idCargo and
      c.idNivelEducativo = ne.idNivelEducativo and
      c.nombre ='Maestro de Secundario'
      

/* listado los datos de los docentes por nivel educativo(ejemplo este para secundario)*/
select distinct d.legajoDocente, d.apellido,d.nombre,d.cuil,CONVERT(VARCHAR(11),d.fechaNacimiento, 103) as 'fecha nacimiento',d.telefonoFijo,d.telefonoMovil,d.correoElectronico,dom.calle,dom.numero,dom.piso,dom.departamento
from docente d, Domicilio dom, NivelEducativo ne, Cargo c, CargoPorDocente cd
where d.idDomicilio = dom.idDomicilio and
	  d.legajoDocente = cd.legajoDocente and
	  cd.idCargo = c.idCargo and 
	  c.idNivelEducativo = ne.idNivelEducativo and 	    
	  ne.nombre = 'Secundario' 
	


      
       
select n.nombre, n.division
from Curso c , NivelEducativo n    
where  c.idNivelEducativo = n.idNivelEducativo and   
		 c.idCurso = 9 and
		 n.division = '3° Grado'
 
select * from curso 
select * from NivelEducativo
select * from CargoPorDocente
select * from Cargo

SELECT cw.fecha,cw.comunicado, d.apellido, d.nombre
    FROM ComunicadoWeb cw, Docente d, Curso c
    WHERE cw.legajoDocente = d.legajoDocente and
        cw.idCurso = c.idCurso and
        cw.fecha between  2014/11/06 and 2014/11/13 and
        c.idCurso = 4
        
        
        
        delete from AsistenciaAlumno