--------------------------------------------------------
-- Archivo creado  - domingo-marzo-29-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PREGUNTA
--------------------------------------------------------

  CREATE TABLE "PREGUNTA" ("ID_PREG" NUMBER(*,0), "ENUNCIADO" VARCHAR2(255 CHAR), "PUNTAJE" NUMBER(5,2), "PRUEBA_ID_TEST" NUMBER(*,0))
REM INSERTING into PREGUNTA
SET DEFINE OFF;
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('1','Un archivo o conjunto de archivos que contienen múltiples informaciones que, de alguna forma, guardan relación es','10','3');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('2','La herramienta informática que permite crear, manipular, gestionar y eliminar los datos y las estructuras de una base de datos es','5','3');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('3','De los siguientes acrónimos, indica cual es un Sistema Gestor de Bases de Datos (SGBD)','5','3');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('4','Las fases del diseño de una base de datos relacional son:','10','3');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('5','De las siguientes afirmaciones, indica cuales son ciertas respecto a una base de datos relacional','10','3');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('6','La clave (o llave) primaria (o principal) en una tabla de una base de datos relacional','10','3');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('7','Los filtros en las aplicaciones informáticas para bases de datos, permite','10','3');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('8','Una consulta en una base de datos es …','15','3');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('9','Las tablas de una bases de datos relacional han de tener cada una un campo que permita identificar unívocamente cada registro','15','3');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('10','En una consulta de selección en una aplicación para bases de datos, ¿cuándo se obtendrán como resultado más registros: cuando unimos los criterios mediante “y” o cuando los unimos mediante “o”?','10','3');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('11','Un bucle o ciclo es','10','2');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('12','if, else, for y while son','10','2');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('13','La programación se puede definir como...','5','2');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('14','¿Qué es un algoritmo?','5','2');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('15','¿Cuándo se mostrará por pantalla el mensaje incluido en el siguiente fragmento de código? If (numero % 2 == 0); System.out.print("El número es par /n");','10','2');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('16','¿Qué es necesario incluir en cada conjunto de sentencias asociadas a los posibles valores que pueden tomarse en un switch? ','15','2');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('17','Si sabemos exactamente cuántas iteraciones vamos a realizar, ¿qué tipo de bucle debemos utilizar?','10','2');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('18','¿Cuál de las siguientes no es una estructura de selección?','10','2');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('19','int, char, float, string y boolean son','5','2');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('20','A un tipo de sentencia especial de decisión y una secuencia de instrucciones que pueden ser repetidas según el resultado de la evaluación de la sentencia de decisión, se le denomina','20','2');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('21','pregunta 1','10','4');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('22','pregunta2','50','4');
Insert into PREGUNTA (ID_PREG,ENUNCIADO,PUNTAJE,PRUEBA_ID_TEST) values ('23','pregunta 3 error','25','5');
--------------------------------------------------------
--  DDL for Index PREGUNTA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PREGUNTA_PK" ON "PREGUNTA" ("ID_PREG")
--------------------------------------------------------
--  Constraints for Table PREGUNTA
--------------------------------------------------------

  ALTER TABLE "PREGUNTA" ADD CONSTRAINT "PREGUNTA_PK" PRIMARY KEY ("ID_PREG") ENABLE
  ALTER TABLE "PREGUNTA" MODIFY ("PRUEBA_ID_TEST" NOT NULL ENABLE)
  ALTER TABLE "PREGUNTA" MODIFY ("ID_PREG" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table PREGUNTA
--------------------------------------------------------

  ALTER TABLE "PREGUNTA" ADD CONSTRAINT "PREGUNTA_PRUEBA_FK" FOREIGN KEY ("PRUEBA_ID_TEST") REFERENCES "PRUEBA" ("ID_TEST") ENABLE
