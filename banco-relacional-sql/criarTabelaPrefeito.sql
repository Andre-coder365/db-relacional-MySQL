-- A tabela "prefeitos" foi criada para relacionar com a tabela "cidades"
-- e exemplificar a relação 1 para 1.
-- nesse exemplo, propositalmente, o campo "cidade_id" pode ser nulo, assim
-- nesse exemplo, essa relação 1 para 1 é não-obrigatória, é opcional
-- eu posso - ou não - ter uma cidade associada a um prefeito

CREATE TABLE IF NOT EXISTS prefeitos (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cidade_id int unsigned,
    PRIMARY KEY (id),
    UNIQUE KEY (cidade_id),
    FOREIGN KEY (cidade_id) REFERENCES cidades (id)
);
-- Temos um campo que vai ser a chave estrangeira (FOREIGN KEY), que será cidade_id
-- cidade_id referencia o atributo id na tabela cidades
-- (o campo que vai apontar para a chave primária na outra tabela)
-- além disso, cidade_id não aceita duplicação
-- isso é o que caracteriza uma relação 1 para 1