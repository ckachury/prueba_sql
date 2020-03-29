--Pregunta 3: evaluaciones con deficiencia
--a. evaluaciones sin preguntas:
select prueba.id_test, prueba.nombre
from prueba 
left outer join pregunta
on prueba.id_test=pregunta.prueba_id_test where pregunta.prueba_id_test is null;

--b. Si hay preguntas con 2 ó menos alternativas  

--c. Si todas las alternativas son correctas o si todas las alternativas son incorrectas.
--Busco la pregunta que cumple con la condicion
select pregunta_id_preg, count(*)
from opcion
where es_correcto=1 group by pregunta_id_preg
 having count(*)>3;
 
--busco a qué prueba pertence esa pregunta
 select pregunta_id_preg, prueba.id_test, prueba.nombre
from opcion inner join pregunta on opcion.pregunta_id_preg=pregunta.id_preg
inner join prueba on prueba.id_test=pregunta.prueba_id_test where pregunta.id_preg=23 
