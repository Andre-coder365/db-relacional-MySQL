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
select * from cidades c left join prefeitos p on c.id = p.cidade_id;
select * from cidades c left outer join prefeitos p on c.id = p.cidade_id;
select * from cidades c right join prefeitos p on c.id = p.cidade_id;
-- select * from cidades c full join prefeitos p on c.id = p.cidade_id;

select * from cidades c left outer join prefeitos p on c.id = p.cidade_id
union
select * from cidades c right join prefeitos p on c.id = p.cidade_id;

select * from cidades c left outer join prefeitos p on c.id = p.cidade_id
union all
select * from cidades c right join prefeitos p on c.id = p.cidade_id;
-- union all com duplicações (do right e do left)
-- feito no workbench