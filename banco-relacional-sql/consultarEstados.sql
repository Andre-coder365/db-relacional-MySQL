select * from estados

select nome, sigla from estados;

--select com alias para nome e restrição da região
select sigla, nome as 'Nome do Estado' from estados
where regiao = 'Sul'

--consulta com ordem crescente
select nome, regiao, populacao from estados
where populacao >=10
order by populacao

--consulta com ordem decrescente
select nome, regiao, populacao from estados
where populacao >=10
order by populacao desc