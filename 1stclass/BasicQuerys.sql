//Comandos basicos del DDL
CREATE DATABASE AgnesTore;

DROP DATABASE AgnesTore;

CREATE TABLE TablaNombre;

DROP TABLE TablaNombre;
//Agregaciones, -> IF EXISTS Busca si ya existe y si si ejecuta la linea,si no ps no, IF NOT EXISTS la misma monda

//Trabajo con tablas

//PRIMARY KEY

CREATE TABLE FF(
    ID_FF INT PRIMARY KEY,
    REGIS VARCHAR(10)
)

//ALTER Sirve para alterar 

ALTER TABLE FF ADD PRIMARY KEY REGIS; 

//DML 

INSERT INTO TablaNombre(ID_FF);
    VALUES (100);

//BULK INSERT 

INSERT INTO TablaNombre(ID_FF, REGIS)
    VALUES (100, "SAPO"), (100, "SAP2O");

//UPDATE -> importante tener siempre un WHERE para asi solo modificar un registro exacto

UPDATE TablaNombre SET REGIS = "PAPOI"  WHERE REGIS = "SAP2O";
