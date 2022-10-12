-- O "INSERT" não tem o comando"WHERE", vc vai simplesmente inserir um novo dado na tabela do banco de dados
-- O "SELECT" pode ou não ter "WHERE", vc pode filtrar ou não os dados da consulta.
--Mas com o "UPDATE" é muito raro vc não usar o"WHERE".
-- Isso porque se vc fizer um "UPDATE" sem o "WHERE", vc vai atualizar a tabela inteira.
-- no exemplo desse excercício, se não colocar o "WHERE", o comando irá atualizar todos os estados para Maranhão

update estados
set nome = 'Maranhão'
where sigla = 'MA'

select nome from estados where sigla = "MA"

update estados
set nome = 'Paraná', populacao = 11.32
where sigla = 'PR'

select nome, sigla, populacao from estados where sigla = "PR"