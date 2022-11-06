--essa tabela foi criada para exemplificar a relação de
--muitos para muitos, ou seja, de cidades para empresas, porquê
-- uma empresa pode estar em muitas cidades, e uma cidade pode ter muitas empresas

CREATE TABLE IF NOT EXISTS empresas (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cnpj int unsigned,
    PRIMARY KEY (id),
    UNIQUE KEY (cnpj)
);

-- cidades_empresas
CREATE TABLE IF NOT EXISTS empresas_unidade (
    empresa_id INT UNSIGNED NOT NULL,
    cidade_id INT UNSIGNED NOT NULL,
    sede TINYINT (1) NOT NULL,
    PRIMARY KEY (empresa_id, cidade_id)
);