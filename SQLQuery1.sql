use sistema_biblioteca;

---Quest�o 1
select count(*) as total_livros  
from LIVRO_BIBLIOTECA
where cnpj ='12345678000123';

---Quest�o 2
select * from BIBLIOTECARIO;

---Quest�o 3
select  titulo,autor from LIVRO where numero_registro = '10';

---Quest�o 4
select *
from evento 
where tipo = 'workshop' and custo > 150.00
---Quest�o 5
select livro.titulo
from LIVRO
join TECNOLOGIA on livro.numero_registro = TECNOLOGIA.numero_registro;
---Quest�o 6
select nome from ATENDENTE;
---Quest�o 7
select  ano_publicacao,titulo from PERIODICO where ano_publicacao = '2023';

---Quest�o 8
select livro.titulo,livro.numero_registro
from LIVRO
join SOCIOLOGIA  on livro.numero_registro = SOCIOLOGIA.numero_registro;
---Quest�o 9
select  matricula,nome from EDUCADOR;
---Quest�o 10
select PERIODICO.titulo from PERIODICO where titulo like 'c%';
---Quest�o 11
select EVENTO.data,EVENTO.tipo
from EVENTO
where tipo  = 'palestra' and data < '2022'
---Quest�o 12
select LIVRO.titulo,livro.ano_publicacao
from LIVRO
join CIENCIA on LIVRO.numero_registro = CIENCIA.numero_registro and ano_publicacao  > '2015';

---Quest�o 13
select TECNICO_TI.nome
from TECNICO_TI
where nome like '%rodrigo%';

---Quest�o 14
select FUNCIONARIO.nome
from FUNCIONARIO
join ASSISTENTE on FUNCIONARIO.matricula = ASSISTENTE.matricula;

---Quest�o 15
select livro.titulo
from livro
where titulo like '%programa��o%';

---Quest�o 16
select periodico.titulo
from periodico
where titulo like '%sa�de%';

---Quest�o 17
select funcionario.nome
from FUNCIONARIO
join GERENTE on FUNCIONARIO.matricula = GERENTE.matricula
where gerente.nome like 'C%';
---Quest�o 18 
--JEITO DE GUSTAVO
select livro.titulo,livro.ano_publicacao
from LIVRO
where ano_publicacao between '2010' and '2020';
---JEITO PROFESSOR
select livro.titulo,livro.ano_publicacao
from LIVRO
where ano_publicacao > '2010' and ano_publicacao < '2020' ;

---Quest�o 19 
select funcionario.nome
from FUNCIONARIO
join ESTAGIARIO on FUNCIONARIO.matricula = ESTAGIARIO.matricula
where ESTAGIARIO.nome like '%lima%';