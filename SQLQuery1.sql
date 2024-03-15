use sistema_biblioteca;

---Questão 1
select count(*) as total_livros  
from LIVRO_BIBLIOTECA
where cnpj ='12345678000123';

---Questão 2
select * from BIBLIOTECARIO;

---Questão 3
select  titulo,autor from LIVRO where numero_registro = '10';

---Questão 4
select *
from evento 
where tipo = 'workshop' and custo > 150.00
---Questão 5
select livro.titulo
from LIVRO
join TECNOLOGIA on livro.numero_registro = TECNOLOGIA.numero_registro;
---Questão 6
select nome from ATENDENTE;
---Questão 7
select  ano_publicacao,titulo from PERIODICO where ano_publicacao = '2023';

---Questão 8
select livro.titulo,livro.numero_registro
from LIVRO
join SOCIOLOGIA  on livro.numero_registro = SOCIOLOGIA.numero_registro;
---Questão 9
select  matricula,nome from EDUCADOR;
---Questão 10
select PERIODICO.titulo from PERIODICO where titulo like 'c%';
---Questão 11
select EVENTO.data,EVENTO.tipo
from EVENTO
where tipo  = 'palestra' and data < '2022'
---Questão 12
select LIVRO.titulo,livro.ano_publicacao
from LIVRO
join CIENCIA on LIVRO.numero_registro = CIENCIA.numero_registro and ano_publicacao  > '2015';

---Questão 13
select TECNICO_TI.nome
from TECNICO_TI
where nome like '%rodrigo%';

---Questão 14
select FUNCIONARIO.nome
from FUNCIONARIO
join ASSISTENTE on FUNCIONARIO.matricula = ASSISTENTE.matricula;

---Questão 15
select livro.titulo
from livro
where titulo like '%programação%';

---Questão 16
select periodico.titulo
from periodico
where titulo like '%saúde%';

---Questão 17
select funcionario.nome
from FUNCIONARIO
join GERENTE on FUNCIONARIO.matricula = GERENTE.matricula
where gerente.nome like 'C%';
---Questão 18 
--JEITO DE GUSTAVO
select livro.titulo,livro.ano_publicacao
from LIVRO
where ano_publicacao between '2010' and '2020';
---JEITO PROFESSOR
select livro.titulo,livro.ano_publicacao
from LIVRO
where ano_publicacao > '2010' and ano_publicacao < '2020' ;

---Questão 19 
select funcionario.nome
from FUNCIONARIO
join ESTAGIARIO on FUNCIONARIO.matricula = ESTAGIARIO.matricula
where ESTAGIARIO.nome like '%lima%';