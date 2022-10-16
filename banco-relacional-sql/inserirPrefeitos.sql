select * from cidades

INSERT INTO prefeitos (nome, cidade_id) VALUES
    ('Rodrigo Neves', 2),
    ('Raquel Lyra', 3),
    ('Zenaldo Coutinho', null);

    select * from prefeitos

    INSERT INTO prefeitos (nome, cidade_id) VALUES
    ('Rafael Greca', null);




-- a inserção abaixo (Rodrigo Pinheiro) é para exemplificar que dará um erro de entrada duplicada
--(chave cidade_id é chave única)
INSERT INTO prefeitos (nome, cidade_id) VALUES
    ('Rodrigo Pinheiro', 3);