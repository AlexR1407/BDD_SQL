CREATE DATABASE IF NOT EXISTS escuela;
USE escuela;
drop database escuela;

create table Alumnos(
DNI int primary key,
Nombre varchar(255),
Apellido varchar(255),
Curso varchar(10)
);
create table Cursos(
idCurso int auto_increment primary key,
Curso int