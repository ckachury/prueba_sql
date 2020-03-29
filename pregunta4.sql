--Pregunta 4: consulta cuantos alumnos hay por curso: 
SELECT curso_id_curso, count(rut_alumno) FROM alumno group by curso_id_curso;