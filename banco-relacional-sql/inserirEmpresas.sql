
--comando Alter Table - modifica o tipo de um campo de uma tabela
    ALTER TABLE empresas MODIFY cnpj VARCHAR(14);

    INSERT INTO empresas (nome, cnpj) VALUES
    ('Bradesco', 95694186000132),
    ('Vale', 27887148000146),
    ('Cielo', 01598317000134);

    desc empresas;
    desc prefeitos;
-- desc - comando para descrição dos campos - o tipo, se é nulo, etc

    select * from empresas;
    select * from cidades;

    INSERT INTO empresas_unidade (empresa_id, cidade_id, sede) VALUES
    (1, 1, 1),
    (1, 2, 0),
    (2, 1, 0),
    (2, 2, 1);