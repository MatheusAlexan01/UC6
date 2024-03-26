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
area nvarchar(30),
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

create table recepcionista(
id_recepcionista int,
foreign key(id_recepcionista) references  funcionario (id_matricula)
);


ALTER TABLE curso ADD vagas_disponiveis int;

select * from curso;

ALTER TABLE funcionario ADD data_admissao date;

UPDATE curso SET area = 'TI' WHERE id_curso = 4;


ALTER TABLE professor DROP COLUMN tempo_servico;

INSERT INTO funcionario (nome,cpf,cargo,telefone,email,id_endereco,salario,data_admissao) 
VALUES
('Amanda Cibele', '33467538401','Coordenador','843704666','estralaSophia@gmail',3,10100.10,'2010-10-18'); 

ALTER TABLE endereco ALTER COLUMN complemento VARCHAR(30) NULL;


ALTER TABLE senac_unidade DROP COLUMN coordenador_unidade;
ALTER TABLE senac_unidade DROP CONSTRAINT FK__senac_unid__cnpj__5070F446;


INSERT INTO endereco(nome,numero,complemento,bairro,cidade) 
VALUES
('Avenida Boa Sorte',101,'A','Gramoré','Natal');



select nome,genero from aluno where genero = 'Feminino';





INSERT INTO aluno (nome,idade,cpf,email,id_endereco,genero) 
VALUES
('Amorin',22,'99708955457','Amor1213@gmail.com',2,'Masculino');






ALTER TABLE curso ADD unidade nVARCHAR(15) foreign key (unidade) references senac_unidade (unidade) ;

ALTER TABLE Funcionario ALTER COLUMN Nome VARCHAR(100);


---Questão 1 
select * from funcionario;

---Questão 2
select nome,alunos_matriculados from curso;

--Questão 3
select nome,salario from  funcionario where cargo= 'Professor' order by salario desc ;

---Questão 4
select curso.area ,count(curso.area) as QUANTIDAD_CURSO from curso group by curso.area;


---	Questão 5

select datediff (month,''



---Questão 7
select nome,alunos_matriculados from curso where alunos_matriculados='0';


---Questão 8
SELECT   DATEDIFF(year, data_admissao,  GETDATE()) AS DiferencaEmAnos,nome  from funcionario;


---Questão 9


---Questão 10
select nome from aluno where nome like  '%a%';

---Questão 12 
select nome,alunos_matriculados from curso where nome ='Tecnico em Desenvolvimento de sistemas';

---Questão 14
SELECT nome,unidade from curso where nome ='Tecnico em Desenvolvimento de Sistemas';

--- Questão 17
select nome,genero from aluno where genero = 'Feminino';






INSERT INTO curso(nome,modalidade,data_inicio,data_final,area,duracao,alunos_matriculados,vagas_disponiveis,valor,unidade) 
VALUES
('Tecnico em Desenvolvimento de Sistemas','Presencial','2022-02-02','2023-06-02','TI','1 ano e 4 meses',4,4,8980.00,'ZONA NORTE');


SELECT nome,unidade from curso where nome ='Tecnico em Desenvolvimento de Sistemas';
select * from curso;

