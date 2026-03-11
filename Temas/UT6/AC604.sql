-- 1 
DELETE FROM clientes 
WHERE nombre = 'Marta Lopez';

-- Comprobación
SELECT * FROM clientes WHERE nombre = 'Marta Lopez';

-- 2 
DELETE FROM clientes 
WHERE email LIKE '%@test.com';

-- 3 
DELETE FROM productos 
WHERE proveedor_id IN (
    SELECT id 
    FROM proveedores 
    WHERE ciudad = 'Valencia'
);