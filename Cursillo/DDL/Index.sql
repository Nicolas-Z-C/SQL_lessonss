CREATE INDEX idx_n_atributo_n_atributo2 ON n_tabla(n_atributo, n_atributo2);
CREATE UNIQUE INDEX idx_n_atributo_n_atributo2 ON n_tabla(n_atributo, n_atributo2);

DROP INDEX idx_n_atributo_n_atributo2 ON n_tabla;