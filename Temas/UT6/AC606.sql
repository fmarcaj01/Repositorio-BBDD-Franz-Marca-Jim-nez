-- 1
UPDATE productos p
JOIN proveedores prov ON p.proveedor_id = prov.id
SET p.precio = p.precio * 0.90
WHERE prov.ciudad = 'Madrid';

-- 2
UPDATE productos p
JOIN proveedores prov ON p.proveedor_id = prov.id
SET p.activo = FALSE
WHERE prov.activo = FALSE;

-- 3 
UPDATE productos p
JOIN proveedores prov ON p.proveedor_id = prov.id
SET p.activo = FALSE
WHERE prov.activo = FALSE;
