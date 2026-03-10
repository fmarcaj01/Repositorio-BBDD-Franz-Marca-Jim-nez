-- 1. Inserción de proveedores (Básica)
-- Inserción explícita (Proveedor 1)
INSERT INTO proveedores (id, nombre, ciudad, activo) 
VALUES (1, 'Tech Supplies S.A.', 'Madrid', TRUE);

-- Inserción omitiendo columnas (Proveedor 2)
INSERT INTO proveedores 
VALUES (2, 'Global Components', 'Barcelona', TRUE);

-- Inserción estándar (Proveedor 3)
INSERT INTO proveedores (nombre, ciudad) 
VALUES ('Silicon Valley Parts', 'Valencia');

-- 2. Inserción de clientes (Múltiple)
INSERT INTO clientes (nombre, email, saldo) VALUES 
('Juan Pérez', 'juan.perez@email.com', 150.50),
('María García', 'm.garcia@email.com', 0.00),
('Carlos López', 'clopez@email.com', 500.25),
('Ana Martínez', 'ana.mtz@email.com', 10.00);
-- 3. Inserción de productos
INSERT INTO productos (nombre, precio, stock, proveedor_id) VALUES 
('Teclado Mecánico RGB', 85.00, 50, 1),
('Ratón Óptico Inalámbrico', 45.99, 120, 1),
('Monitor 27" 4K', 350.00, 15, 2),
('Memoria RAM 16GB DDR4', 75.50, 40, 3),
('Disco SSD 1TB NVMe', 110.00, 30, 2);