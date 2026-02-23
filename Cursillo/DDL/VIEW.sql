CREATE VIEW v_nvista AS
SELECT atributo1,atributo2 
FROM n_tabla
WHERE condificion; 

SELECT * FROM v_nvista;

DROP VIEW v_nvista;

/*
Las vistas generan una tabla fictioa donde se muestran los datos que agrupamos, estas vistas son regenerativas al igual que los indices
por tanto se deben manejar con cuidado pues podria bajar el rendiemiento de nuestra app
*/