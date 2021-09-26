use supermercado;
# Mostrar el listado de los nombres de las sedes ordenado alfabéticamente.
select 'Consulta 1';
select nombre from sede order by nombre asc;

# Mostar el listado de empleados (Cédula, Apellidos, Nombres, nombre de sede) paro los que trabajan en la sede de Norte, ordenado alfabéticamente por Apellidos.
select 'Consulta 2';
select empleado.num_cedula as Cedula, empleado.apellidos as Apellidos, empleado.nombre as Nombres, sede.nombre as Nombre_Sede
from empleado
join sede 
on empleado.id_sede = sede.id_sede and sede.nombre like "Norte"
order by empleado.apellidos asc;

# Mostar los nombres y apellidos de los empleados, y el número de la factura de las ventas efectuadas en la sede Colseguros, ordenado por numero de factura.
SELECT 'Consulta 3';
select empleado.nombre as Nombres, empleado.apellidos as Apellidos, factura.id_factura as Numero_factura, sede.nombre as Nombre_sede
from empleado
join factura
on empleado.num_cedula = id_empleado 
join sede
on empleado.id_sede = sede.id_sede and sede.nombre = "Colseguros"
order by factura.id_factura;

# Mostrar los nombres y apellidos de los empleados que han atendido al cliente de apellidos Prado y Nombres Johathan
select 'Consulta 4';
select empleado.nombre as Nombres, empleado.apellidos as Apellidos, cliente.apellidos as Apellidos_Cliente, cliente.nombres as Nombres_Cliente
from empleado
join factura
on empleado.num_cedula = factura.id_empleado
join cliente
on cliente.id_cliente = cliente.id_cliente
where cliente.apellidos like 'Prado' and cliente.nombres like 'Johathan';

# Mostrar cuantas ventas ha atendido el empleado José Díaz
select 'Consulta 5';
select count(id_factura) from factura
join empleado
on factura.id_empleado = empleado.num_cedula
where nombre like 'José' and apellidos like 'Díaz';



