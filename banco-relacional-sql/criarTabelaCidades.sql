-- essa tabela foi criada pare demonstrar alguns tipos de relacionamento
--relação com a tabela Estados = 1 para muitos (1 estado para muitas cidades)
-- relação com a tabela prefeitos = 1 para 1 (1 prefeito para uma cidade)


CREATE TABLE IF NOT EXISTS cidades (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    NOME VARCHAR(255) NOT NULL,
    estado_id int unsigned NOT NULL,
    area DECIMAL (10,2),
    PRIMARY KEY(id),
    FOREIGN KEY (estado_id) REFERENCES estados (id)
);

--area = é um decimal de 10 dígitos e 2 dígitos desses 10 é formada por ponto flutuante.
--References = refere-se à tabela estado e à coluna id.
--se for vários CREATS é obrigatório o uso do ponto e vírgula, mas se for só 1 é Facul

CREATE TABLE IF NOT EXISTS teste (
 id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
   
);

DROP TABLE IF EXISTS teste;