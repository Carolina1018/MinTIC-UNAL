drop schema if exists supermercado;
create schema supermercado;
use supermercado;

drop table if exists Cliente;
drop table if exists Producto;
drop table if exists Sede;

CREATE TABLE Cliente (
    id_cliente INTEGER PRIMARY KEY,
    apellidos VARCHAR(30) NOT NULL,
    nombres VARCHAR(30) NOT NULL,
    genero VARCHAR(1) NOT NULL,
    tenefono INTEGER NOT NULL
);

CREATE TABLE Producto (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    precio_unidad INT NOT NULL,
    stock INT NOT NULL
);

CREATE TABLE Sede (
    id_sede INT PRIMARY KEY,
    nombre VARCHAR(50),
    direccion VARCHAR(50) NOT NULL,
    telefono VARCHAR(15) NOT NULL
);

