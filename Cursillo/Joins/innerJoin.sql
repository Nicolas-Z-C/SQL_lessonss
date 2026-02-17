---Nos permite encontrar datos coincidenciales de dos tablas, por ejemplo
/*
Deseamos ver los usuarios y sus DNIS estos estan en dos tablas diferentes
para esto vamos a usar un inner join, el cual retornara las coincidencias
*/

SELECT * FROM users
INNER JOIN DNIS --Se apunta a la tabla con la que se hara el join
ON users.user_id = DNIS.user_id --Se usa la clave foranea de DNIS para asi poder traer los datos coincidenciales