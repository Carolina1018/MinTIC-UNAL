#----------------------------------TablasPK--------------------------------------------#

drop schema if exists supermercado;
create schema supermercado;
use supermercado;

drop table if exists Cliente;
drop table if exists Producto;
drop table if exists Sede;

create table Cliente(
	id_cliente integer primary key,
    apellidos varchar(30) not null,
    nombres varchar(30) not null,
    genero varchar(1) not null,
    tenefono integer not null
);

create table Producto(
	id_producto int primary key,
    nombre varchar(30) not null,
    precio_unidad int not null,
    stock int not null
);

create table Sede(
	id_sede int primary key,
    nombre varchar(50),
    direccion varchar(50) not null,
    telefono varchar(15) not null
);

#------------------------------------Cliente-------------------------------------------#

insert into cliente values (1112482728,"Rada","Jennifer","F",4569887);
insert into cliente values (31322858,"Albán","Elissa","F",3569856);
insert into cliente values (1144182152,"Losada","Stephania","F",8975624);
insert into cliente values (1144138193,"Prado","Johathan","M",3654897);
insert into cliente values (1130679339,"Osorio","Yimy","F",6589748);
insert into cliente values (67018365,"Cortes","Jhon","M",4657867);
insert into cliente values (1059448353,"Arcila","Angélica","F",6665234);
insert into cliente values (1144128511,"Bustamante","Eliana","F",4599899);
insert into cliente values (1130643373,"Montaño","Robert","M",4658796);
insert into cliente values (38680509,"Osorio","Juan","M",3254567);
insert into cliente values (1107074369,"Cruz","David","M",4562358);
insert into cliente values (1143841231,"Murillo","Julieth","F",5874758);

#------------------------------------Producto-------------------------------------------#

insert producto values (1001,"Arroz Mintic 500 grs",2500,500);
insert producto values (1002,"Aceite de Palma 600 ml",4500,200);
insert producto values (1003,"Aceite de Palma 1200 ml",8000,350);
insert producto values (1004,"Café Mintic 500 grs",3000,1000);
insert producto values (1005,"Café Mintic 250 grs",1850,800);
insert producto values (1006,"Café Mintic 1000 grs",5500,500);
insert producto values (1007,"Panela Unidad",2000,1230);
insert producto values (1008,"Sal Mintic 500 grs",2350,450);
insert producto values (1009,"Sal Mintic 1000 grs",5200,650);
insert producto values (1010,"Harina 500 grs",1800,456);
insert producto values (1011,"Panal de Huevos 30",8000,100);
insert producto values (1012,"Atún Mintic 500 grs",4500,870);

#------------------------------------Sede-------------------------------------------#

insert into sede values (101, "Norte","Calle 66 # 24-65", "6678945");
insert into sede values (102, "Sur", "Carrera 100 # 45-67", "5569874");
insert into sede values (103, "Colseguros", "Av. 9 # 78-23", "3356245");
insert into sede values (104, "Champagna", "Calle 34 # 43-65", "4659878");
insert into sede values (105, "Cambulos", "Carrea 1 # 45-23", "3255648");
insert into sede values (106, "Alameda", "Carrea 1 # 45-23", "3255748");

#------------------------------------TablasFK----------------------------------------#

drop table if exists Empleado;
drop table if exists Factura;
drop table if exists Facturadetalle;

create table Empleado(
	num_cedula int primary key,
    nombre varchar(30) not null,
    apellidos varchar(30) not null,
    id_sede int not null,
    foreign key (id_sede) references Sede (id_sede)
);

create table Factura(
	id_factura int primary key,
    fecha datetime not null,
    monto_total int not null,
    id_empleado int not null,
    id_cliente int not null,
    foreign key (id_empleado) references Empleado (num_cedula),
    foreign key (id_cliente) references Cliente (id_cliente)
);

create table FacturaDetalle(
	id_detalle int primary key,
    cantidad int not null,
    precio int not null,
    id_factura int not null,
    id_producto int not null,
    foreign key (id_factura) references Factura (id_factura),
    foreign key (id_producto) references Producto (id_producto)
);


#------------------------------------Empleado-------------------------------------------#

insert into empleado values(68031918,"Pérez","Luis","Norte");
insert into empleado values(12349349,"Díaz","José","Colseguros");
insert into empleado values(55819135,"Castro","Mateo","Sur");
insert into empleado values(67477886,"Daza","Martha","Sur");
insert into empleado values(29095159,"Bravo","Diana","Norte");
insert into empleado values(9664055,"Saavedra","Diego","Alameda");
insert into empleado values(28495554,"Sánchez","María","Sur");
insert into empleado values(67802388,"Carabalí","Julio","Sur");
insert into empleado values(61783485,"Fernández","Yiemi","Norte");
insert into empleado values(53673042,"Cabezas","Patricia","Colseguros");
insert into empleado values(28822236,"Benalcázar","Daniela","Norte");
insert into empleado values(19644289,"Tello","Marcela","Cambulos");

insert into empleado values(68031918,"Pérez","Luis",101);
insert into empleado values(12349349,"Díaz","José",103);
insert into empleado values(55819135,"Castro","Mateo",102);
insert into empleado values(67477886,"Daza","Martha",102);
insert into empleado values(29095159,"Bravo","Diana",101);
insert into empleado values(9664055,"Saavedra","Diego",104);
insert into empleado values(28495554,"Sánchez","María",102);
insert into empleado values(67802388,"Carabalí","Julio",102);
insert into empleado values(61783485,"Fernández","Yiemi",101);
insert into empleado values(53673042,"Cabezas","Patricia",103);
insert into empleado values(28822236,"Benalcázar","Daniela",101);
insert into empleado values(19644289,"Tello","Marcela",105);

#------------------------------------Factura-------------------------------------------#

insert into factura values(101,"2020-03-16 18:30:20",41500,68031918,1107074369);
insert into factura values(102,"2020-03-17 14:30:20",9000,12349349,1143841231);
insert into factura values(103,"2020-03-17 18:30:20",11400,12349349,1112482728);
insert into factura values(104,"2020-03-18 11:30:20",14850,12349349,31322858);
insert into factura values(105,"2020-03-18 18:30:20",39050,68031918,1144182152);
insert into factura values(106,"2020-03-19 18:30:20",10400,68031918,1144138193);
insert into factura values(107,"2020-03-20 17:30:20",24000,12349349,1130679339);
insert into factura values(108,"2020-03-20 18:30:20",12500,68031918,67018365);
insert into factura values(109,"2020-03-21 17:30:20",32000,68031918,1059448353);
insert into factura values(110,"2020-03-21 18:30:20",15600,12349349,1144128511);
insert into factura values(111,"2020-03-22 17:30:20",22500,68031918,67018365);
insert into factura values(112,"2020-03-22 18:30:20",16000,12349349,38680509);

#------------------------------------FacturaDetalle-------------------------------------------#

insert into facturaDetalle(id_detalle,id_factura,cantidad,precio,id_producto) values(1,101,4,2500,1001);
insert into facturaDetalle(id_detalle,id_factura,cantidad,precio,id_producto) values(2,101,2,4500,1002);
insert into facturaDetalle(id_detalle,id_factura,cantidad,precio,id_producto) values(3,101,5,4500,1012);
insert into facturaDetalle(id_detalle,id_factura,cantidad,precio,id_producto) values(4,102,3,3000,1004);
insert into facturaDetalle(id_detalle,id_factura,cantidad,precio,id_producto) values(5,103,3,1800,1010);
insert into facturaDetalle(id_detalle,id_factura,cantidad,precio,id_producto) values(6,103,3,2000,1007);
insert into facturaDetalle(id_detalle,id_factura,cantidad,precio,id_producto) values(7,104,1,2350,1008);
insert into facturaDetalle(id_detalle,id_factura,cantidad,precio,id_producto) values(8,104,1,4500,1012);
insert into facturaDetalle(id_detalle,id_factura,cantidad,precio,id_producto) values(9,104,1,8000,1011);
insert into facturaDetalle(id_detalle,id_factura,cantidad,precio,id_producto) values(10,105,3,2350,1008);
insert into facturaDetalle(id_detalle,id_factura,cantidad,precio,id_producto) values(11,105,4,8000,1003);
insert into facturaDetalle(id_detalle,id_factura,cantidad,precio,id_producto) values(12,106,2,5200,1009);
insert into facturaDetalle(id_detalle,id_factura,cantidad,precio,id_producto) values(13,107,3,8000,1003);
insert into facturaDetalle(id_detalle,id_factura,cantidad,precio,id_producto) values(14,108,5,2500,1001);
insert into facturaDetalle(id_detalle,id_factura,cantidad,precio,id_producto) values(15,109,4,8000,1011);
insert into facturaDetalle(id_detalle,id_factura,cantidad,precio,id_producto) values(16,110,3,5200,1009);
insert into facturaDetalle(id_detalle,id_factura,cantidad,precio,id_producto) values(17,111,5,4500,1012);
insert into facturaDetalle(id_detalle,id_factura,cantidad,precio,id_producto) values(18,112,2,8000,1011);



#-----------------------------Modificaciones-----------------------------------------------------#

"Cambiar el teléfono de la sede Colseguros por 65838529"
update sede 
set telefono = '65838529'
where nombre like 'Colseguros';

"Cambiar los apellidos del cliente Murillo Julieth por Trujillo"
update cliente
set apellidos = 'Trujillo'
where nombres like 'Julieth' and apellidos like 'Murillo';

"Borrar el detalle con código de producto 1012 de la factura 104"
select * from facturadetalle;
delete facturadetalle from facturadetalle
where id_producto = 1012 and id_factura = 104;
select * from facturadetalle;


#----------------------------------Consultas-----------------------------------------------------#

"Mostrar el listado de los nombres de las sedes ordenado alfabéticamente."
select 'Consulta 1';
select nombre from sede order by nombre asc;

"Mostar el listado de empleados (Cédula, Apellidos, Nombres, nombre de sede) paro los que trabajan en la sede de Norte, ordenado alfabéticamente por Apellidos."
select 'Consulta 2';
select empleado.num_cedula as Cedula, empleado.apellidos as Apellidos, empleado.nombre as Nombres, sede.nombre as Nombre_Sede
from empleado
join sede 
on empleado.id_sede = sede.id_sede and sede.nombre like "Norte"
order by empleado.apellidos asc;

"Mostar los nombres y apellidos de los empleados, y el número de la factura de las ventas efectuadas en la sede Colseguros, ordenado por numero de factura."
SELECT 'Consulta 3';
select empleado.nombre as Nombres, empleado.apellidos as Apellidos, factura.id_factura as Numero_factura, sede.nombre as Nombre_sede
from empleado
join factura
on empleado.num_cedula = id_empleado 
join sede
on empleado.id_sede = sede.id_sede and sede.nombre = "Colseguros"
order by factura.id_factura;

"Mostrar los nombres y apellidos de los empleados que han atendido al cliente de apellidos Prado y Nombres Johathan"
select 'Consulta 4';
select empleado.nombre as Nombres, empleado.apellidos as Apellidos, cliente.apellidos as Apellidos_Cliente, cliente.nombres as Nombres_Cliente
from empleado
join factura
on empleado.num_cedula = factura.id_empleado
join cliente
on cliente.id_cliente = cliente.id_cliente
where cliente.apellidos like 'Prado' and cliente.nombres like 'Johathan';

"Mostrar cuantas ventas ha atendido el empleado José Díaz"
select 'Consulta 5';
select count(id_factura) from factura
join empleado
on factura.id_empleado = empleado.num_cedula
where nombre like 'José' and apellidos like 'Díaz';
