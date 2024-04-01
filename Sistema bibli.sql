---Questão 1
select titulo,autor from livro
join SOCIOLOGIA on 
SOCIOLOGIA.numero_registro =  livro.numero_registro;

---Questão 2
select nome from FUNCIONARIO
join BIBLIOTECARIO on
BIBLIOTECARIO.matricula = FUNCIONARIO.matricula;


select * from LIVRO;


---Questão 3
select titulo,ano_publicacao from LIVRO
where ano_publicacao < '2000';

---Questão 4  01234567000112,12345678000123,23456789000134,34567890000145,45678901000156,56789012000167,67890123000178,78901234000189,89012345000190,90123456000101
insert into LIVRO_BIBLIOTECA(cnpj,numero_registro) values
('01234567000112',5),
('01234567000112',6),
('12345678000123',1),
('12345678000123',27),
('12345678000123',11),
('23456789000134',4),
('23456789000134',21),
('23456789000134',22),
('23456789000134',49),
('34567890000145',40),
('45678901000156',9),
('45678901000156',33),
('45678901000156',25),
('45678901000156',26),
('45678901000156',13),
('56789012000167',18);

select cnpj, count(*) as QUANTIDADE_DE_LIVROS  from livro_biblioteca group by LIVRO_BIBLIOTECA.cnpj;

---Questão 5 
select data,tipo from EVENTO where tipo = 'Workshop' and data > '2020-31-12';


---Questão 6
create table usuario(
id_usuario int identity(100,1) primary key,
nome nvarchar(100),
telefone char(11)
);

insert into usuario (nome,telefone) values
('Sofia Amanda','62989909426'),
('Hercules lima','91993466440'),
('Fabio junior','95997655140'),
('Cassio nunes','51987365840'),
('Maria Maculada','69984501438');

create table EMPRESTIMO(
id_usuario int,
id_livro int,
data_emprestimo date,
data_devolucao date,
foreign key (id_usuario)  references usuario(id_usuario),
foreign key (id_livro) references livro(numero_registro)
);

insert into EMPRESTIMO (id_usuario,id_livro,data_emprestimo,data_devolucao) values
(101,2,'2023-2-22','2023-5-12'),
(100,44,'2023-1-22','2023-6-1'),
(102,11,'2022-10-4','2023-1-10'),
(103,25,'2023-1-1','2023-8-19');

select * from EMPRESTIMO where MONTH(data_emprestimo) = 1  and year(data_emprestimo) = 2023;


---Questão 7
select titulo from LIVRO
join TECNOLOGIA on 
TECNOLOGIA.numero_registro = LIVRO.numero_registro where titulo like '%python%';

---Questão 8

select cnpj,titulo from PERIODICO
join PERIODICO_BIBLIOTECA on PERIODICO.numero_registro = PERIODICO_BIBLIOTECA.numero_registro
where cnpj = '12345678000123';

---Questão 10 

select titulo,autor from livro 
join EMPRESTIMO on livro.numero_registro = EMPRESTIMO.id_livro
where numero_registro = '1'

--- Questão 20
select titulo,autor  from livro
join EMPRESTIMO on
EMPRESTIMO.id_livro = LIVRO.numero_registro where MONTH(data_emprestimo) = 2  and year(data_emprestimo) = 2023;



ALTER TABLE usuario ALTER COLUMN id_usuario  primary key nVARCHAR(100);

