/*
Creacion de un usuario y dar privilegios
*/

CREATE USER 'usuario'@'localhost' 
IDENTIFIED BY 'Contrasena'; 

--borrar usuario

DROP USER 'usuario'@'localhost';
--damos privilegios (ALL PRIVILEGES es todos los comandos, aun asi podemos poner comandos exactos y separarlos por una coma)

GRANT ALL PRIVILEGES ON n_basedatos 
TO 'usuario'@'localhost';

---quitamos privilegios

REVOKE comando ON n_basedatos 
FROM 'usuario'@'localhost'

---Podemos delimitar por tablas e inclusive columnas a los privilegios

GRANT ff ON nbase.ntabla 

GRANT ff(columnas) ON nbase.ntabla 