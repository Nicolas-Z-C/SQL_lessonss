--es una emulacion pues my sql realmente no tiene un full join, por eso usamos este bojote

SELECT * FROM users
LEFT JOIN DNIS 
ON users.user_id = DNIS.user_id 
UNION
SELECT * FROM users
RIGHT JOIN DNIS 
ON users.user_id = DNIS.user_id;