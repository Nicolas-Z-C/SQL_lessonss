-- 1. Iniciar
START TRANSACTION;

-- 2. Ejecutar operaciones
UPDATE cuentas SET saldo = saldo - 100 WHERE id = 1;
UPDATE cuentas SET saldo = saldo + 100 WHERE id = 2;

---Es util usar un if o algo que checkee lo que requeramos

-- 3. Si todo está bien, confirmar
COMMIT;

-- O si algo falla, revertir:
-- ROLLBACK;