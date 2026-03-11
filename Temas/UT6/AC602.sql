-- 1 Inserción Ignorando Errores
UPDATE productos 
SET precio = 12.50 
WHERE nombre = 'Ratón Óptico X1';

-- 2 Actualizar al Insertar
UPDATE productos 
SET precio = precio * 1.05 
WHERE precio < 50;

-- 3 Inserción con Sintaxis
UPDATE proveedores 
SET nombre = 'GlobalTech SA', ciudad = 'Tarragona' 
WHERE nombre = 'InforGlobal';
-- 4
UPDATE clientes 
SET saldo = saldo * 1.10 
WHERE saldo > 100;

-- 5 
UPDATE productos 
SET precio = precio * 1.15 
WHERE proveedor_id = (
    SELECT id 
    FROM proveedores 
    WHERE nombre = 'ElectroComponentes'
);
);