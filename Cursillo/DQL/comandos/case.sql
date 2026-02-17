SELECT *,
CASE 
 WHEN X > Y THEN true
 ELSE false
END AS ff
FROM w; 