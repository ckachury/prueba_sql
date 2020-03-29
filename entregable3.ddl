-- Generado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   en:        2020-03-14 22:39:51 CLST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE alumno (
    rut_alumno  VARCHAR2(11 CHAR) NOT NULL,
    nombre      VARCHAR2(100 CHAR)
);

ALTER TABLE alumno ADD CONSTRAINT alumno_pk PRIMARY KEY ( rut_alumno );

CREATE TABLE curso (
    id_curso  INTEGER NOT NULL,
    nombre    VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE curso ADD CONSTRAINT curso_pk PRIMARY KEY ( id_curso );

CREATE TABLE curso_alumno (
    alumno_rut_alumno  VARCHAR2(11 CHAR) NOT NULL,
    curso_id_curso     INTEGER NOT NULL
);

ALTER TABLE curso_alumno ADD CONSTRAINT curso_alumno_pk PRIMARY KEY ( alumno_rut_alumno,
                                                                      curso_id_curso );

CREATE TABLE opcion (
    id_alt            INTEGER NOT NULL,
    nombre_alt        VARCHAR2(2),
    es_correcto       BLOB,
    porcentaje        INTEGER,
    pregunta_id_preg  INTEGER NOT NULL,
    resp_id_resp      INTEGER NOT NULL
);

ALTER TABLE opcion ADD CONSTRAINT opcion_pk PRIMARY KEY ( id_alt );

CREATE TABLE pregunta (
    id_preg         INTEGER NOT NULL,
    enunciado       VARCHAR2(255 CHAR),
    puntaje         NUMBER(5, 2),
    prueba_id_test  INTEGER NOT NULL
);

ALTER TABLE pregunta ADD CONSTRAINT pregunta_pk PRIMARY KEY ( id_preg );

CREATE TABLE prueba (
    id_test         INTEGER NOT NULL,
    nombre          VARCHAR2(255 CHAR),
    descripcion     VARCHAR2(255 CHAR),
    programa        VARCHAR2(255 CHAR),
    unidad          INTEGER,
    autor           VARCHAR2(50 CHAR),
    fecha_creacion  DATE,
    curso_id_curso  INTEGER NOT NULL
);

ALTER TABLE prueba ADD CONSTRAINT prueba_pk PRIMARY KEY ( id_test );

CREATE TABLE resp (
    id_resp            INTEGER NOT NULL,
    respuesta          VARCHAR2(2),
    resp_correg        BLOB,
    punt_alumno        NUMBER(7, 2),
    punt_norm          NUMBER(2, 1),
    alumno_rut_alumno  VARCHAR2(11 CHAR) NOT NULL
);

ALTER TABLE resp ADD CONSTRAINT resp_pk PRIMARY KEY ( id_resp );

ALTER TABLE curso_alumno
    ADD CONSTRAINT curso_alumno_alumno_fk FOREIGN KEY ( alumno_rut_alumno )
        REFERENCES alumno ( rut_alumno );

ALTER TABLE curso_alumno
    ADD CONSTRAINT curso_alumno_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );

ALTER TABLE opcion
    ADD CONSTRAINT opcion_pregunta_fk FOREIGN KEY ( pregunta_id_preg )
        REFERENCES pregunta ( id_preg );

ALTER TABLE opcion
    ADD CONSTRAINT opcion_resp_fk FOREIGN KEY ( resp_id_resp )
        REFERENCES resp ( id_resp );

ALTER TABLE pregunta
    ADD CONSTRAINT pregunta_prueba_fk FOREIGN KEY ( prueba_id_test )
        REFERENCES prueba ( id_test );

ALTER TABLE prueba
    ADD CONSTRAINT prueba_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );

ALTER TABLE resp
    ADD CONSTRAINT resp_alumno_fk FOREIGN KEY ( alumno_rut_alumno )
        REFERENCES alumno ( rut_alumno );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                             14
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
