-- 1 Inserción Ignorando Errores
INSERT IGNORE INTO clientes (nombre, email, saldo) 
VALUES ('Ana García', 'ana@email.com', 0.00);

-- 2 Actualizar al Insertar
INSERT INTO clientes (nombre, email, saldo) 
VALUES ('Luis Perez', 'luis@email.com', 5.00)
ON DUPLICATE KEY UPDATE saldo = saldo + 5.00;

-- 3 Inserción con Sintaxis
INSERT INTO productos 
SET nombre = 'Auriculares Inalámbricos', 
    precio = 29.99, 
    stock = 15, 
    proveedor_id = 2;
-- 4
-- Insertamos el nuevo proveedor
INSERT INTO proveedores (nombre, ciudad) 
VALUES ('Componentes Sur', 'Sevilla');

-- Insertamos el producto asociado usando el ID recién creado
INSERT INTO productos (nombre, precio, stock, proveedor_id) 
VALUES ('Cable HDMI 2M', 8.50, 30, LAST_INSERT_ID());