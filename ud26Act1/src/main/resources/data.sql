Create database fabrica;
use fabrica;

CREATE TABLE piezas (
codigo int auto_increment primary key,
nombre nvarchar(100));

CREATE TABLE proveedores ( 
id char(4) primary key,
nombre nvarchar(100));

CREATE TABLE suministra (
id int auto_increment primary key,
codigopieza int,
idproveedor char(4),
precio int,
foreign key (codigopieza) references piezas (codigo) ON DELETE CASCADE,
foreign key (idproveedor) references proveedores (id) ON DELETE CASCADE);