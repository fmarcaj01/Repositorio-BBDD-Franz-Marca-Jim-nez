-- 1
UPDATE productos e
JOIN proveedores p ON e.proveedor_id = p.id
SET e.precio = Round(e.precio - (e.precio * 0.10),2)
WHERE p.ciudad = 'Madrid';

-- 2
UPDATE productos e
JOIN proveedores p ON p.proveedor_id = p.id
SET e.activo = FALSE
WHERE p.nombre = 'GlobalTech SA';

-- 3 
delete p
from productos e
join proveedores p on e.proveedor_id = p.id
where p.ciudad = 'Barcelonaa' and e.stock = 0 
