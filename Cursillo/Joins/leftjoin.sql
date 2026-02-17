--Nos trae TODOS los datos de la tabla izquierda (del select) y las coincidencias que haya si las hay con la tabla apuntada

SELECT * FROM users
LEFT JOIN DNIS 
ON users.user_id = DNIS.user_id 