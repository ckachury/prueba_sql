--------------------------------------------------------
-- Archivo creado  - domingo-marzo-29-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ALUMNO
--------------------------------------------------------

  CREATE TABLE "ALUMNO" ("RUT_ALUMNO" VARCHAR2(11 CHAR), "NOMBRE" VARCHAR2(100 CHAR))
REM INSERTING into ALUMNO
SET DEFINE OFF;
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('7333919-7','Yorbeli Santo Pedrera');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('14654485-1','Simeón Cernadas Monterinos');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('23747643-3','Edmundo Cullar Domingo');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('8927869-4','Leoncio Mascire Pineda');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('20457649-1','Inmaculada Ibisate Maliaño');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('21902099-6','Graciela Valderrama Cambero');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('19432987-3','Rigel Aguileta Malvido');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('12736373-0','Nohely Casasola Alzaga');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('8820576-6','Armonia Cicero Masas');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('12649741-5','Wilson Domingo Romo');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('19031515-0','Alec Palmadas Echaitia');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('13030793-0','Berenice Cotero Azuela');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('20551341-8','Irmin Robina Rubinos');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('11006625-2','Antolín Horcasitas Urbieta');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('23586575-0','Filiberta Mancina Andrada');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('24773918-1','Francisco Vadillos Temporal');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('14526647-5','Marcos Cigüenza Toro');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('22659582-1','Leida Brugos Pareja');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('15030663-9','Jonás Ferreiro Quijana');
Insert into ALUMNO (RUT_ALUMNO,NOMBRE) values ('17044365-9','Luis Alberto Pérez Blanco');
--------------------------------------------------------
--  DDL for Index ALUMNO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALUMNO_PK" ON "ALUMNO" ("RUT_ALUMNO")
--------------------------------------------------------
--  Constraints for Table ALUMNO
--------------------------------------------------------

  ALTER TABLE "ALUMNO" ADD CONSTRAINT "ALUMNO_PK" PRIMARY KEY ("RUT_ALUMNO") ENABLE
  ALTER TABLE "ALUMNO" MODIFY ("RUT_ALUMNO" NOT NULL ENABLE)
