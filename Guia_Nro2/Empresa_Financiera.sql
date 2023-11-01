create database if not exists Empresa_Financiera;
use Empresa_Financiera;

create table Empleados(
ID int primary key,
Nombre varchar(30),
Apellido varchar(30),
Puesto varchar(10));

create table Clientes(
ID int primary key,
Nombre varchar(30),
Apellido varchar(30),
Nro_identificación int);

create table Cuentas(
CBU int primary key,
Tipo_cuenta varchar(10),
ID_Cliente int,
foreign key (ID_Cliente) references Clientes(ID),
ID_Empleado int,
foreign key (ID_Empleado) references Empleados(ID),
Saldo decimal(7,2));

create table Transaccines(
ID_Transacción int primary key,
Nro_cuenta int,
foreign key (Nro_cuenta) references Cuentas(CBU),
Fecha date,
Tipo_Transacción varchar(10),
Monto decimal(7,2),
ID_Empleado int,
foreign key (ID_Empleado) references Empleados(ID));

insert into Empleados(ID, Nombre, Apellido, Puesto) values
(123456, 'María', 'Gómez', 'Cajero'),
(987654, 'Juan', 'Pérez', 'Agente'),
(456789, 'Ana', 'Rodríguez', 'Gerente'),
(555555, 'Luis', 'Fernández', 'Cajero'),
(777777, 'Sofía', 'López', 'Agente'),
(888888, 'Carlos', 'Martínez', 'Gerente'),
(111111, 'Laura', 'Díaz', 'Cajero');

insert into Clientes(ID,Nombre,Apellido,Nro_identificación) values
(135792, 'María', 'González', 27062022),
(246813, 'Juan', 'Pérez', 15082023),
(579321, 'Ana', 'Martínez', 31052022),
(864209, 'Luis', 'Hernández', 08122023),
(753951, 'Sofía', 'López', 19032022),
(642078, 'Carlos', 'Torres', 21092023),
(987123, 'Laura', 'Díaz', 29062022);