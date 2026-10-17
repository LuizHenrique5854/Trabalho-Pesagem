create database IF NOT EXISTS TrabalhoPesagem;
grant all privileges on TrabalhoPesagem.* to 'saas'@'localhost';
flush privileges;
use TrabalhoPesagem;
create table IF NOT EXISTS usuario (id int auto_increment primary key, nome varchar(50) not null, email varchar(50) not null UNIQUE, altura decimal(3,2), senha varchar (255) not null, data_de_nascimento DATE not null);
create table IF NOT EXISTS pesagem (id int auto_increment primary key, usuario_id int not null, peso decimal (5,2) not null, data TIMESTAMP, foreign key (usuario_id) REFERENCES usuario(id));
exit;
