Sequência de eventos nos estudos

1 - Criação do Schema WM [(criarSchema.sql)](./criarSchema.sql).

2 - Criação da tabela Estados [(criarTabelaEstados.sql)](./banco-relacional-sql/criarTabelaEstados.sql)

3 - Inserção dos estados [(inserirEstados1.sql)](./banco-relacional-sql/inserirEstados1.sql)

4 - Inserir estados 2 [(inserirEstados2.sql)](./banco-relacional-sql/inserirEstados2.sql)

5 - Consultas com SELECT [(consultarEstados.sql)](./banco-relacional-sql/consultarEstados.sql)

6 - Update [(atualizarEstados.sql)](./banco-relacional-sql/atualizarEstados.sql) e explicação do uso do comando "Where"

7 - Inserir dois estados fictícios com id informada [(inserirNovosEstados.sql)](./banco-relacional-sql/inserirNovosEstados.sql)

8 - Excluir estados com o comando delete e reforço do uso do "Where" [(excluirEstados.sql)](./banco-relacional-sql/excluirEstados.sql) * nota - no Workbench, uma cláusula de segurança pode impedir um uso indesejado do comando Delete sem o uso do "Where" (Safe update mode)
No plugin do VSCode parece não haver essa cláusula de segurança.

9 - Consulta com agregação [(consultarComAgregação.sql)](./banco-relacional-sql/consultarComAgregacao.sql) - Consulta de múltiplas linhas (ou múltiplas tuplas).

10 - Criação da tablela "cidades" usando uma chave estrangeira [(criarTabelaCidades.sql)](./banco-relacional-sql/criarTabelaCidades.sql) essa tabela foi criada pare demonstrar alguns tipos de relacionamento - relação 1 para muitos (1 estado para muitas cidades) e relação 1 para 1 (1 prefeito para uma cidade)

11 - Inserindo cidades na tabela "cidades" e vinculando aos estados [(inserirCidades.sql)](./banco-relacional-sql/inserirCidades.sql)

12 - Consultar múltiplas tabelas - consultas com "join" (consultarComJoin.sql)

13 - Tipos de joins [(consultarComJoins-2.sql)](./banco-relacional-sql/consultarComJoins-2.sql)
Inner join = A intersecção de "A" e "B" é o resultado (relação de chave primária + chave estrangeira)
outer join = Operação de "A" - "B" e "B" - "A" (o inverso do inner, o que está "fora" da intersecção
entre as duas tabelas)
left join = o que o "inner" traz, mais o lado esquerdo da relação.

14 - criação da tabela prefeitos - para exemplificar relação 1 para 1 - [(criarTabelaPrefeitos.sql)](./banco-relacional-sql/criarTabelaPrefeito.sql)

15 - popular a tabela prefeitos [(inserirPrefeitos.sql)](./banco-relacional-sql/inserirPrefeitos.sql)

16 - explorando os tipos de Joins [(consultarComJoins-2.sql)](./banco-relacional-sql/consultarComJoins-2.sql)

17 - criar tabela Empresa - para exemplificar a relação muitos para muitos entre empresas e cidades  [(criarTabelaEmpresa.sql)](./banco-relacional-sql/criarTabelaEmpresa.sql)

18 - inserção de empresas [(inserirEmpresas.sql)](./banco-relacional-sql/inserirEmpresas.sql)

19 - Consultar Empresas [(consultarEmpresas.sql)](./banco-relacional-sql/consultarEmpresas.sql)

Nota1 - para comentar uma linha, basta selecionar e clicar control + barra (windows)
ou digitar 2 hífens antes da linha