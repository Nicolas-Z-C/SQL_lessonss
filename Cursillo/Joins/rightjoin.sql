--Inverso del left xd

SELECT * FROM users
RIGHT JOIN DNIS 
ON users.user_id = DNIS.user_id 