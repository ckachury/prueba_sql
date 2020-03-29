--Pregunta 2: Cursos sin evaluaciones
SELECT curso.id_curso, curso.nombre
FROM curso
LEFT OUTER JOIN prueba
ON curso.id_curso = prueba.curso_id_curso where prueba.curso_id_curso is null;