
-- quando for colocar mais de uma tabela é muito importante ter um apelido, um alias para cada tabela
--não é obrigatório, vc pode usar o nome da tabela completo, mas via de regra vc coloca algum apelido
--nesse exemplo vou colocar simplesmente a letra "e" para estados
--para adicionar uma nova tabela basta vc adicionar uma vírgula e o nome da outra tabela
--coloquei um alias para a tabela cidades tbm, nesse caso, um "c"

select * from estados e, cidades c 
where e.id = c.estado_id;
--vc insere um where para que o id de estado seja exatamente igual à cidade.estado_id
--ou seja, a chave primária na tabela estados que foi para a tabela cidades vc tem que igualar ela
--para que de fato a cidade possa estar relacionada com seu estado corretamente

--sem o where, a consulta gera um "produto cartesiano" das duas tabelas, ou seja, as cidades aparecerão
-- nos resultados repetidas vezes relacionadas a todos os estados (todas as linhas da tabela cidades
--estarão relacionadas a todas as linhas da tabela estados)
--sem o "Where", ele não vai usar a chave primária e chave estrangeira para fazer essa relação
-- nesse exemplo, podendo gerar um resultado de query com 108 linhas

select e.nome, c.nome, regiao from estados e, cidades c 
where e.id = c.estado_id;

--usando o apelido para desambiguação - nome precisa - região não precisa pois não há ambiguidade
--obs. em caso de bug do plugin do VSCode, executar no Workbench ou tentar contornar usando "as".

select e.nome as Estado, c.nome as Cidade, regiao as Região from estados e, cidades c 
where e.id = c.estado_id;
--usando "as" para executar o comando usando o plugin do VSCodes

select * from estados e, cidades c
WHERE e.id = c.estado_id;


--usando o inner join
select c.nome as Cidade, e.nome as Estado, regiao as Região from estados e
 inner join cidades c on e.id = c.estado_id