use master

create database empresa
go
use empresa

create table Empleados
(
	numeroFunc int primary key,
	pass varchar(20)
)

create table Jornalero
(
	numeroFunc int foreign key References Empleados(numeroFunc),
	cantHoras int,
	precioHora int
)

create table Asalariado
(
	numeroFunc int foreign key References Empleados(numeroFunc),
	sueldo int
)

go

insert Empleados values (11, 'aa')
insert Empleados values (22, 'bb')
insert Empleados values (33, 'cc')

insert Jornalero values (11, 100, 250)
insert Jornalero values (22, 160, 350)

insert Asalariado values (33, 45000)

go
create proc sp_Login_Jornalero
@numFunc int,
@pass varchar(20)
as
begin
	SELECT e.numeroFunc, e.pass, j.cantHoras, j.precioHora
	FROM Empleados e
		inner  join Jornalero j on e.numeroFunc = j.numeroFunc
	WHERE e.numeroFunc =@numFunc AND e.pass = @pass
end

go
create proc sp_Login_Asalariado
@numFunc int,
@pass varchar(20)
as
begin
	SELECT e.numeroFunc, e.pass, a.sueldo
	FROM Empleados e
		inner  join Asalariado a on e.numeroFunc = a.numeroFunc
		WHERE e.numeroFunc =@numFunc AND e.pass = @pass
end
