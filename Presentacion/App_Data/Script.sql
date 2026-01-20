use master

if exists (select * from sys.databases where name = 'Empresa')
begin
	drop database Empresa
end

go

CREATE DATABASE Empresa
go

use Empresa

CREATE TABLE Empleados
(
	numeroFunc int primary key,
	pass varchar(20),
	nombre varchar(20)
)

CREATE TABLE Jornaleros
(
	numeroFunc int foreign key REFERENCES Empleados (numeroFunc) primary key,
	cantHoras int,
	precioHora int
)

CREATE TABLE Asalariados
(
	numeroFunc int foreign key REFERENCES Empleados (numeroFunc) primary key,
	sueldo int
)

go
INSERT Empleados VALUES (1, 'aa', 'Mario')
INSERT Empleados VALUES (2, 'bb', 'Juan')
INSERT Empleados VALUES (3, 'cc', 'Pedro')
INSERT Empleados VALUES (4, 'dd', 'Ana')

go
INSERT Jornaleros VALUES(1, 160, 310)
INSERT Jornaleros VALUES(2, 210, 110)

INSERT Asalariados VALUES (3, 45000)
INSERT Asalariados VALUES (4, 85000)

go
CREATE PROC sp_Login_Jornalero
@numFunc int,
@pass varchar(20)
as
begin
	SELECT e.numeroFunc, e.pass, j.cantHoras, j.precioHora, e.nombre
	FROM Empleados e 
		inner join Jornaleros j ON e.numeroFunc = j.numeroFunc
	WHERE e.numeroFunc = @numFunc AND e.pass = @pass
end

go
CREATE PROC sp_Login_Asalariado
@numFunc int,
@pass varchar(20)
as
begin
	SELECT e.numeroFunc, e.pass, a.sueldo, e.nombre
	FROM Empleados e 
		inner join Asalariados a ON e.numeroFunc = a.numeroFunc
	WHERE e.numeroFunc = @numFunc AND e.pass = @pass
end