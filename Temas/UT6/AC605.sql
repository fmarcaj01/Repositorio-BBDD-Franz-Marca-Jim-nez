-- 1 
INSERT IGNORE INTO clientes (id, nombre, email, saldo) 
VALUES (1, 'Ana García', 'ana@example.com', 0.00);

INSERT INTO pedidos (id, cliente_id, total, estado) 
VALUES (100, 1, 50.00, 'PENDIENTE');

DELETE FROM clientes WHERE id = 1;

-- 2 
INSERT IGNORE INTO proveedores (id, nombre) VALUES (1, 'Proveedor Genérico');
INSERT IGNORE INTO productos (id, nombre, precio, proveedor_id) VALUES (1, 'Teclado BT', 25.00, 1);

INSERT INTO pedidos (id, cliente_id, total) VALUES (200, 1, 25.00);
INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, precio_unitario) 
VALUES (200, 1, 1, 25.00);

DELETE FROM pedidos WHERE id = 200;

SELECT * FROM detalle_pedido WHERE pedido_id = 200;

-- 3 
INSERT INTO proveedores (id, nombre, ciudad) VALUES (88, 'Proveedor Test', 'Pruebas');

INSERT INTO productos (nombre, precio, proveedor_id) 
VALUES ('Ratón de Pruebas', 15.00, 88);

DELETE FROM proveedores WHERE id = 88;

SELECT nombre, proveedor_id FROM productos WHERE nombre = 'Ratón de Pruebas';