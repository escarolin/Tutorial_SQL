Create DataBase TutorialSQL
Go
Use TutorialSQL
GO

--1.Agenda
Create Table Agenda(
Apellido varchar(30),
Nombre varchar(20),
Domicilio varchar(30),
Telefono varchar(11)
)

insert into Agenda (Apellido, Nombre, Domicilio, Telefono)
  values ('Moreno','Alberto','Colon 123','4234567')

 insert into Agenda (Apellido,Nombre, Domicilio, Telefono)
  values ('Torres','Juan','Avellaneda 135','4458787')
   
Select * From Agenda
Go

--2.BibliotecaPersonal
Create Table Libros(
Titulolibro varchar(30),
NombreAutor varchar(30), 
NombreEditorial varchar(40)
)

insert into Libros (Titulolibro,NombreAutor,NombreEditorial)
  values ('El aleph','Borges','Planeta');

 insert into Libros (Titulolibro,NombreAutor,NombreEditorial) 
  values ('Martin Fierro','Jose Hernandez','Emece');
 
 insert into Libros (Titulolibro,NombreAutor,NombreEditorial)
  values ('Aprenda PHP','Mario Molina','Emece');

Select * From Libros
Go

--3.VideoClub
Create Table Peliculas(
Nombre varchar(20),
Actor varchar(20),
Duracion integer,
Cantidad integer
)

insert into peliculas (Nombre, Actor, Duracion, Cantidad)
  values ('Mision imposible','Tom Cruise',128,3);

 insert into peliculas (Nombre, Actor, Duracion, Cantidad)
  values ('Mision imposible 2','Tom Cruise',130,2);

 insert into peliculas (Nombre, Actor, Duracion, Cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);

 insert into peliculas (Nombre, Actor, Duracion, Cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

  Select * From Peliculas
  Go

--5.Empleado
if object_id('Empleados') is not null
drop table Empleados;

Create Table Empleados(
Nombre varchar(20),
Documento varchar(8),
Sexo varchar(1),
Domicilio varchar(30),
SueldoBasico float
)


insert into Empleados (Nombre, Documento, Sexo, Domicilio, SueldoBasico)
 values ('Juan Perez','22333444','m','Sarmiento 123',500);

insert into Empleados (Nombre, Documento, Sexo, Domicilio, SueldoBasico)
 values ('Ana Acosta','24555666','f','Colon 134',650);

insert into Empleados (Nombre, Documento, Sexo, Domicilio, SueldoBasico)
 values ('Bartolome Barrios','27888999','m','Urquiza 479',800);

Select * From Empleados
Go

--6.Recuperar algunos registros (where)

if OBJECT_ID('agenda') is not null
drop table agenda;

create table agenda(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);

---Muestra las columnas de de agendas
exec sp_columns agenda;

insert into agenda(apellido,nombre,domicilio,telefono)
values('Acosta','ana','colon 123','142536');

insert into agenda(apellido,nombre,domicilio,telefono) 
values('Lopez', 'Hector', 'Salta 545', '4887788'); 

insert into agenda(apellido,nombre,domicilio,telefono) 
values('Lopez', 'Luis', 'Urquiza 333', '4545454');

insert into agenda(apellido,nombre,domicilio,telefono) 
values('Lopez', 'Marisa', 'Urquiza 333', '4545454');

---seleciona la agenda
select * from agenda;

--Seleccione el registro cuyo nombre sea "Marisa" (1 registro)
select * from agenda where nombre = 'marisa';
---seleciona los nombres y apellidos que contenga el apellido lopez
select nombre, domicilio from agenda where apellido = 'Lopez';
--Muestre el nombre de quienes tengan el teléfono "4545454" (2 registros)
select nombre from agenda where telefono ='454545';
Go

--7.BiliotecaPersonal

if object_id('Libros') is not null
  drop table Libros;

Create Table Libros(
Titulolibro varchar(30),
NombreAutor varchar(30), 
NombreEditorial varchar(40)
)

insert into Libros (Titulolibro,NombreAutor,NombreEditorial)
  values ('El aleph','Borges','Planeta');

 insert into Libros (Titulolibro,NombreAutor,NombreEditorial) 
  values ('Martin Fierro','Jose Hernandez','Emece');
 
 insert into Libros (Titulolibro,NombreAutor,NombreEditorial)
  values ('Aprenda PHP','Mario Molina','Emece');

Select * From Libros

--seleciona el libro y el autor
select * from Libros where NombreAutor='Borges';
--seleciona el titulo de libro
select Titulolibro from Libros where NombreEditorial='Emece';
--seleciona el editorial del libro
select NombreEditorial from Libros where Titulolibro='Martin Fierro';
Go

--8.Articulos
if object_id('articulos') is not null
  drop table articulos;

create table articulos(
codigo integer,
nombre varchar(20),
descripcion varchar(30),
precio float,
cantidad integer
)
exec sp_columns articulos;

insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (5,'teclado','español Biswal',90,50);


 select *from articulos
  where nombre='impresora';

 select *from articulos
  where precio>=400;

 select codigo,nombre
  from articulos
  where cantidad<30;

 select nombre, descripcion
  from articulos
  where precio<>100;

Go

---9

 if object_id('agenda') is not null
  drop table agenda;

  create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );


 --ingresar registro a la agenda
insert into agenda (apellido,nombre,domicilio,telefono)
values ('Acosta','Alberto','Colon 123','4234567');
insert into agenda (apellido,nombre,domicilio,telefono)
values ('Juarez','Juan','Avellaneda 135','4458787');
insert into agenda (apellido,nombre,domicilio,telefono)
values ('Lopez','Maria','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono)
values ('Lopez','Jose','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono)
values ('Suarez','Susana','Gral. Paz 1234','4123456');

--muestra la tabla de la agenda
select * from agenda;

--- Modifique el registro cuyo nombre sea "Juan" por "Juan Jose" (1 registro afectad)
update agenda set nombre='Juan Jose' where nombre='Juan';

select * from agenda;
---actualiza los nomeros telefonicos que sea igual y lo cambia por el que sele asigna
update agenda set telefono='4445566' where telefono='4545454';

select * from agenda;
--actualiza os registro que tengan un nombre por otro nombre
update agenda set nombre='Juan Jose' where nombre='Juan';

--muestra la tabla de la agenda
select * from agenda;


---2do problema
if object_id('libros') is not null
drop table libros;

create table libros (
titulo varchar(30),
autor varchar(20),
editorial varchar(15),
precio float
);
--insertar registro a la tabla libros
insert into libros (titulo, autor, editorial, precio)
values ('El aleph','Borges','Emece',25.00);
insert into libros (titulo, autor, editorial, precio)
values ('Martin Fierro','Jose Hernandez','Planeta',35.50);
insert into libros (titulo, autor, editorial, precio)
values ('Aprenda PHP','Mario Molina','Emece',45.50);
insert into libros (titulo, autor, editorial, precio)
values ('Cervantes y el quijote','Borges','Emece',25);
insert into libros (titulo, autor, editorial, precio)
values ('Matematica estas ahi','Paenza','Siglo XXI',15);

--muestra la tabla de la libros
select * from libros;

---cambia los nombres
update libros set autor='Adrian Paenza' where autor='Paenza';

--muestra la tabla de la libros
select * from libros;

update libros set autor='Adrian Paenza' where autor='Paenza';

--muestra la tabla de la libros
select * from libros;

--cambia el precio por uno que sele asigne
update libros set precio=27 where autor='Mario Molina';

--muestra la tabla de la libros
select * from libros;

---actuliza los registros y los cambia de Emece a Emece S.A
update libros set editorial='Emece S.A.' where editorial='Emece';

--muestra la tabla de la libros
select * from libros;

----11--

create table medicamentos(
codigo integer not null,
nombre varchar(20) not null,
laboratorio varchar(20),
precio float,
cantidad integer not null
);
--muestra la estructura dela tabla medicamento
exec sp_columns medicamentos;

--insertar algunos valores "null" rara los campos que los admitan:
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(1,'Sertal gotas',null,null,100); 
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(2,'Sertal compuesto',null,8.90,150);
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(3,'Buscapina','Roche',null,200);

--muestra todos los registro
select * from medicamentos;

-- Ingrese un registro con valor "0" para el precio y cadena vacía para el laboratorio:
insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
values(4,'Bayaspirina','',0,150);

--muestra todos los registro
select * from medicamentos;

---Ingrese un registro con valor "0" para el código y cantidad y cadena vacía para el nombre:
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(0,'','Bayer',15.60,0);

--muestra todos los registro
select * from medicamentos;

---Intente ingresar un registro con valor nulo para un campo que no lo admite (aparece un mensaje de error):
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(null,'Amoxidal jarabe','Bayer',25,120);

--Recupere los registros que contengan valor "null" en el campo "laboratorio", luego los que 
-- tengan una cadena vacía en el mismo campo. Note que el resultado es diferente.
select * from medicamentos where laboratorio is null;

-- Recupere los registros que contengan valor "null" en el campo "precio", luego los que tengan el 
--valor 0 en el mismo campo. Note que el resultado es distinto.
select * from medicamentos where laboratorio='';

-- Recupere los registros cuyo laboratorio no contenga una cadena vacía, luego los que sean 
-- distintos de "null".
select * from medicamentos where precio is null;

--- Recupere los registros cuyo precio sea distinto de 0, luego los que sean distintos de "null":
select * from medicamentos where precio=0;

---muestra la cantidad ma baja y la mas alta
select * from medicamentos where laboratorio<>'';

select * from medicamentos where laboratorio is not null;

select * from medicamentos where precio<>0;

select * from medicamentos where precio is not null;





---segundo

 if object_id('peliculas') is not null
  drop table peliculas;

  create table peliculas(
  codigo integer ,
  titulo varchar(40) not null,
  actor varchar(20),
  duracion integer
 );



 insert into peliculas (codigo,titulo,actor,duracion)
  values(1,'Mision imposible','Tom Cruise',120);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(2,'Harry Potter y la piedra filosofal',null,180);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(3,'Harry Potter y la camara secreta','Daniel R.',null);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(0,'Mision imposible 2','',150);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(4,'','L. Di Caprio',220);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(5,'Mujer bonita','R. Gere-J. Roberts',0);

----select

select * from peliculas;

-----Ingresar un valor nulo--

 insert into peliculas (codigo,titulo,actor,duracion)
  values(null,'Mujer bonita','R. Gere-J. Roberts',190);



  ---12

  if object_id('libros') is not null
drop table libros;

create table libros(
codigo int not null,
titulo varchar(40) not null,
autor varchar(20),
editorial varchar(15),
primary key(codigo)
);

insert into libros (codigo,titulo,autor,editorial)
values (1,'El aleph','Borges','Emece');
insert into libros (codigo,titulo,autor,editorial)
values (2,'Martin Fierro','Jose Hernandez','Planeta');
insert into libros (codigo,titulo,autor,editorial)
values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');
select * from libros;

insert into libros (codigo,titulo,autor,editorial)
values (2,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

insert into libros (codigo,titulo,autor,editorial)
values (null,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

update libros set codigo=1 where titulo='Martin Fierro';


--2do Problema

if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  legajo varchar(4) not null,
  documento varchar(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento),
  primary key(legajo)
 );

 create table alumnos(
  legajo varchar(4) not null,
  documento varchar(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );

 exec sp_columns alumnos;

 insert into alumnos (legajo,documento,nombre,domicilio)
  values('A233','22345345','Perez Mariana','Colon 234');
 insert into alumnos (legajo,documento,nombre,domicilio)
  values('A567','23545345','Morales Marcos','Avellaneda 348');

 insert into alumnos (legajo,documento,nombre,domicilio)
  values('A642','23545345','Gonzalez Analia','Caseros 444');

 insert into alumnos (legajo,documento,nombre,domicilio)
  values('A685',null,'Miranda Carmen','Uspallata 999');

  ---13--
if object_id('medicamentos') is not null
drop table medicamentos;

create table medicamentos(
codigo int identity,
nombre varchar(20) not null,
laboratorio varchar(20),
precio float,
cantidad integer
);

exec sp_columns medicamentos;

insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Sertal','Roche',5.2,100);
insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Buscapina','Roche',4.10,200);
insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Amoxidal 500','Bayer',15.60,100);

select * from medicamentos;

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
values(4,'Amoxilina 500','Bayer',15.60,100);

update medicamentos set codigo=5 where nombre='Bayaspirina';

delete from medicamentos where codigo=3;

insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Amoxilina 500','Bayer',15.60,100);

select * from medicamentos;


--2do problema

if object_id('peliculas') is not null
drop table peliculas;

create table peliculas(
codigo int identity,
titulo varchar(40),
actor varchar(20),
duracion int,
primary key(codigo)
);

exec sp_columns peliculas;

insert into peliculas (titulo,actor,duracion)
values('Mision imposible','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion)
values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into peliculas (titulo,actor,duracion)
values('Harry Potter y la camara secreta','Daniel R.',190);
insert into peliculas (titulo,actor,duracion)
values('Mision imposible 2','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion)
values('La vida es bella','zzz',220);

select * from peliculas;

update peliculas set codigo=7 where codigo=4;

delete from peliculas where titulo='La vida es bella';

insert into peliculas (titulo,actor,duracion)
values('Elsa y Fred','China Zorrilla',90);

select * from peliculas;


--14 - Otras características del atributo Identity

if object_id('medicamentos') is not null
drop table medicamentos;

create table medicamentos(
codigo integer identity(10,1),
nombre varchar(20) not null,
laboratorio varchar(20),
precio float,
cantidad integer
);

insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Sertal','Roche',5.2,100);
insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Buscapina','Roche',4.10,200);
insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Amoxidal 500','Bayer',15.60,100);

select * from medicamentos;

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
values(4,'Amoxilina 500','Bayer',15.60,100);

set identity_insert medicamentos on;

insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Amoxilina 500','Bayer',15.60,100);

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
values(10,'Amoxilina 500','Bayer',15.60,100);

select ident_seed('medicamentos');

 select ident_incr('medicamentos');

 ---2do Probema

if object_id('peliculas') is not null
drop table peliculas;

create table peliculas(
codigo int identity (50,3),
titulo varchar(40),
actor varchar(20),
duracion int
);

insert into peliculas (titulo,actor,duracion)
values('Mision imposible','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion)
values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into peliculas (titulo,actor,duracion)
values('Harry Potter y la camara secreta','Daniel R.',190);

select * from peliculas;

set identity_insert peliculas on;

insert into peliculas (codigo,titulo,actor,duracion)
values(20,'Mision imposible 2','Tom Cruise',120);

insert into peliculas (codigo, titulo,actor,duracion)
values(80,'La vida es bella','zzz',220);

select ident_seed('peliculas');

select ident_incr('peliculas');

insert into peliculas (titulo,actor,duracion)
values('Elsa y Fred','China Zorrilla',90);

set identity_insert peliculas off; 

insert into peliculas (titulo,actor,duracion)
values('Elsa y Fred','China Zorrilla',90);
select * from peliculas;


---15 - Truncate table

if object_id('alumnos') is not null
drop table alumnos;

create table alumnos(
legajo int identity,
documento varchar(8),
nombre varchar(30),
domicilio varchar(30)
);

insert into alumnos (documento,nombre,domicilio)
values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio)
values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio)
values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio)
values('25666777','Torres Ramiro','Dinamarca 209');

delete from alumnos;

insert into alumnos (documento,nombre,domicilio)
values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio)
values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio)
values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio)
values('25666777','Torres Ramiro','Dinamarca 209');

select * from alumnos;

truncate table alumnos;

insert into alumnos (documento,nombre,domicilio)
values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio)
values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio)
values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio)
values('25666777','Torres Ramiro','Dinamarca 209');

select * from alumnos;


----2do problema

if object_id('articulos') is not null
drop table articulos;

create table articulos(
codigo integer identity,
nombre varchar(20),
descripcion varchar(30),
precio float
);

insert into articulos (nombre, descripcion, precio)
values ('impresora','Epson Stylus C45',400.80);
insert into articulos (nombre, descripcion, precio)
values ('impresora','Epson Stylus C85',500);

truncate table articulos;

insert into articulos (nombre, descripcion, precio)
values ('monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio)
values ('teclado','ingles Biswal',100);
insert into articulos (nombre, descripcion, precio)
values ('teclado','español Biswal',90);
select * from articulos;

delete from articulos;

insert into articulos (nombre, descripcion, precio)
values ('monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio)
values ('teclado','ingles Biswal',100);
insert into articulos (nombre, descripcion, precio)
values ('teclado','español Biswal',90);
select * from articulos;




--- 17 - Tipo de dato (texto)
if object_id('autos') is not null
drop table autos;

create table autos(
patente char(6),
marca varchar(20),
modelo char(4),
precio float,
primary key (patente)
);

insert into autos
values('ACD123','Fiat 128','1970',15000);
insert into autos
values('ACG234','Renault 11','1990',40000);
insert into autos
values('BCD333','Peugeot 505','1990',80000);
insert into autos
values('GCD123','Renault Clio','1990',70000);
insert into autos
values('BCC333','Renault Megane','1998',95000);
insert into autos
values('BVF543','Fiat 128','1975',20000);

select * from autos
where modelo='1990';


----2do problema

if object_id('clientes') is not null
drop table clientes;

create table clientes(
documento char(8),
apellido varchar(20),
nombre varchar(20),
domicilio varchar(30),
telefono varchar (11)
);

insert into clientes
values('2233344','Perez','Juan','Sarmiento 980','4342345');
insert into clientes (documento,apellido,nombre,domicilio)
values('2333344','Perez','Ana','Colon 234');
insert into clientes
values('2433344','Garcia','Luis','Avellaneda 1454','4558877');
insert into clientes
values('2533344','Juarez','Ana','Urquiza 444','4789900');

select * from clientes where apellido='Perez';



---18 - Tipo de dato (numérico)

if object_id('cuentas') is not null
drop table cuentas;

create table cuentas(
numero int not null,
documento char(8),
nombre varchar(30),
saldo money,
primary key (numero)
);

insert into cuentas(numero,documento,nombre,saldo)
values('1234','25666777','Pedro Perez',500000.60);
insert into cuentas(numero,documento,nombre,saldo)
values('2234','27888999','Juan Lopez',-250000);
insert into cuentas(numero,documento,nombre,saldo)
values('3344','27888999','Juan Lopez',4000.50);
insert into cuentas(numero,documento,nombre,saldo)
values('3346','32111222','Susana Molina',1000);

select * from cuentas where saldo<4000;

select numero,saldo from cuentas where nombre='Juan Lopez';

select * from cuentas where saldo<0;

select * from cuentas where numero>=3000;

--19 - Tipo de dato (fecha y hora)

if object_id('alumnos') is not null
drop table alumnos;

create table alumnos(
apellido varchar(30),
nombre varchar(30),
documento char(8),
domicilio varchar(30),
fechaingreso datetime,
fechanacimiento datetime
);

set dateformat 'dmy';

insert into alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');

insert into alumnos values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');

insert into alumnos values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);

insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

select * from alumnos where fechaingreso<'1-1-91';

select * from alumnos where fechanacimiento is null;

insert into alumnos values('Rosas','Romina','28888888','Avellaneda 487','03151990',null);

set dateformat 'mdy';

insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

--20 - Ingresar algunos campos (insert into)

if object_id('cuentas') is not null
drop table cuentas;

create table cuentas(
numero int identity,
documento char(8) not null,
nombre varchar(30),
saldo money
);

insert into cuentas
values (1,'25666777','Juan Perez',2500.50);

insert into cuentas
values ('25666777','Juan Perez',2500.50);

insert into cuentas (documento,saldo)
values ('28999777',-5500);

insert into cuentas (numero,documento,nombre,saldo)
values (5,'28999777','Luis Lopez',34000);

insert into cuentas (numero,documento,nombre)
values (3344,'28999777','Luis Lopez',34000);

insert into cuentas (nombre, saldo)
values ('Luis Lopez',34000);

select * from libros;


---21 - Valores por defecto (default)
if object_id('visitantes') is not null
drop table visitantes;

create table visitantes(
nombre varchar(30),
edad tinyint,
sexo char(1) default 'f',
domicilio varchar(30),
ciudad varchar(20) default 'Cordoba',
telefono varchar(11),
mail varchar(30) default 'no tiene',
montocompra decimal (6,2)
);

exec sp_columns visitantes;

insert into visitantes (nombre, domicilio, montocompra)
values ('Susana Molina','Colon 123',59.80);
insert into visitantes (nombre, edad, ciudad, mail)
values ('Marcos Torres',29,'Carlos Paz','marcostorres@hotmail.com');
select *from visitantes;

insert into visitantes
values ('Marcelo Morales',38,default,default,default,'4255232','marcelomorales@hotmail.com',default);

insert into visitantes default values;

select * from visitantes;



-- 22 -- Un comercio que vende artículos de computación 

 if object_id ('articulos') is not null
  drop table articulos;

 create table articulos(
  codigo int identity,
  nombre varchar(20),
  descripcion varchar(30),
  precio smallmoney,
  cantidad tinyint default 0,
  primary key (codigo)
 );

 insert into articulos (nombre, descripcion, precio,cantidad)
  values ('impresora','Epson Stylus C45',400.80,20);
 insert into articulos (nombre, descripcion, precio)
  values ('impresora','Epson Stylus C85',500);
 insert into articulos (nombre, descripcion, precio)
  values ('monitor','Samsung 14',800);
 insert into articulos (nombre, descripcion, precio,cantidad)
  values ('teclado','ingles Biswal',100,50);

 update articulos set precio=precio+(precio*0.15);

 select * from articulos;

 select nombre+','+descripcion
  from articulos;

 update articulos set cantidad=cantidad-5
 where nombre='teclado';

 select * from articulos;

 -- 23 -- Trabaje con la tabla "libros" de una librería.

  if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  cantidad tinyint default 0,
  primary key (codigo)
 );

 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',25);
 insert into libros
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

 select titulo, autor,editorial,precio,cantidad,
  precio*cantidad as 'monto total'
  from libros;

 select titulo,autor,precio,
  precio*0.1 as descuento,
  precio-(precio*0.1) as 'precio final'
  from libros
  where editorial='Emece';

 select titulo+'-'+autor as "Título y autor"
  from libros;

  --25 -- Trabajamos con la tabla "libros" de una librería.

 if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  cantidad tinyint default 0,
  primary key (codigo)
 );

 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',25);
 insert into libros
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

 select substring(titulo,1,12) as titulo
  from libros;

 select left(titulo,12) as titulo
  from libros;

 select titulo,
  str(precio,6,1)
  from libros;

 select titulo,
  str(precio)
  from libros;

  select titulo, autor, upper(editorial)
   from libros;

   --26 -- Trabajamos con la tabla "libros" de una librería.

    if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  primary key (codigo)
 );

 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',25.33);
 insert into libros
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.65);
 insert into libros (titulo,autor,editorial,precio)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',19.95);

 select titulo,autor,precio,
  floor(precio) as abajo,
  ceiling(precio) as arriba
  from libros;

  -- 27 -- Una empresa almacena los datos de sus empleados en una tabla denominada "empleados".

  if object_id ('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(30) not null,
  apellido varchar(20) not null,
  documento char(8),
  fechanacimiento datetime,
  fechaingreso datetime,
  sueldo decimal(6,2),
  primary key(documento)
 );

 insert into empleados values('Ana','Acosta','22222222','1970/10/10','1995/05/05',228.50);
 insert into empleados values('Carlos','Caseres','25555555','1978/02/06','1998/05/05',309);
 insert into empleados values('Francisco','Garcia','26666666','1978/10/15','1998/10/02',250.68);
 insert into empleados values('Gabriela','Garcia','30000000','1985/10/25','2000/12/22',300.25);
 insert into empleados values('Luis','Lopez','31111111','1987/02/10','2000/08/21',350.98);

 select nombre+space(1)+upper(apellido) as nombre,
  stuff(documento,1,0,'DNI Nº ') as documento,
  stuff(sueldo,1,0,'$ ') as sueldo from empleados;

 select documento, stuff(ceiling(sueldo),1,0,'$ ') from empleados;

 select nombre,apellido from empleados
  where datename(month,fechanacimiento)='october';

 select nombre,apellido from empleados
  where datepart(year,fechaingreso)=2000;  

  --28 -- En una página web se guardan los siguientes datos de las visitas: número de visita, nombre, mail, 
-- pais, fecha.

 if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30) default 'Anonimo',
  mail varchar(50),
  pais varchar (20),
  fecha datetime,
  primary key(numero)
);

 insert into visitas (nombre,mail,pais,fecha)
  values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

 select * from visitas
  order by fecha desc;

 select nombre,pais,datename(month,fecha)
  from visitas
  order by pais,datename(month,fecha) desc;

 select nombre,mail,
  datename(month,fecha) mes,
  datename(day,fecha) dia,
  datename(hour,fecha) hora
  from visitas
  order by 3,4,5;

 select mail, pais
  from visitas
  where datename(month,fecha)='October'
  order by 2;

  -- 29 -- 	Operadores lógicos ( and - or - not)

   if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(5,2),
  cantidad tinyint,
  primary key(codigo)
 );

 insert into medicamentos
  values('Sertal','Roche',5.2,100);
 insert into medicamentos
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos
  values('Amoxidal 500','Bayer',15.60,100);
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,200);
 insert into medicamentos
  values('Bayaspirina','Bayer',2.10,150); 
 insert into medicamentos
  values('Amoxidal jarabe','Bayer',5.10,250); 

 select codigo,nombre
  from medicamentos
  where laboratorio='Roche' and
  precio<5;

 select * from medicamentos
  where laboratorio='Roche' or
  precio<5;

 select * from medicamentos
  where not laboratorio='Bayer' and
  cantidad=100;

 select * from medicamentos
  where laboratorio='Bayer' and
  not cantidad=100;

 delete from medicamentos
  where laboratorio='Bayer' and
  precio>10;

 update medicamentos set cantidad=200
  where laboratorio='Roche' and
  precio>5;

 delete from medicamentos
  where laboratorio='Bayer' or
  precio<3;

  --30 -- Otros operadores relacionales (is null)

 if object_id('peliculas') is not null
  drop table peliculas;

 create table peliculas(
  codigo int identity,
  titulo varchar(40) not null,
  actor varchar(20),
  duracion tinyint,
  primary key (codigo)
 );

 insert into peliculas
  values('Mision imposible','Tom Cruise',120);
 insert into peliculas
  values('Harry Potter y la piedra filosofal','Daniel R.',null);
 insert into peliculas
  values('Harry Potter y la camara secreta','Daniel R.',190);
 insert into peliculas
  values('Mision imposible 2','Tom Cruise',120);
 insert into peliculas
  values('Mujer bonita',null,120);
 insert into peliculas
  values('Tootsie','D. Hoffman',90);
 insert into peliculas (titulo)
  values('Un oso rojo');

 select * from peliculas
  where actor is null;

 update peliculas set duracion=0
  where duracion is null;

 delete from peliculas
  where actor is null and
  duracion=0;

 select * from peliculas;

 -- 31 -- Otros operadores relacionales (between)

  if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
 );

 insert into libros
  values('El aleph','Borges','Emece',15.90);
 insert into libros
  values('Cervantes y el quijote','Borges','Paidos',null);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Emece',25.90);
 insert into libros (titulo,autor,precio)
  values('Antología poética','Borges',32);
 insert into libros (titulo,autor,precio)
  values('Java en 10 minutos','Mario Molina',45.80);
 insert into libros (titulo,autor,precio)
  values('Martin Fierro','Jose Hernandez',40);
 insert into libros (titulo,autor,precio)
  values('Aprenda PHP','Mario Molina',56.50);

 select * from libros
  where precio between 20 and 40;

 select * from libros
  where precio not between 20 and 35;

  -- 32 -- 	Otros operadores relacionales (in)

   if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20),
  editorial varchar(20),
  precio decimal(6,2),
 );

 insert into libros
  values('El aleph','Borges','Emece',15.90);
 insert into libros
  values('Cervantes y el quijote','Borges','Paidos',null);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros
  values('Matematica estas ahi','Paenza','Siglo XXI',15);
 insert into libros (titulo,precio)
  values('Antología poética',32);
 insert into libros (titulo,autor,precio)
  values('Martin Fierro','Jose Hernandez',40);
 insert into libros (titulo,autor,precio)
  values('Aprenda PHP','Mario Molina',56.50);

 select * from libros
  where autor in('Borges','Paenza');

 select * from libros
  where autor not in ('Borges','Paenza');


-- 33 -- 	Búsqueda de patrones (like - not like)

 if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  primary key(codigo)
 );

 insert into libros
  values('El aleph','Borges','Emece',15.90);
 insert into libros
  values('Antología poética','J. L. Borges','Planeta',null);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros
  values('Matematica estas ahi','Paenza','Siglo XXI',15);
 insert into libros
  values('Martin Fierro','Jose Hernandez',default,40);
 insert into libros
  values('Aprenda PHP','Mario Molina','Nuevo siglo',56.50);

 select * from libros
  where autor like '%Borges%';

 select * from libros
  where titulo like 'M%';

 select * from libros
  where titulo not like 'M%';

 select * from libros
  where autor like '%Carrol_';

 select titulo,autor,editorial
  from libros
  where editorial like '[P-S]%';

 select titulo,autor,editorial
  from libros
  where editorial like '[^PN]%';

 select titulo,precio from libros
  where precio like '1_.%';

 select titulo,precio from libros
  where precio like '%.00';

  --34 -- 	Contar registros (count)

   if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  primary key(codigo)
 );

 insert into libros
  values('El aleph','Borges','Emece',15.90);
 insert into libros
  values('Antología poética','J. L. Borges','Planeta',null);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros
  values('Matematica estas ahi','Paenza','Siglo XXI',15);
 insert into libros
  values('Martin Fierro','Jose Hernandez',default,40);
 insert into libros
  values('Aprenda PHP','Mario Molina','Nuevo siglo',null);
 insert into libros
  values('Uno','Richard Bach','Planeta',20);

 select count(*)
  from libros;

 select count(*)
  from libros
  where editorial='Planeta';

 select count(precio)
  from libros;


  -- 35 -- Contar registros (count_big)

   if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(6,2),
  cantidad tinyint,
  fechavencimiento datetime not null,
  numerolote int default null,
  primary key(codigo)
 );

 insert into medicamentos
  values('Sertal','Roche',5.2,1,'2015-02-01',null);
 insert into medicamentos 
  values('Buscapina','Roche',4.10,3,'2016-03-01',null);
 insert into medicamentos 
  values('Amoxidal 500','Bayer',15.60,100,'2017-05-01',null);
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,20,'2018-02-01',null);
 insert into medicamentos 
  values('Bayaspirina',null,2.10,null,'2019-12-01',null); 
  insert into medicamentos 
  values('Amoxidal jarabe','Bayer',null,250,'2019-12-15',null); 

 select count_big(*)
  from medicamentos;

 select count_big(distinct laboratorio)
   from medicamentos;

 select count_big(precio) as 'Con precio',
  count_big(cantidad) as 'Con cantidad'
  from medicamentos;

  -- 36 -- Funciones de agrupamiento (count - sum - min - max - avg)

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  seccion varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  primary key(documento)
 );

 insert into empleados
  values('Juan Perez','22333444','Colon 123','Gerencia',5000,2);
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0);
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1);
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3);
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0);
 insert into empleados
  values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1);
 insert into empleados
  values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3);
 insert into empleados
  values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4);
 insert into empleados
  values('Andres Costa','28444555',default,'Secretaria',null,null);

 select count(*)
  from empleados;

 select count(sueldo)
  from empleados
  where seccion='Secretaria';

 select max(sueldo) as 'Mayor sueldo',
  min(sueldo) as 'Menor sueldo'
  from empleados;

 select max(cantidadhijos)
  from empleados
  where nombre like '%Perez%';

 select avg(sueldo)
  from empleados;

 select avg(sueldo)
  from empleados
  where seccion='Secretaria';

 select avg(cantidadhijos)
  from empleados
  where seccion='Sistemas';

  -- 37 -- Agrupar registros (group by)

 if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1) default 'f',
  domicilio varchar(30),
  ciudad varchar(20) default 'Cordoba',
  telefono varchar(11),
  mail varchar(30) default 'no tiene',
  montocompra decimal (6,2)
 );

 insert into visitantes
  values ('Susana Molina',35,default,'Colon 123',default,null,null,59.80);
 insert into visitantes
  values ('Marcos Torres',29,'m',default,'Carlos Paz',default,'marcostorres@hotmail.com',150.50);
 insert into visitantes
  values ('Mariana Juarez',45,default,default,'Carlos Paz',null,default,23.90);
 insert into visitantes (nombre, edad,sexo,telefono, mail)
  values ('Fabian Perez',36,'m','4556677','fabianperez@xaxamail.com');
 insert into visitantes (nombre, ciudad, montocompra)
  values ('Alejandra Gonzalez','La Falda',280.50);
 insert into visitantes (nombre, edad,sexo, ciudad, mail,montocompra)
  values ('Gaston Perez',29,'m','Carlos Paz','gastonperez1@gmail.com',95.40);
 insert into visitantes
  values ('Liliana Torres',40,default,'Sarmiento 876',default,default,default,85);
 insert into visitantes
  values ('Gabriela Duarte',21,null,null,'Rio Tercero',default,'gabrielaltorres@hotmail.com',321.50);

 select ciudad, count(*)
  from visitantes
  group by ciudad;

 select ciudad, count(telefono)
  from visitantes
  group by ciudad;

 select sexo, sum(montocompra)
  from visitantes
  group by sexo;

 select sexo,ciudad,
  max(montocompra) as mayor,
  min(montocompra) as menor
  from visitantes
  group by sexo,ciudad;

 select ciudad,
  avg(montocompra) as 'promedio de compras'
  from visitantes
  group by ciudad;

 select ciudad,
  count(*) as 'cantidad con mail'
  from visitantes
  where mail is not null and
  mail<>'no tiene'
  group by ciudad;

 select ciudad,
  count(*) as 'cantidad con mail'
  from visitantes
  where mail is not null and
  mail<>'no tiene'
  group by all ciudad;

  -- 38 -- Seleccionar grupos (having)

   if object_id('clientes') is not null
  drop table clientes;

 create table clientes (
  codigo int identity,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  provincia varchar (20),
  telefono varchar(11),
  primary key(codigo)
);

 insert into clientes
  values ('Lopez Marcos','Colon 111','Cordoba','Cordoba','null');
 insert into clientes
  values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba','4578585');
 insert into clientes
  values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba','4578445');
 insert into clientes
  values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe',null);
 insert into clientes
  values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba','4253685');
 insert into clientes
  values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe','0345252525');
 insert into clientes
  values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba','4554455');
 insert into clientes
  values ('Lopez Carlos',null,'Cruz del Eje','Cordoba',null);
 insert into clientes
  values ('Ramos Betina','San Martin 999','Cordoba','Cordoba','4223366');
 insert into clientes
  values ('Lopez Lucas','San Martin 1010','Posadas','Misiones','0457858745');

 select ciudad, provincia,
  count(*) as cantidad
  from clientes
  group by ciudad,provincia;

 select ciudad, provincia,
  count(*) as cantidad
  from clientes
  group by ciudad,provincia
  having count(*)>1;

 select ciudad, count(*)
  from clientes
  where domicilio like '%San Martin%'
  group by all ciudad
  having count(*)<2 and
  ciudad <> 'Cordoba';

  -- 39 -- Modificador del group by (with rollup)

  if object_id('clientes') is not null
  drop table clientes;

 create table clientes (
  codigo int identity,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  estado varchar (20),
  pais varchar(20),
  primary key(codigo)
 );

 insert into clientes
  values ('Lopez Marcos','Colon 111', 'Cordoba','Cordoba','Argentina');
 insert into clientes
  values ('Perez Ana','San Martin 222', 'Carlos Paz','Cordoba','Argentina');
 insert into clientes
  values ('Garcia Juan','Rivadavia 333', 'Carlos Paz','Cordoba','Argentina');
 insert into clientes
  values ('Perez Luis','Sarmiento 444', 'Rosario','Santa Fe','Argentina');
 insert into clientes
  values ('Gomez Ines','San Martin 987', 'Santa Fe','Santa Fe','Argentina');
 insert into clientes
  values ('Gomez Ines','San Martin 666', 'Santa Fe','Santa Fe','Argentina');
 insert into clientes
  values ('Lopez Carlos','Irigoyen 888', 'Cordoba','Cordoba','Argentina');
 insert into clientes
  values ('Ramos Betina','San Martin 999', 'Cordoba','Cordoba','Argentina');
 insert into clientes
  values ('Fernando Salas','Mariano Osorio 1234', 'Santiago','Region metropolitana','Chile');
 insert into clientes
  values ('German Rojas','Allende 345', 'Valparaiso','Region V','Chile');
 insert into clientes
  values ('Ricardo Jara','Pablo Neruda 146', 'Santiago','Region metropolitana','Chile');
 insert into clientes
  values ('Joaquin Robles','Diego Rivera 147', 'Guadalajara','Jalisco','Mexico');

 select pais,count(*) as cantidad
  from clientes
  group by pais with rollup;

 select pais,estado,
  count(*) as cantidad
  from clientes
  group by pais,estado with rollup;

 select pais,estado,ciudad,
  count(*) as cantidad
  from clientes
  group by pais,estado,ciudad
  with rollup;

  -- 40 -- 	Modificador del group by (with cube)

   if object_id('ventas') is not null
  drop table ventas;

 create table ventas(
  numero int identity,
  montocompra decimal(6,2),
  tipopago char(1),--c=contado, t=tarjeta
  vendedor varchar(30),
  primary key (numero)
 );

 insert into ventas
  values(100.50,'c','Marisa Perez');
 insert into ventas
  values(200,'c','Marisa Perez');
 insert into ventas
  values(50,'t','Juan Lopez');
 insert into ventas
  values(220,'c','Juan Lopez');
 insert into ventas
  values(150,'t','Marisa Perez');
 insert into ventas
  values(550.80,'c','Marisa Perez');
 insert into ventas
  values(300,'t','Juan Lopez');
 insert into ventas
  values(25,'c','Marisa Perez');

 select vendedor,tipopago,
  count(*) as cantidad
  from ventas
  group by vendedor,tipopago
  with rollup;

 select vendedor,tipopago,
  count(*) as cantidad
  from ventas
  group by vendedor,tipopago
  with cube;

  -- 41 -- 	Función grouping

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  sexo char(1),
  estadocivil char(1),--c=casado, s=soltero,v=viudo
  seccion varchar(20),
  primary key (documento)
 );

 insert into empleados
  values ('22222222','Alberto Lopez','m','c','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','f','c','Administracion');
 insert into empleados
  values ('24444444','Carlos Fuentes','m','s','Administracion');
 insert into empleados
  values ('25555555','Daniel Garcia','m','s','Sistemas');
 insert into empleados
  values ('26666666','Ester Juarez',null,'c','Sistemas');
 insert into empleados
  values ('27777777','Fabian Torres',null,'s','Sistemas');
 insert into empleados
  values ('28888888','Gabriela Lopez','f',null,'Sistemas');
 insert into empleados
  values ('29999999','Hector Garcia','m',null,'Administracion');

 select sexo,estadocivil,
  count(*) as cantidad
  from empleados
  group by sexo,estadocivil
  with rollup;

 select sexo,estadocivil,
  count(*) as cantidad,
  grouping(sexo) as 'resumen sexo',
  grouping(estadocivil) as 'resumen estado civil'
  from empleados
  group by sexo,estadocivil
  with rollup;

 select sexo,estadocivil,
  count(*) as cantidad,
  grouping(sexo) as 'resumen sexo',
  grouping(estadocivil) as 'resumen estado civil'
  from empleados
  group by sexo,estadocivil
  with cube;

  --- 42 --- 	Cláusulas compute y compute by

   if object_id('inmuebles') is not null
  drop table inmuebles;

 create table inmuebles (
  documento varchar(8) not null,
  nombre varchar(30),
  domicilio varchar(20),
  barrio varchar(20),
  ciudad varchar(20),
  tipo char(1),--b=baldio, e: edificado
  superficie decimal (8,2),
  monto decimal (8,2)
 );

 insert into inmuebles
  values ('11111111','Alberto Acosta','Avellaneda 800','Centro','Cordoba','e',100,1200);
 insert into inmuebles
  values ('11111111','Alberto Acosta','Sarmiento 245','Gral. Paz','Cordoba','e',200,2500);
 insert into inmuebles
  values ('22222222','Beatriz Barrios','San Martin 202','Centro','Cordoba','e',250,1900);
 insert into inmuebles
  values ('33333333','Carlos Caseres','Paso 1234','Alberdi','Cordoba','b',200,1000);
 insert into inmuebles
  values ('33333333','Carlos Caseres','Guemes 876','Alberdi','Cordoba','b',300,1500);
 insert into inmuebles
  values ('44444444','Diana Dominguez','Calderon 456','Matienzo','Cordoba','b',200,800);
 insert into inmuebles
  values ('55555555','Estela Fuentes','San Martin 321','Flores','Carlos Paz','e',500,4500);
 insert into inmuebles
  values ('55555555','Estela Fuentes','Lopez y Planes 853','Alberdi','Cordoba','e',350,2200);

 select *from inmuebles
 compute avg(monto);

 select *from inmuebles
  compute avg(superficie),sum(monto);

 select *from inmuebles
  order by documento,barrio,ciudad
  compute avg(superficie),sum(monto)
  by documento,barrio,ciudad;

 select *from inmuebles
  order by documento,barrio,ciudad
  compute avg(superficie),sum(monto)
  by documento,barrio;

 select *from inmuebles
  order by documento,barrio,ciudad
  compute avg(superficie),sum(monto)
  by documento;

 select *from inmuebles
  order by documento,barrio,ciudad
  compute avg(superficie),sum(monto)
  by documento,ciudad;

 select *from inmuebles
  order by documento
  compute sum(monto)
  compute avg(monto)
  by documento;

  -- 43 -- 	Registros duplicados (distinct)

  if object_id('clientes') is not null
  drop table clientes;

 create table clientes (
  codigo int identity,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  provincia varchar (20),
  primary key(codigo)
);

 insert into clientes
  values ('Lopez Marcos','Colon 111','Cordoba','Cordoba');
 insert into clientes
  values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba');
 insert into clientes
  values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba');
 insert into clientes
  values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe');
 insert into clientes
  values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba');
 insert into clientes
  values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe');
 insert into clientes
  values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba');
 insert into clientes
  values ('Lopez Carlos',null,'Cruz del Eje','Cordoba');
 insert into clientes
  values ('Ramos Betina','San Martin 999','Cordoba','Cordoba');
 insert into clientes
  values ('Lopez Lucas','San Martin 1010','Posadas','Misiones');

 select distinct provincia from clientes;

 select count(distinct provincia) as cantidad
  from clientes;

 select distinct ciudad from clientes;

 select count(distinct ciudad) from clientes;

 select distinct ciudad from clientes
  where provincia='Cordoba';

 select provincia,count(distinct ciudad)
  from clientes
  group by provincia;

  -- 44 -- 	Cláusula top

   if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  estadocivil char(1),--c=casado, s=soltero,v=viudo
  seccion varchar(20)
 );

 insert into empleados
  values ('22222222','Alberto Lopez','c','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','c','Administracion');
 insert into empleados
  values ('24444444','Carlos Fuentes','s','Administracion');
 insert into empleados
  values ('25555555','Daniel Garcia','s','Sistemas');
 insert into empleados
  values ('26666666','Ester Juarez','c','Sistemas');
 insert into empleados
  values ('27777777','Fabian Torres','s','Sistemas');
 insert into empleados
  values ('28888888','Gabriela Lopez',null,'Sistemas');
 insert into empleados
  values ('29999999','Hector Garcia',null,'Administracion');

 select top 5 * from empleados;

 select top 4 nombre,seccion
  from empleados
  order by seccion;

 select top 4 with ties nombre,seccion
  from empleados
  order by seccion;

 select top 4 nombre,estadocivil,seccion
  from empleados
  order by estadocivil,seccion;

 select top 4 with ties nombre,estadocivil,seccion
  from empleados
  order by estadocivil,seccion;

  -- 45 -- 	Clave primaria compuesta

   if object_id('consultas') is not null
  drop table consultas;

 create table consultas(
  fechayhora datetime not null,
  medico varchar(30) not null,
  documento char(8) not null,
  paciente varchar(30),
  obrasocial varchar(30),
  primary key(fechayhora,medico)
 );

 insert into consultas
  values ('2006/11/05 8:00','Lopez','12222222','Acosta Betina','PAMI');
 insert into consultas
  values ('2006/11/05 8:30','Lopez','23333333','Fuentes Carlos','PAMI');

 insert into consultas
  values ('2006/11/05 8:00','Perez','34444444','Garcia Marisa','IPAM');
 insert into consultas
  values ('2006/11/05 8:00','Duarte','45555555','Pereyra Luis','PAMI');

 insert into consultas
  values ('2006/11/05 8:00','Perez','23333333','Fuentes Carlos','PAMI');

  -- 47  --  Restricción default

   if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  numero int identity,
  nombre varchar(30),
  edad tinyint,
  domicilio varchar(30),
  ciudad varchar(20),
  montocompra decimal (6,2) not null
 );

 alter table visitantes
  add constraint DF_visitantes_ciudad
  default 'Cordoba'
  for ciudad;

 alter table visitantes
  add constraint DF_visitantes_montocompra
  default 0
  for montocompra;

 insert into visitantes
  values ('Susana Molina',35,'Colon 123',default,59.80);
 insert into visitantes (nombre,edad,domicilio)
  values ('Marcos Torres',29,'Carlos Paz');
 insert into visitantes
  values ('Mariana Juarez',45,'Carlos Paz',null,23.90);

 select * from visitantes;

 exec sp_helpconstraint visitantes;

 alter table visitantes
  add constraint DF_visitantes_ciudad
  default 'Cordoba'
  for ciudad;

 alter table visitantes
  add constraint DF_visitantes_numero
  default 0
  for numero;

  --47 -- 2 --

   if object_id('vehiculos') is not null
  drop table vehiculos;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime,
  horasalida datetime
 );

 alter table vehiculos
  add constraint DF_vehiculos_tipo
  default 'a'
  for tipo;

 insert into vehiculos values('BVB111',default,default,null);

 select * from vehiculos;

 alter table vehiculos
  add constraint DF_vehiculos_tipo2
  default 'm'
  for tipo;

 alter table vehiculos
  add constraint DF_vehiculos_horallegada
  default getdate()
  for horallegada;

 insert into vehiculos (patente,tipo) values('CAA258','a');

 select * from vehiculos;

 exec sp_helpconstraint vehiculos;

 -- 48 -- Restricción check

 if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8),
  nombre varchar(30),
  fechanacimiento datetime,
  cantidadhijos tinyint,
  seccion varchar(20),
  sueldo decimal(6,2)
 );

 alter table empleados
   add constraint CK_empleados_sueldo_positivo
   check (sueldo>0);

 insert into empleados values ('22222222','Alberto Lopez','1965/10/05',1,'Sistemas',1000);
 insert into empleados values ('33333333','Beatriz Garcia','1972/08/15',2,'Administracion',3000);
 insert into empleados values ('34444444','Carlos Caseres','1980/10/05',0,'Contaduría',6000);

 alter table empleados
   add constraint CK_empleados_sueldo_maximo
   check (sueldo<=5000);

 delete from empleados where sueldo=6000;

 alter table empleados
   add constraint CK_empleados_sueldo_maximo
   check (sueldo<=5000); 

 alter table empleados
   add constraint CK_fechanacimiento_actual
   check (fechanacimiento<getdate());

 alter table empleados
   add constraint CK_empleados_seccion_lista
   check (seccion in ('Sistemas','Administracion','Contaduria'));

 alter table empleados
   add constraint CK_cantidadhijos_valores
   check (cantidadhijos between 0 and 15);

 exec sp_helpconstraint empleados;

 insert into empleados
  values ('24444444','Carlos Fuentes','1980/02/05',2,'Administracion',-1500);

 insert into empleados
  values ('25555555','Daniel Garcia','2007/05/05',2,'Sistemas',1550);

 update empleados set cantidadhijos=21 where documento='22222222';

 update empleados set seccion='Recursos' where documento='22222222';

 alter table empleados
   add constraint CK_seccion_letrainicial
   check (seccion like '%B');


   -- 49 -- Deshabilitar restricciones (with check - nocheck)

    if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(5,2)
 );

 insert into libros values ('Uno','Bach','Planeta',22);
 insert into libros values ('El quijote','Cervantes','Emece',15);
 insert into libros values ('Aprenda PHP','Mario Molina','Siglo XXI',-40);

 alter table libros
 with nocheck
 add constraint CK_libros_precio_positivo
 check (precio>=0);

 alter table libros
  nocheck constraint CK_libros_precio_positivo;

 insert into libros values('Java en 10 minutos',default,'Siglo XXI',-1);

 exec sp_helpconstraint libros;

 alter table libros
  check constraint CK_libros_precio_positivo;

  -- 50 -- Restricción primary key

   if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  seccion varchar(20)
 );

 insert into empleados
  values ('22222222','Alberto Lopez','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','Administracion');
 insert into empleados
  values ('23333333','Carlos Fuentes','Administracion');

 alter table empleados
 add constraint PK_empleados_documento
 primary key(documento);
 delete from empleados
  where nombre='Carlos Fuentes';

 alter table empleados
 add constraint PK_empleados_documento
 primary key(documento);

 update empleados set documento='22222222'
  where documento='23333333';

 alter table empleados
 add constraint PK_empleados_nombre
 primary key(nombre);

 insert into empleados values(null,'Marcelo Juarez','Sistemas');

 alter table empleados
  add constraint DF_empleados_documento
  default '00000000'
  for documento;

 insert into empleados (nombre,seccion) values('Luis Luque','Sistemas'); 

 select * from empleados;

 insert into empleados (nombre,seccion) values('Ana Fuentes','Sistemas'); 

 exec sp_helpconstraint empleados;




 --51--

if object_id('remis') is not null
drop table remis;

create table remis(
numero tinyint identity,
patente char(6),
marca varchar(15),
modelo char(4)
);

insert into remis values('ABC123','Renault clio','1990');
insert into remis values('DEF456','Peugeot 504','1995');
insert into remis values('DEF456','Fiat Duna','1998');
insert into remis values('GHI789','Fiat Duna','1995');
insert into remis values(null,'Fiat Duna','1995');

alter table remis add constraint UQ_remis_patente unique(patente); 

delete from remis where numero=3; alter table remis add constraint UQ_remis_patente unique(patente); 

insert into remis values('ABC123','Renault 11','1995');

insert into remis values(null,'Renault 11','1995');

exec sp_helpconstraint remis;



----53 - Eliminar

if object_id('vehiculos') is not null
drop table vehiculos;

create table vehiculos(
patente char(6) not null,
tipo char(1),--'a'=auto, 'm'=moto
horallegada datetime not null,
horasalida datetime
);

alter table vehiculos add constraint CK_vehiculos_tipo check (tipo in ('a','m'));

alter table vehiculos add constraint DF_vehiculos_tipo default 'a' for tipo;

alter table vehiculos add constraint CK_vehiculos_patente_patron check (patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]');

alter table vehiculos add constraint PK_vehiculos_patentellegada primary key(patente,horallegada);

insert into vehiculos values('SDR456','a','2005/10/10 10:10',null);

insert into vehiculos values('SDR456','m','2005/10/10 10:10',null);

insert into vehiculos values('SDR456','m','2005/10/10 12:10',null);

insert into vehiculos values('SDR111','m','2005/10/10 10:10',null);

exec sp_helpconstraint vehiculos;

alter table vehiculos drop DF_vehiculos_tipo;

exec sp_helpconstraint vehiculos;

alter table vehiculos drop PK_vehiculos_patentellegada, CK_vehiculos_tipo;

exec sp_helpconstraint vehiculos;

--54 - Crear y asociar reglas 

if object_id('vehiculos') is not null
drop table vehiculos;

if object_id ('RG_patente_patron') is not null
drop rule RG_patente_patron;
if object_id ('RG_horallegada') is not null
drop rule RG_horallegada;
if object_id ('RG_vehiculos_tipo') is not null
drop rule RG_vehiculos_tipo;
if object_id ('RG_vehiculos_tipo2') is not null
drop rule RG_vehiculos_tipo2;
if object_id ('RG_menor_fechaactual') is not null
drop rule RG_menor_fechaactual;

create table vehiculos(
patente char(6) not null,
tipo char(1),--'a'=auto, 'm'=moto
horallegada datetime not null,
horasalida datetime
);

insert into vehiculos values ('AAA111','a','1990-02-01 08:10',null);
insert into vehiculos values ('BCD222','m','1990-02-01 08:10','1990-02-01 10:10');
insert into vehiculos values ('BCD222','m','1990-02-01 12:00',null);
insert into vehiculos values ('CC1234','a','1990-02-01 12:00',null);

create rule RG_patente_patron 
as @patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]';

exec sp_help;

exec sp_helpconstraint vehiculos;

exec sp_bindrule RG_patente_patron,'vehiculos.patente';

select * from empleados;

insert into vehiculos values ('FGHIJK','a','1990-02-01 18:00',null);

create rule RG_vehiculos_tipo
as @tipo in ('a','m');

exec sp_bindrule RG_vehiculos_tipo, 'vehiculos.tipo';

update vehiculos set tipo='c' where patente='AAA111';

create rule RG_vehiculos_tipo2
as @tipo in ('a','c','m');

exec sp_bindrule RG_vehiculos_tipo2, 'vehiculos.tipo';

update vehiculos set tipo='c' where patente='AAA111';

create rule RG_menor_fechaactual
as @fecha <= getdate();

exec sp_bindrule RG_menor_fechaactual, 'vehiculos.horallegada';
exec sp_bindrule RG_menor_fechaactual, 'vehiculos.horasalida';

insert into vehiculos values ('NOP555','a','1990-02-01 10:10','1990-02-01 08:30');

alter table vehiculos
add constraint CK_vehiculos_llegada_salida
check(horallegada<=horasalida);

delete from vehiculos where patente='NOP555';

alter table vehiculos
add constraint CK_vehiculos_llegada_salida
check(horallegada<=horasalida);

alter table vehiculos
add constraint DF_vehiculos_tipo
default 'b'
for tipo;

insert into vehiculos values ('STU456',default,'1990-02-01 10:10','1990-02-01 15:30');

exec sp_helpconstraint vehiculos;




--55 - Eliminar y dasasociar reglas (sp_unbindrule - drop rule)


if object_id('vehiculos') is not null
drop table vehiculos;

if object_id ('RG_patente_patron') is not null
drop rule RG_patente_patron;
if object_id ('RG_vehiculos_tipo') is not null
drop rule RG_vehiculos_tipo;
if object_id ('RG_vehiculos_tipo2') is not null
drop rule RG_vehiculos_tipo2;

create table vehiculos(
patente char(6) not null,
tipo char(1),--'a'=auto, 'm'=moto
horallegada datetime not null,
horasalida datetime
);

create rule RG_patente_patron
as @patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]';

exec sp_bindrule RG_patente_patron,'vehiculos.patente';

insert into vehiculos values ('FGHIJK','a','1990-02-01 18:00',null);

create rule RG_vehiculos_tipo
as @tipo in ('a','m');

exec sp_bindrule RG_vehiculos_tipo, 'vehiculos.tipo';

insert into vehiculos values('AAA111','c','2001-10-10 10:10',NULL);

create rule RG_vehiculos_tipo2
as @tipo in ('a','c','m');

exec sp_bindrule RG_vehiculos_tipo2, 'vehiculos.tipo';

insert into vehiculos values('AAA111','c','2001-10-10 10:10',NULL);

drop rule RG_vehiculos_tipo2;

drop rule RG_vehiculos_tipo;

drop rule RG_patente_patron;

exec sp_unbindrule 'vehiculos.patente';

exec sp_helpconstraint vehiculos;

exec sp_help;

drop rule RG_patente_patron;

exec sp_help;



--57 - Valores 

if object_id ('clientes') is not null
drop table clientes;

if object_id ('VP_legajo_patron') is not null
drop default VP_legajo_patron;
if object_id ('RG_legajo_patron') is not null
drop rule RG_legajo_patron;
if object_id ('RG_legajo') is not null
drop rule RG_legajo;
if object_id ('VP_datodesconocido') is not null
drop default VP_datodesconocido;
if object_id ('VP_fechaactual') is not null
drop default VP_fechaactual;

create table clientes(
legajo char(4),
nombre varchar(30),
domicilio varchar(30),
ciudad varchar(15),
provincia varchar(20) default 'Cordoba',
fechaingreso datetime
);

create rule RG_legajo_patron
as @valor like '[A-Z][A-Z][0-9][0-9]';

exec sp_bindrule RG_legajo_patron,'clientes.legajo';

create default VP_legajo_patron
as 'AA00';

exec sp_bindefault VP_legajo_patron,'clientes.legajo';

create default VP_datodesconocido
as '??';

exec sp_bindefault VP_datodesconocido,'clientes.domicilio';

exec sp_bindefault VP_datodesconocido,'clientes.ciudad';

insert into clientes values('GF12','Ana Perez',default,default,'Cordoba','2001-10-10');
select * from clientes;

exec sp_bindefault VP_datodesconocido,'clientes.provincia';

create default VP_fechaactual
as getdate();

exec sp_bindefault VP_fechaactual,'clientes.fechaingreso';

insert into clientes default values;
select * from clientes;

exec sp_bindefault VP_datodesconocido,'clientes.fechaingreso';

insert into clientes default values;

create rule RG_legajo
as @valor like 'B%';

exec sp_bindrule RG_legajo,'clientes.legajo';

insert into clientes values (default,'Luis Garcia','Colon 876','Cordoba','Cordoba','2001-10-10');



--58 - Desasociar

if object_id ('libros') is not null
drop table libros;

if object_id ('VP_cero') is not null
drop default VP_cero;
if object_id ('VP_desconocido') is not null
drop default VP_desconocido;
if object_id ('RG_positivo') is not null
drop rule RG_positivo;

create table libros(
codigo int identity,
titulo varchar(40) not null,
autor varchar(30),
editorial varchar(20),
precio decimal(5,2),
cantidad smallint
);

create rule RG_positivo
as @valor >=0;

exec sp_bindrule RG_positivo,'libros.precio';

exec sp_bindrule RG_positivo,'libros.cantidad';

create default VP_cero
as 0;

exec sp_bindefault VP_cero,'libros.precio';

exec sp_bindefault VP_cero,'libros.cantidad';

create default VP_desconocido
as 'Desconocido';

exec sp_bindefault VP_desconocido,'libros.autor';

exec sp_bindefault VP_desconocido,'libros.editorial';

exec sp_help;

exec sp_helpconstraint libros;

insert into libros (titulo) values('Aprenda PHP');
select * from libros;

exec sp_unbindefault 'libros.precio';

insert into libros (titulo) values('Matematica estas ahi');
select * from libros;

exec sp_helpconstraint libros;

exec sp_help VP_cero;

drop default VP_cero;

exec sp_unbindefault 'libros.cantidad';

exec sp_helpconstraint libros;

exec sp_help VP_cero;

drop default VP_cero;

exec sp_help VP_cero;



--62 - Creación de índices

if object_id('alumnos') is not null
drop table alumnos;
create table alumnos(
legajo char(5) not null,
documento char(8) not null,
apellido varchar(30),
nombre varchar(30),
notafinal decimal(4,2)
);

insert into alumnos values ('A123','22222222','Perez','Patricia',5.50);
insert into alumnos values ('A234','23333333','Lopez','Ana',9);
insert into alumnos values ('A345','24444444','Garcia','Carlos',8.5);
insert into alumnos values ('A348','25555555','Perez','Daniela',7.85);
insert into alumnos values ('A457','26666666','Perez','Fabian',3.2);
insert into alumnos values ('A589','27777777','Gomez','Gaston',6.90);

create unique clustered index I_alumnos_apellido
on alumnos(apellido);

create clustered index I_alumnos_apellido
on alumnos(apellido); 

alter table alumnos
add constraint PK_alumnos_legajo
primary key clustered (legajo);

alter table alumnos
add constraint PK_alumnos_legajo
primary key nonclustered (legajo);

exec sp_helpindex alumnos;

exec sp_helpconstraint alumnos;

create unique nonclustered index I_alumnos_documento
on alumnos(documento);

insert into alumnos values ('A789','27777777','Morales','Hector',8);

exec sp_helpindex alumnos;

create index I_alumnos_apellidonombre
on alumnos(apellido,nombre);

select name from sysindexes
where name like '%alumnos%';

alter table alumnos
add constraint UQ_alumnos_documento
unique (documento);

exec sp_helpconstraint alumnos;

exec sp_helpindex alumnos;

select name from sysindexes
where name like '%alumnos%';

select name from sysindexes
where name like 'I_%';


--63 - Regenerar índices

if object_id('alumnos') is not null
drop table alumnos;
create table alumnos(
legajo char(5) not null,
documento char(8) not null,
apellido varchar(30),
nombre varchar(30),
notafinal decimal(4,2)
);

create nonclustered index I_alumnos_apellido
on alumnos(apellido); 

exec sp_helpindex alumnos;

create nonclustered index I_alumnos_apellido
on alumnos(apellido,nombre)
with drop_existing;

exec sp_helpindex alumnos;

alter table alumnos
add constraint UQ_alumnos_documento
unique nonclustered (documento);

exec sp_helpindex alumnos;

create clustered index UQ_alumnos_documento
on alumnos(documento)
with drop_existing;

create nonclustered index I_alumnos_legajo
on alumnos(legajo); 

exec sp_helpindex alumnos;

create clustered index I_alumnos_legajo
on alumnos(legajo)
with drop_existing;

exec sp_helpindex alumnos;

create nonclustered index I_alumnos_legajo
on alumnos(legajo)
with drop_existing;

create nonclustered index I_alumnos_apellido
on alumnos(apellido)
with drop_existing;

create clustered index I_alumnos_apellido
on alumnos(apellido)
with drop_existing;

create unique clustered index I_alumnos_legajo
on alumnos(legajo)
with drop_existing;

exec sp_helpindex alumnos;

create clustered index I_alumnos_legajo
on alumnos(legajo)
with drop_existing;

exec sp_helpindex alumnos;




--63 - Regenerar índices
if object_id('alumnos') is not null
drop table alumnos;
create table alumnos(
legajo char(5) not null,
documento char(8) not null,
apellido varchar(30),
nombre varchar(30),
notafinal decimal(4,2)
);

create nonclustered index I_alumnos_apellido
on alumnos(apellido); 

exec sp_helpindex alumnos;

create nonclustered index I_alumnos_apellido
on alumnos(apellido,nombre)
with drop_existing;

exec sp_helpindex alumnos;

alter table alumnos
add constraint UQ_alumnos_documento
unique nonclustered (documento);

exec sp_helpindex alumnos;

create clustered index UQ_alumnos_documento
on alumnos(documento)
with drop_existing;

create nonclustered index I_alumnos_legajo
on alumnos(legajo); 

exec sp_helpindex alumnos;

create clustered index I_alumnos_legajo
on alumnos(legajo)
with drop_existing;

exec sp_helpindex alumnos;

create nonclustered index I_alumnos_legajo
on alumnos(legajo)
with drop_existing;

create nonclustered index I_alumnos_apellido
on alumnos(apellido)
with drop_existing;

create clustered index I_alumnos_apellido
on alumnos(apellido)
with drop_existing;

create unique clustered index I_alumnos_legajo
on alumnos(legajo)
with drop_existing;

exec sp_helpindex alumnos;

create clustered index I_alumnos_legajo
on alumnos(legajo)
with drop_existing;

exec sp_helpindex alumnos;




--64 - Eliminar índices

if object_id('alumnos') is not null
drop table alumnos;
create table alumnos(
legajo char(5) not null,
documento char(8) not null,
apellido varchar(30),
nombre varchar(30),
notafinal decimal(4,2)
);

create nonclustered index I_alumnos_apellido
on alumnos(apellido);

alter table alumnos
add constraint PK_alumnos_legajo
primary key clustered (legajo);

exec sp_helpindex alumnos;

drop index PK_alumnos_legajo;

drop index I_alumnos_apellido;

drop index alumnos.I_alumnos_apellido;

exec sp_helpindex alumnos;

if exists (select name from sysindexes
where name = 'I_alumnos_apellido')
drop index alumnos.I_alumnos_apellido;

alter table alumnos
drop PK_alumnos_legajo;

exec sp_helpindex alumnos;


--66 - Combinación interna 

if (object_id('clientes')) is not null
drop table clientes;
if (object_id('provincias')) is not null
drop table provincias;

create table clientes (
codigo int identity,
nombre varchar(30),
domicilio varchar(30),
ciudad varchar(20),
codigoprovincia tinyint not null,
primary key(codigo)
);

create table provincias(
codigo tinyint identity,
nombre varchar(20),
primary key (codigo)
);

insert into provincias (nombre) values('Cordoba');
insert into provincias (nombre) values('Santa Fe');
insert into provincias (nombre) values('Corrientes');

insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
insert into clientes values ('Pereyra Lucas','San Martin 555','Cruz del Eje',1);
insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
insert into clientes values ('Torres Fabiola','Alem 777','Ibera',3);

select c.nombre,domicilio,ciudad,p.nombre
from clientes as c
join provincias as p
on c.codigoprovincia=p.codigo;

select c.nombre,domicilio,ciudad,p.nombre
from clientes as c
join provincias as p
on c.codigoprovincia=p.codigo
order by p.nombre;

select c.nombre,domicilio,ciudad
from clientes as c
join provincias as p
on c.codigoprovincia=p.codigo
where p.nombre='Santa Fe';


--67 - Combinación externa 

if (object_id('clientes')) is not null
drop table clientes;
if (object_id('provincias')) is not null
drop table provincias;

create table clientes (
codigo int identity,
nombre varchar(30),
domicilio varchar(30),
ciudad varchar(20),
codigoprovincia tinyint not null,
primary key(codigo)
);

create table provincias(
codigo tinyint identity,
nombre varchar(20),
primary key (codigo)
);

insert into provincias (nombre) values('Cordoba');
insert into provincias (nombre) values('Santa Fe');
insert into provincias (nombre) values('Corrientes');

insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);

select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo;

select c.nombre,domicilio,ciudad, p.nombre
from provincias as p
left join clientes as c
on codigoprovincia = p.codigo;

select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo
where p.codigo is not null;

select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo
where p.codigo is null
order by c.nombre;

select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo
where p.nombre='Cordoba';



--68 - Combinación externa 

if (object_id('clientes')) is not null
drop table clientes;
if (object_id('provincias')) is not null
drop table provincias;

create table clientes (
codigo int identity,
nombre varchar(30),
domicilio varchar(30),
ciudad varchar(20),
codigoprovincia tinyint not null,
primary key(codigo)
);

create table provincias(
codigo tinyint identity,
nombre varchar(20),
primary key (codigo)
);

insert into provincias (nombre) values('Cordoba');
insert into provincias (nombre) values('Santa Fe');
insert into provincias (nombre) values('Corrientes');

insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);

select c.nombre,domicilio,ciudad, p.nombre
from provincias as p
right join clientes as c
on codigoprovincia = p.codigo;

select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo;

select c.nombre,domicilio,ciudad, p.nombre
from provincias as p
right join clientes as c
on codigoprovincia = p.codigo
where p.codigo is not null;

select c.nombre,domicilio,ciudad, p.nombre
from provincias as p
right join clientes as c
on codigoprovincia = p.codigo
where p.codigo is null
order by ciudad;



--69 - Combinación externa completa 


if (object_id('deportes')) is not null
drop table deportes;
if (object_id('inscriptos')) is not null
drop table inscriptos;
create table deportes(
codigo tinyint identity,
nombre varchar(30),
profesor varchar(30),
primary key (codigo)
);
create table inscriptos(
documento char(8),
codigodeporte tinyint not null,
matricula char(1) --'s'=paga 'n'=impaga
);

insert into deportes values('tenis','Marcelo Roca');
insert into deportes values('natacion','Marta Torres');
insert into deportes values('basquet','Luis Garcia');
insert into deportes values('futbol','Marcelo Roca');
 
insert into inscriptos values('22222222',3,'s');
insert into inscriptos values('23333333',3,'s');
insert into inscriptos values('24444444',3,'n');
insert into inscriptos values('22222222',2,'s');
insert into inscriptos values('23333333',2,'s');
insert into inscriptos values('22222222',4,'n'); 
insert into inscriptos values('22222222',5,'n'); 

select documento,d.nombre,matricula
from inscriptos as i
join deportes as d
on codigodeporte=codigo;

select documento,d.nombre,matricula
from inscriptos as i
left join deportes as d
on codigodeporte=codigo;

select documento,d.nombre,matricula
from deportes as d
right join inscriptos as i
on codigodeporte=codigo;

select nombre
from deportes as d
left join inscriptos as i
on codigodeporte=codigo
where codigodeporte is null;

select documento
from inscriptos as i
left join deportes as d
on codigodeporte=codigo
where codigo is null;

select documento,nombre,profesor,matricula
from inscriptos as i
full join deportes as d
on codigodeporte=codigo; 




--70 - Combinaciones cruzadas 

if object_id('mujeres') is not null
drop table mujeres;
if object_id('varones') is not null
drop table varones;
create table mujeres(
nombre varchar(30),
domicilio varchar(30),
edad int
);
create table varones(
nombre varchar(30),
domicilio varchar(30),
edad int
);

insert into mujeres values('Maria Lopez','Colon 123',45);
insert into mujeres values('Liliana Garcia','Sucre 456',35);
insert into mujeres values('Susana Lopez','Avellaneda 98',41);

insert into varones values('Juan Torres','Sarmiento 755',44);
insert into varones values('Marcelo Oliva','San Martin 874',56);
insert into varones values('Federico Pereyra','Colon 234',38);
insert into varones values('Juan Garcia','Peru 333',50);

select m.nombre,m.edad,v.nombre,v.edad
from mujeres as m
cross join varones as v;

select m.nombre,m.edad,v.nombre,v.edad
from mujeres as m
cross join varones as v
where m.edad>40 and
v.edad>40;

select m.nombre,m.edad,v.nombre,v.edad
from mujeres as m
cross join varones as v
where m.edad-v.edad between -10 and 10;

--2do Problema

if object_id('guardias') is not null
drop table guardias;
if object_id('tareas') is not null
drop table tareas;

create table guardias(
documento char(8),
nombre varchar(30),
sexo char(1), /* 'f' o 'm' */
domicilio varchar(30),
primary key (documento)
);

create table tareas(
codigo tinyint identity,
domicilio varchar(30),
descripcion varchar(30),
horario char(2), /* 'AM' o 'PM'*/
primary key (codigo)
);

insert into guardias values('22333444','Juan Perez','m','Colon 123');
insert into guardias values('24333444','Alberto Torres','m','San Martin 567');
insert into guardias values('25333444','Luis Ferreyra','m','Chacabuco 235');
insert into guardias values('23333444','Lorena Viale','f','Sarmiento 988');
insert into guardias values('26333444','Irma Gonzalez','f','Mariano Moreno 111');

insert into tareas values('Colon 1111','vigilancia exterior','AM');
insert into tareas values('Urquiza 234','vigilancia exterior','PM');
insert into tareas values('Peru 345','vigilancia interior','AM');
insert into tareas values('Avellaneda 890','vigilancia interior','PM');

select nombre,t.domicilio,descripcion
from guardias
cross join tareas as t;

select nombre,t.domicilio,descripcion
from guardias as g
cross join tareas as t
where (g.sexo='f' and t.descripcion='vigilancia interior') or
(g.sexo='m' and t.descripcion='vigilancia exterior');




--71 - Autocombinación

if object_id('clientes') is not null
drop table clientes;

create table clientes(
nombre varchar(30),
sexo char(1),--'f'=femenino, 'm'=masculino
edad int,
domicilio varchar(30)
);

insert into clientes values('Maria Lopez','f',45,'Colon 123');
insert into clientes values('Liliana Garcia','f',35,'Sucre 456');
insert into clientes values('Susana Lopez','f',41,'Avellaneda 98');
insert into clientes values('Juan Torres','m',44,'Sarmiento 755');
insert into clientes values('Marcelo Oliva','m',56,'San Martin 874');
insert into clientes values('Federico Pereyra','m',38,'Colon 234');
insert into clientes values('Juan Garcia','m',50,'Peru 333');

select cm.nombre,cm.edad,cv.nombre,cv.edad
from clientes as cm
cross join clientes cv
where cm.sexo='f' and cv.sexo='m';

select cm.nombre,cm.edad,cv.nombre,cv.edad
from clientes as cm
join clientes cv
on cm.nombre<>cv.nombre
where cm.sexo='f' and cv.sexo='m';

select cm.nombre,cm.edad,cv.nombre,cv.edad
from clientes as cm
cross join clientes cv
where cm.sexo='f' and cv.sexo='m' and
cm.edad-cv.edad between -5 and 5;

--2do problema

if object_id('equipos') is not null
drop table equipos;

create table equipos(
nombre varchar(30),
barrio varchar(20),
domicilio varchar(30),
entrenador varchar(30)
);

insert into equipos values('Los tigres','Gral. Paz','Sarmiento 234','Juan Lopez');
insert into equipos values('Los leones','Centro','Colon 123','Gustavo Fuentes');
insert into equipos values('Campeones','Pueyrredon','Guemes 346','Carlos Moreno');
insert into equipos values('Cebollitas','Alberdi','Colon 1234','Luis Duarte');

select e1.nombre,e2.nombre,e1.barrio as 'sede'
from equipos as e1
cross join equipos as e2
where e1.nombre<>e2.nombre;

select e1.nombre,e2.nombre,e1.barrio as 'sede'
from equipos as e1
join equipos as e2
on e1.nombre<>e2.nombre;

select e1.nombre,e2.nombre,e1.barrio as 'sede'
from equipos as e1
cross join equipos as e2
where e1.nombre>e2.nombre;



--72 - Combinaciones y funciones 

if object_id('visitantes') is not null
drop table visitantes;
if object_id('ciudades') is not null
drop table ciudades;

create table visitantes(
nombre varchar(30),
edad tinyint,
sexo char(1) default 'f',
domicilio varchar(30),
codigociudad tinyint not null,
mail varchar(30),
montocompra decimal (6,2)
);

create table ciudades(
codigo tinyint identity,
nombre varchar(20)
);
 
insert into ciudades values('Cordoba');
insert into ciudades values('Carlos Paz');
insert into ciudades values('La Falda');
insert into ciudades values('Cruz del Eje');

insert into visitantes values 
('Susana Molina', 35,'f','Colon 123', 1, null,59.80);
insert into visitantes values 
('Marcos Torres', 29,'m','Sucre 56', 1, 'marcostorres@hotmail.com',150.50);
insert into visitantes values 
('Mariana Juarez', 45,'f','San Martin 111',2,null,23.90);
insert into visitantes values 
('Fabian Perez',36,'m','Avellaneda 213',3,'fabianperez@xaxamail.com',0);
insert into visitantes values 
('Alejandra Garcia',28,'f',null,2,null,280.50);
insert into visitantes values 
('Gaston Perez',29,'m',null,5,'gastonperez1@gmail.com',95.40);
insert into visitantes values 
('Mariana Juarez',33,'f',null,2,null,90);

select c.nombre,
count(*) as cantidad
from ciudades as c
join visitantes as v
on codigociudad=c.codigo
group by c.nombre;

select c.nombre,sexo,
avg(montocompra) as 'promedio de compra'
from ciudades as c
join visitantes as v
on codigociudad=c.codigo
group by c.nombre,sexo;

select c.nombre,
count(mail) as 'tienen mail'
from ciudades as c
join visitantes as v
on codigociudad=c.codigo
group by c.nombre;

select c.nombre,
max(montocompra)
from visitantes as v
join ciudades as c
on codigociudad=c.codigo
group by c.nombre;





--73 - Combinación de más de dos tablas

if object_id('socios') is not null
drop table socios;
if object_id('deportes') is not null
drop table deportes;
if object_id('inscriptos') is not null
drop table inscriptos;

create table socios(
documento char(8) not null, 
nombre varchar(30),
domicilio varchar(30),
primary key(documento)
);
create table deportes(
codigo tinyint identity,
nombre varchar(20),
profesor varchar(15),
primary key(codigo)
);
create table inscriptos(
documento char(8) not null, 
codigodeporte tinyint not null,
anio char(4),
matricula char(1),--'s'=paga, 'n'=impaga
primary key(documento,codigodeporte,anio)
);

insert into socios values('22222222','Ana Acosta','Avellaneda 111');
insert into socios values('23333333','Betina Bustos','Bulnes 222');
insert into socios values('24444444','Carlos Castro','Caseros 333');
insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

insert into deportes values('basquet','Juan Juarez');
insert into deportes values('futbol','Pedro Perez');
insert into deportes values('natacion','Marina Morales');
insert into deportes values('tenis','Marina Morales');

insert into inscriptos values ('22222222',3,'2006','s');
insert into inscriptos values ('23333333',3,'2006','s');
insert into inscriptos values ('24444444',3,'2006','n');

insert into inscriptos values ('22222222',3,'2005','s');
insert into inscriptos values ('22222222',3,'2007','n');

insert into inscriptos values ('24444444',1,'2006','s');
insert into inscriptos values ('24444444',2,'2006','s');

insert into inscriptos values ('26666666',0,'2006','s');

select s.nombre,d.nombre,anio
from deportes as d
right join inscriptos as i
on codigodeporte=d.codigo
left join socios as s
on i.documento=s.documento;

select s.nombre,d.nombre,anio,matricula
from deportes as d
full join inscriptos as i
on codigodeporte=d.codigo
full join socios as s
on s.documento=i.documento;

select s.nombre,d.nombre,anio,matricula
from deportes as d
join inscriptos as i
on codigodeporte=d.codigo
join socios as s
on s.documento=i.documento
where s.documento='22222222';

--75 Funciones de Valores con tabla 

if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8) not null,
  apellido varchar(30) not null,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(30),
  fechanacimiento datetime,
  constraint PK_empleados
   primary key(documento)
 );

 insert into empleados values('22222222','Acosta','Ana','Avellaneda 123','Cordoba','1970/10/10');
 insert into empleados values('23333333','Bustos','Bernardo','Bulnes 234','Cordoba','1972/05/15');
 insert into empleados values('24444444','Caseros','Carlos','Colon 356','Carlos Paz','1980/02/25');
 insert into empleados values('25555555','Fuentes','Fabiola','Fragueiro 987','Jesus Maria','1984/06/12');

 if object_id('f_empleados') is not null
  drop function f_empleados;

 create function f_empleados
 (@opcion varchar(10)
 )
 returns @listado table
 (documento char(8),
 nombre varchar(60),
 domicilio varchar(60),
 nacimiento varchar(12))
 as 
 begin
  if @opcion not in ('total','parcial')
    set @opcion='parcial'
  if @opcion='total'
   insert @listado 
    select documento,
    (apellido+' '+nombre),
    (domicilio+' ('+ciudad+')'), 
    cast(fechanacimiento as varchar(12))
     from empleados
  else
   insert @listado
   select documento,apellido,ciudad,cast(datepart(year,fechanacimiento) as char(4))
   from empleados
  return
end;

 select *from dbo.f_empleados('total');

 select *from dbo.f_empleados();

 select *from dbo.f_empleados('');

 select *from dbo.f_empleados('parcial')
  where domicilio='Cordoba';

  82 - Unión
if object_id('clientes') is not null
  drop table clientes;
 if object_id('proveedores') is not null
  drop table proveedores;
 if object_id('empleados') is not null
  drop table empleados;

 create table proveedores(
  codigo int identity,
  nombre varchar (30),
  domicilio varchar(30),
  primary key(codigo)
 );
 create table clientes(
  codigo int identity,
  nombre varchar (30),
  domicilio varchar(30),
  primary key(codigo)
 );
 create table empleados(
  documento char(8) not null,
  nombre varchar(20),
  apellido varchar(20),
  domicilio varchar(30),
  primary key(documento)
 );

 insert into proveedores values('Bebida cola','Colon 123');
 insert into proveedores values('Carnes Unica','Caseros 222');
 insert into proveedores values('Lacteos Blanca','San Martin 987');
 insert into clientes values('Supermercado Lopez','Avellaneda 34');
 insert into clientes values('Almacen Anita','Colon 987');
 insert into clientes values('Garcia Juan','Sucre 345');
 insert into empleados values('23333333','Federico','Lopez','Colon 987');
 insert into empleados values('28888888','Ana','Marquez','Sucre 333');
 insert into empleados values('30111111','Luis','Perez','Caseros 956');

 select nombre, domicilio from proveedores
  union
  select nombre, domicilio from clientes
   union
   select (apellido+' '+nombre), domicilio from empleados;

 select nombre, domicilio, 'proveedor' as categoria from proveedores
  union
  select nombre, domicilio, 'cliente' from clientes
   union
   select (apellido+' '+nombre), domicilio , 'empleado' from empleados
  order by categoria;

--83 - Agregar y eliminar campos ( alter table - add - drop)
if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  fechaingreso datetime
 );
 insert into empleados(apellido,nombre) values ('Rodriguez','Pablo');

 alter table empleados
  add sueldo decimal(5,2);

 exec sp_columns empleados;

 alter table empleados
  add codigo int identity;

 alter table empleados
  add documento char(8) not null;

 alter table empleados
  add documento char(8) not null default '00000000';

 exec sp_columns empleados;

 alter table empleados
  drop column sueldo;

 exec sp_columns empleados;

 alter table empleados
  drop column documento;

 alter table empleados
  drop column codigo,fechaingreso;

 exec sp_columns empleados;

--84 - Alterar campos (alter table - alter)
if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  legajo int not null,
  documento char(7) not null,
  nombre varchar(10),
  domicilio varchar(30),
  ciudad varchar(20) default 'Buenos Aires',
  sueldo decimal(6,2),
  cantidadhijos tinyint default 0,
  primary key(legajo)
 );

 alter table empleados
  alter column nombre varchar(30);

 exec sp_columns empleados;

 alter table empleados
  alter column sueldo decimal(6,2) not null;

 alter table empleados
  alter column documento char(8) not null;

 alter table empleados
  alter column legajo tinyint not null;

 insert into empleados values(1,'22222222','Juan Perez','Colon 123','Cordoba',500,3);
 insert into empleados values(2,'30000000',null,'Sucre 456','Cordoba',600,2);

 alter table empleados
  alter column nombre varchar(30) not null;

 delete from empleados where nombre is null;
 alter table empleados
  alter column nombre varchar(30) not null;

 alter table empleados
  alter column ciudad varchar(10);

 insert into empleados values(3,'33333333','Juan Perez','Sarmiento 856',default,500,4);

 alter table empleados
  alter column ciudad varchar(15);

 insert into empleados values(3,'33333333','Juan Perez','Sarmiento 856',default,500,4);

 alter table empleados
  alter column legajo int identity;

--86 - Campos calculados
if object_id('articulos') is not null
  drop table articulos;

 create table articulos(
  codigo int identity,
  descripcion varchar(30),
  precio decimal(5,2) not null,
  cantidad smallint not null default 0,
  montototal as precio *cantidad
 );

 insert into articulos values('birome',1.5,100,150);

 insert into articulos values('birome',1.5,100);
 insert into articulos values('cuaderno 12 hojas',4.8,150);
 insert into articulos values('lapices x 12',5,200);

 select * from articulos;

 update articulos set precio=2 where descripcion='birome';
 select * from articulos;

 update articulos set cantidad=200 where descripcion='birome';
 select * from articulos;

 update articulos set montototal=300 where descripcion='birome';

--92 - Subconsultas como expresión
if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  documento char(8),
  nombre varchar(30),
  nota decimal(4,2),
  primary key(documento),
  constraint CK_alumnos_nota_valores check (nota>=0 and nota <=10),
 );

 insert into alumnos values('30111111','Ana Algarbe',5.1);
 insert into alumnos values('30222222','Bernardo Bustamante',3.2);
 insert into alumnos values('30333333','Carolina Conte',4.5);
 insert into alumnos values('30444444','Diana Dominguez',9.7);
 insert into alumnos values('30555555','Fabian Fuentes',8.5);
 insert into alumnos values('30666666','Gaston Gonzalez',9.70);

 select alumnos.*
  from alumnos
  where nota=
   (select max(nota) from alumnos);

 select documento ,nombre, nota
  from alumnos
  where nota=
   (select nombre,max(nota) from alumnos);

 select alumnos.*,
 (select avg(nota) from alumnos)-nota as diferencia
  from alumnos
  where nota<
   (select avg(nota) from alumnos);

 update alumnos set nota=4
  where nota=
   (select min(nota) from alumnos);

 delete from alumnos
 where nota<
   (select avg(nota) from alumnos);

--93 - Subconsultas con in
if (object_id('ciudades')) is not null
   drop table ciudades;
  if (object_id('clientes')) is not null
   drop table clientes;

 create table ciudades(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  codigociudad tinyint not null,
  primary key(codigo),
  constraint FK_clientes_ciudad
   foreign key (codigociudad)
   references ciudades(codigo)
   on update cascade,
 );

 insert into ciudades (nombre) values('Cordoba');
 insert into ciudades (nombre) values('Cruz del Eje');
 insert into ciudades (nombre) values('Carlos Paz');
 insert into ciudades (nombre) values('La Falda');
 insert into ciudades (nombre) values('Villa Maria');

 insert into clientes values ('Lopez Marcos','Colon 111',1);
 insert into clientes values ('Lopez Hector','San Martin 222',1);
 insert into clientes values ('Perez Ana','San Martin 333',2);
 insert into clientes values ('Garcia Juan','Rivadavia 444',3);
 insert into clientes values ('Perez Luis','Sarmiento 555',3);
 insert into clientes values ('Gomez Ines','San Martin 666',4);
 insert into clientes values ('Torres Fabiola','Alem 777',5);
 insert into clientes values ('Garcia Luis','Sucre 888',5);

 select nombre
  from ciudades
  where codigo in
   (select codigociudad
     from clientes
     where domicilio like 'San Martin %');

 select distinct ci.nombre
  from ciudades as ci
  join clientes as cl
  on codigociudad=ci.codigo
  where domicilio like 'San Martin%';

 select nombre
  from ciudades
  where codigo not in
   (select codigociudad
     from clientes
     where nombre like 'G%');

 select codigociudad
  from clientes
  where nombre like 'G%';

--94 - Subconsultas any - some - all
if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select numero,nombre,deporte
  from socios as s
  join inscriptos as i
  on numerosocio=numero;

 select nombre
  from socios
  join inscriptos as i
  on numero=numerosocio
  where deporte='natacion' and 
  numero= any
  (select numerosocio
    from inscriptos as i
    where deporte='tenis');

 select deporte
  from inscriptos as i
  where numerosocio=1 and
  deporte= any
   (select deporte
    from inscriptos as i
    where numerosocio=2);

 select i1.deporte
  from inscriptos as i1
  join inscriptos as i2
  on i1.deporte=i2.deporte
  where i1.numerosocio=1 and
  i2.numerosocio=2;

 select deporte
  from inscriptos as i
  where numerosocio=2 and
  cuotas>any
   (select cuotas
    from inscriptos
    where numerosocio=1);

 select deporte
  from inscriptos as i
  where numerosocio=2 and
  cuotas>all
   (select cuotas
    from inscriptos
    where numerosocio=1);

 delete from inscriptos
  where numerosocio=any
   (select numerosocio 
    from inscriptos
    where cuotas=0);

--95 - Subconsultas correlacionadas
if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select nombre,domicilio,
  (select count(*)
    from inscriptos as i
    where s.numero=i.numerosocio) as 'deportes'
 from socios as s;

 select nombre,
  (select (count(*)*10)
    from inscriptos as i
    where s.numero=i.numerosocio) as total,
  (select sum(i.cuotas)
    from inscriptos as i
    where s.numero=i.numerosocio) as pagas
 from socios as s;

 select nombre,
  count(i.deporte)*10 as total,
  sum(i.cuotas) as pagas
  from socios as s
  join inscriptos as i
  on numero=numerosocio
  group by nombre;

--96 - Exists y No Exists
if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select nombre
  from socios as s
  where exists
   (select *from inscriptos as i
     where s.numero=i.numerosocio
     and i.deporte='natacion');

 select nombre
  from socios as s
  where not exists
   (select *from inscriptos as i
     where s.numero=i.numerosocio
     and i.deporte='natacion');

 select s.*
  from socios as s
  where exists
   (select *from inscriptos as i
     where s.numero=i.numerosocio
     and i.cuotas=10);

--98 - Subconsulta en lugar de una tabla
if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;
 if object_id('deportes') is not null
  drop table deportes;

 create table socios(
  documento char(8) not null, 
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );
 create table deportes(
  codigo tinyint identity,
  nombre varchar(20),
  profesor varchar(15),
  primary key(codigo)
 );
 create table inscriptos(
  documento char(8) not null, 
  codigodeporte tinyint not null,
  año char(4),
  matricula char(1),--'s'=paga, 'n'=impaga
  primary key(documento,codigodeporte,año),
  constraint FK_inscriptos_socio
   foreign key (documento)
   references socios(documento)
   on update cascade
   on delete cascade
 );

 insert into socios values('22222222','Ana Acosta','Avellaneda 111');
 insert into socios values('23333333','Betina Bustos','Bulnes 222');
 insert into socios values('24444444','Carlos Castro','Caseros 333');
 insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

 insert into deportes values('basquet','Juan Juarez');
 insert into deportes values('futbol','Pedro Perez');
 insert into deportes values('natacion','Marina Morales');
 insert into deportes values('tenis','Marina Morales');

 insert into inscriptos values ('22222222',3,'2006','s');
 insert into inscriptos values ('23333333',3,'2006','s');
 insert into inscriptos values ('24444444',3,'2006','n');
 insert into inscriptos values ('22222222',3,'2005','s');
 insert into inscriptos values ('22222222',3,'2007','n');
 insert into inscriptos values ('24444444',1,'2006','s');
 insert into inscriptos values ('24444444',2,'2006','s');

 select i.documento,i.codigodeporte,d.nombre as deporte, año, matricula, d.profesor
 from deportes as d
 join inscriptos as i
 on d.codigo=i.codigodeporte;

 select s.nombre,td.deporte,td.profesor,td.año,td.matricula
  from socios as s
  join (select i.documento,i.codigodeporte,d.nombre as deporte, año, matricula, d.profesor
	from deportes as d
	join inscriptos as i
	on d.codigo=i.codigodeporte) as td
  on td.documento=s.documento;
