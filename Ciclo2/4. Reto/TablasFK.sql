use supermercado;
drop table if exists Empleado;
drop table if exists Factura;
drop table if exists Facturadetalle;

create table Empleado(
	num_cedula int primary key,
    apellidos varchar(30) not null,
    nombre varchar(30) not null,    
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

