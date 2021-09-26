use supermercado;
#------------------------------------Empleado-------------------------------------------#

insert into empleado values(68031918,"Pérez","Luis",101);
insert into empleado values(12349349,"Díaz","José",103);
insert into empleado values(55819135,"Castro","Mateo",102);
insert into empleado values(67477886,"Daza","Martha",102);
insert into empleado values(29095159,"Bravo","Diana",101);
insert into empleado values(96640551,"Saavedra","Diego",104);
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