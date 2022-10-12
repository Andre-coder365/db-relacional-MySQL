CREATE TABLE IF NOT EXISTS prefeitos (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cidade_id int unsigned,
    PRIMARY KEY (id),
    UNIQUE KEY (cidade_id),
    FOREIGN KEY (cidade_id) REFERENCES cidades (id)
);
-- Temos um campo que vai ser a chave estrangeira (FOREIGN KEY)
-- cidade_id referencia o atributo id na tabela cidades
-- além disso, cidade_id não aceita duplicação
-- isso é o que caracteriza uma relação 1 para 1