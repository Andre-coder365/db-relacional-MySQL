select * from prefeitos;
select * from cidades;
--A intersecção de "A" e "B" é o resultado do Inner join.
-- O inner significa que ele só vai trazer os dados que tenham uma relação de
--chave primária com chave estrangeira em outra tabela.
-- outer - o inverso do inner, aquilo que está fora da intersecção entre "A" e "B"
--Seria a operação de "A" - "B" e "B" - "A" (conjuntos)
-- left join = o que o "inner" traz, mais o lado esquerdo da relação.
-- o left join é a mesma coisa que o "left outer join"
-- o "right loin" (ou"right outer join) traz o resultado do inner join mais o lado direito da relação.
-- full join - não é suportado pelo MySQL, mas é suportado por outros bancos
-- o full join seria a união de "A" e "B", ou seja, tudo o que tem em "A", tudo o que tem em "B" e mais a intersecção.
select * from cidades c inner join prefeitos p on c.id = p.cidade_id;
-- cidades c left join prefeitos - ele trará todas as cidades (left)
select * from cidades c left join prefeitos p on c.id = p.cidade_id;
-- left outer join = a mesma coisa que left join 
select * from cidades c left outer join prefeitos p on c.id = p.cidade_id;
--cidades c right join prefeitos = virão todos os prefeitos e as cidades que tiverem relação
select * from cidades c right join prefeitos p on c.id = p.cidade_id;
-- select * from cidades c full join prefeitos p on c.id = p.cidade_id;
-- linha acima (full join) está comentada porque o MySQLnão suporta esse comando,
-- mas alguns outros bancos suportam

--como simular o full join no MySQL:
--pega a linha com select left - tira o ponto e vírgula, põe o "union"
--depois do "union", põe a linha com select right
--o resultado é equivalente ao "Full Join"

select * from cidades c left outer join prefeitos p on c.id = p.cidade_id
union
select * from cidades c right join prefeitos p on c.id = p.cidade_id;


--Se eu seguir o passo-a-passo anterior e incluir o "all" depois do "union"
--como no exemplo abaixo, ele trará um resultado com dados replicados
--(repetição de algumas cidades e alguns prefeitos)
--para ter o mesmo resultado que o "full join" precisa usar sem o "all"
select * from cidades c left outer join prefeitos p on c.id = p.cidade_id
union all
select * from cidades c right join prefeitos p on c.id = p.cidade_id;
-- union all com duplicações (do right e do left)
-- os comandos desse arquivo foram rodados no workbench