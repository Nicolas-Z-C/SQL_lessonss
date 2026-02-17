USE VENTASDELJOPODETOMAS;

CREATE TABLE VentasAna AS
SELECT user, producto
FROM VENTASDELJOPODETOMAS
WHERE user == "Ana";

Desc VentasAna;

SHOW COLUMNS FROM VentasAna;

SHOW CREATE TABLE VentasAna;

SHOW TABLE STATUS VentasAna;

---Relaciones entre tablas 

---1:N 

CREATE TABLE libro (
    ID INT PRIMARY KEY,
    Titulo VARCHAR(10) NOT NULL,
    Autor VARCHAR(10) NOT NULL,
);

CREATE TABLE Prestamo(
    ID INT PRIMARY KEY,
    ID_libro INT,
    fechaP DATE,
    fechaD DATE,
    FOREING KEY(ID_libro) REFERENCES libro(ID),
);

---N:N
CREATE TABLE Estudiante (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(100)
);

CREATE TABLE Curso (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Descripcion TEXT
);

CREATE TABLE Inscripcion (
    ID_Estudiante INT,
    ID_Curso INT,
    FechaInscripcion DATE,
    PRIMARY KEY (ID_Estudiante, ID_Curso),
    FOREIGN KEY (ID_Estudiante) REFERENCES Estudiante(ID),
    FOREIGN KEY (ID_Curso) REFERENCES Curso(ID)
);