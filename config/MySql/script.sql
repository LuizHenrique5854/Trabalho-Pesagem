create database TrabalhoPesagem;
grant all privileges on TrabalhoPesagem .* to 'saas'@'localhost';
flush privileges;
use TrabalhoPesagem;
create table usuario (id int  auto_increment primary key, nome varchar(50) not null, email varchar(50) not null UNIQUE, altura decimal(3,2), senha varchar (50) not null);
create table pesagem (id int auto_increment primary key, usuario_id int not null, peso int not null, data TIMESTAMP);
exit;
