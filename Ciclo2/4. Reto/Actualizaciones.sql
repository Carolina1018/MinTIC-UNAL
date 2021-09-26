use supermercado;
# Cambiar el teléfono de la sede Colseguros por 65838529
update sede 
set telefono = '65838529'
where nombre like 'Colseguros';

# Cambiar los apellidos del cliente Murillo Julieth por Trujillo
update cliente
set apellidos = 'Trujillo'
where nombres like 'Julieth' and apellidos like 'Murillo';

# Borrar el detalle con código de producto 1012 de la factura 104
select * from facturadetalle;
delete facturadetalle from facturadetalle
where id_producto = 1012 and id_factura = 104;
select * from facturadetalle;