create database senac_bd;
use senac_bd;

create table endereco (
nome nvarchar(40),
numero int,
complemento char,
bairro nvarchar(30),
cidade nvarchar(30),
id_endereco int primary key IDENTITY (1,1)
);

create table aluno(
id_matricula int IDENTITY(1,1),
nome nvarchar(50),
idade int,
cpf char(11),
email nvarchar(40),
id_endereco int foreign key(id_endereco) references  endereco(id_endereco),
primary key(id_matricula)
);

create table funcionario (
id_matricula int IDENTITY(1,1) primary key,
nome nvarchar(50) NOT NULL,
cpf char(11),
cargo nvarchar(30),
telefone char(11),
email nvarchar(50),
id_endereco int foreign key(id_endereco) references  endereco(id_endereco)
);


create table curso (
id_curso int IDENTITY(1,1),
nome nvarchar(40),
modalidade nvarchar(15),
data_inicio date,
data_final date,
area nvarchar(20),
primary key(id_curso)
);

create table professor (
id_professor int  primary key IDENTITY(1,1),
graduacao nvarchar(30),
tipo nvarchar(15),
area nvarchar(25),
foreign key(id_professor) references  funcionario (id_matricula)
);


create table coordenador (
id_coordenador int primary key,
id_senac nvarchar(15),
id_matricula int,
foreign key(id_matricula) references  funcionario (id_matricula),
foreign key (id_senac) references  senac_unidade (unidade)
);

create table senac_unidade (
nome char(5) NOT NULL,
unidade nvarchar(15) primary key,
id_endereco int,
telefone char(11),
coordenador_unidade int,
email nvarchar(25),
cnpj char(14) 
foreign key(coordenador_unidade) references  coordenador(id_coordenador),
foreign key(id_endereco) references  endereco(id_endereco)
);
create table Tecnico (
id_curso int,
foreign key (id_curso) references  curso(id_curso)
);

create table livre (
id_curso int,
foreign key (id_curso) references  curso(id_curso)
);


create table turma (
nome nvarchar,
id_professor int,
id_aluno int,
quantidade int,
foreign key(id_professor) references  professor (id_professor),
foreign key(id_aluno) references  aluno (id_matricula),
);

create table psg (
matricula_A int,
foreign key(matricula_A) references  aluno (id_matricula),
);

create table bolsista (
matricula_A int,
foreign key(matricula_A) references  aluno (id_matricula),
);

create table comercial (
matricula_A int,
valor decimal(6,2),
foreign key(matricula_A) references  aluno (id_matricula),
);

