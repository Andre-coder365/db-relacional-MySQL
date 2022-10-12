-- Assim como no comando de update é muito importante usar o "Where" para não atualizar todos os dados de uma tabela
-- No comando Delete também é muito importante usar o comando "Where" para não deletar uma tabela inteira
-- * nota - no Workbench, uma cláusula de segurança pode impedir um uso indesejado
--  do comando Delete sem o uso do "Where" (Safe update mode)

delete from estados
where sigla = 'MN'

select * from estados

delete from estados
where id >= 1000