create database if not exists kiosko;
use kiosko;

create table Empleados(
ID_Empleados int not null primary key,
Nombre varchar(30),
Apellido varchar(30),
-- Cargo varchar(20),
Fecha_contratación date,
Salario decimal(7,2));

create table Productos(
ID_Producto int,
Nombre_Producto varchar(30),
Precio decimal(4,2),
Stock int);

create table Tipo_Producto(
ID_Tipo_Producto int primary key,
Nombre_Tipo_Producto varchar(30));

create table Comprobantes(
ID_Comprobantes int primary key,
Fecha_Venta date,
ID_Empleado int,
foreign key (ID_Empleado) references Empleados(ID_Empleados),
Total_Venta decimal(6,2));

insert into Empleados(Nombre,Apellido,Cargo,Fecha_contratación,Salario) values
('María', 'González', 'Repositor', '25-05-2023', 69800.00),
('Juan', 'Pérez', 'Caja', '12-08-2023', 70450.00),
('Ana', 'Martínez', 'Encargado', '30-05-2022', 71500.00),
('Luis', 'Hernández', 'Repositor', '07-12-2023', 71200.00),
('Sofía', 'López', 'Caja', '14-03-2022', 70350.00),
('Carlos', 'Torres', 'Encargado', '18-09-2023', 69700.00),
('Laura', 'Díaz', 'Repositor', '29-06-2022', 70100.00);

alter table empleados
add Cargo varchar(10);
