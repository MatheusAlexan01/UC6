---Questão 1
select titulo,autor from livro
join SOCIOLOGIA on 
SOCIOLOGIA.numero_registro =  livro.numero_registro;

---Questão 2
select funcionario.nome from FUNCIONARIO
join BIBLIOTECARIO on
BIBLIOTECARIO.matricula = FUNCIONARIO.matricula;


select * from ATENDENTE;


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

select data,tipo from EVENTO where tipo = 'Workshop' and YEAR(data) > '2020';

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


---Questão 9
---Forma 1
select * from FUNCIONARIO
where matricula not like 't%';
---Forma 2 ERRADA
select * from  FUNCIONARIO
where matricula  not in (select matricula from TECNICO_TI);

 select * from  usuario
---Questão 10 

select titulo,autor,id_usuario from livro 
join EMPRESTIMO on livro.numero_registro = EMPRESTIMO.id_livro
where id_usuario = 100


---Questão 11
---FORMA 1
select custo,tipo from EVENTO where custo > '100.00' and tipo = 'palestra';
---FORMA 2
select * from evento 
join palestra on evento.id_evento = palestra.id_evento
where custo > 100.00;

---Questão 12 
select titulo,ano_publicacao from livro
join CIENCIA on CIENCIA.numero_registro = LIVRO.numero_registro
where ano_publicacao > '2010';

---Questão 13
select FUNCIONARIO.nome from FUNCIONARIO
join ATENDENTE on  FUNCIONARIO.matricula = ATENDENTE.matricula
where FUNCIONARIO.nome like '% Maria %';

---Questão 14
select titulo from LIVRO
join EMPRESTIMO  on LIVRO.numero_registro = EMPRESTIMO.id_livro  where
(select count(*) from  EMPRESTIMO where livro.numero_registro = EMPRESTIMO.id_livro) > 5;

---Questão 15
select  EMPRESTIMO.id_usuario from EMPRESTIMO
join LIVRO on LIVRO.numero_registro = EMPRESTIMO.id_usuario
join usuario on EMPRESTIMO.id_usuario = usuario.id_usuario
join TECNOLOGIA on LIVRO.numero_registro = TECNOLOGIA.numero_registro;

---Questão  16
select * from evento 
join palestra on evento.id_evento = palestra.id_evento
where year (data) > '2022';

---Questão 17
select titulo  from PERIODICO
where titulo like '%saúde%';

---Questão 18



--- Questão 20
select titulo,autor  from livro
join EMPRESTIMO on
EMPRESTIMO.id_livro = LIVRO.numero_registro where MONTH(data_emprestimo) = 2  and year(data_emprestimo) = 2023;



ALTER TABLE usuario ALTER COLUMN id_usuario  primary key nVARCHAR(100);

