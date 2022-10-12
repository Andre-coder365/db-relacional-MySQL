-- inserindo 2 estados fictícios com id informada para avaliar
-- comportamento do auto-incremento


insert into estados (id, nome, sigla, regiao, populacao)
values (1000, 'Novo', 'NV', 'Sul', 2.54)



insert into estados (nome, sigla, regiao, populacao)
values ('Mais Novo', 'MN', 'Norte', 2.51)

select * from estados