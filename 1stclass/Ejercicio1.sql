CREATE DATABASE IF NOT EXISTS VENTASDELJOPODETOMAS;

USE VENTASDELJOPODETOMAS;

CREATE TABLE ventas(
    user VARCHAR(10) PRIMARY KEY NOT NULL,
    producto VARCHAR(10) NOT NULL,
    cantidad INT CHECK(cantidad > 0) NOT NULL,
    precio DECIMAL(10,3) CHECK(precio > 0) NOT NULL,
    fecha DATE NOT NULL,
);

INSERT INTO ventas (user, producto, cantidad, precio, fecha)
VALUES 
("Ana","Laptop",2,1200,"2024-01-05"),
("Ana","Mouse",5,25,"2024-01-05"),
("Ana","Teclado",3,45,"2024-01-05"),
("Luis","Laptop",1,1200,"2024-01-15"),
("Luis","Monitor",2,300,"2024-01-15"),
("Luis","Mouse",4,25,"2024-02-02"),
("Carlos","Laptop",3,1200,"2024-02-02"),
("Carlos","Teclado",2,45,"2024-02-02"),
("Carlos","Monitor",1,300,"2024-02-02"),
("Carlos","Mouse",6,25,"2024-02-02"),
("Ana","Monitor",1,300,"2024-02-05"),
("Luis","Teclado",5,45,"2024-02-10"),
("Ana","Laptop",1,1200,"2024-02-10"),
("Carlos","Laptop",2,1200,"2024-02-15"),
("Luis","Mouse",10,25,"2024-03-01"),
("Ana","Mouse",8,25,"2024-03-05"),
("Carlos","Monitor",2,300,"2024-03-10"),
("Luis","Laptop",1,1200,"2024-03-15"),
("Ana","Teclado",4,45,"2024-03-18"),
("Carlos","Mouse",3,25,"2024-03-20");

UPDATE  ventas SET user = "Tomas", cantidad = 100 WHERE user = "Luis" AND producto = "Teclado";

DELETE FROM ventas WHERE user = "Tomas";

SELECT * FROM ventas WHERE user = "Ana" ORDER BY cantidad ASC,user DESC LIMIT 5;