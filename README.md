CREATE TABLE hospede (
    nome VARCHAR(25) NOT NULL,
    genero VARCHAR(1),
    biotipo VARCHAR(1),
    altura NUMERIC(5,2),
    PRIMARY KEY (nome)
);

CREATE TABLE quarto (
    nome VARCHAR(25) NOT NULL,
    quarto INT NOT NULL,
    chegada DATE NOT NULL,
    saida DATE,
    desconto NUMERIC(5,2),
    PRIMARY KEY (nome, quarto),
    FOREIGN KEY (nome) REFERENCES hospede(nome)
);

INSERT INTO hospede (nome, genero, biotipo, altura)
VALUES
    ('MIGUEL', 'M', 'M', 1.67),
    ('JOSELI', 'F', 'M', 1.72),
    ('RAQUEL', 'F', 'M', 1.65),
    ('LUCIANA', 'F', 'A', 1.80),
    ('JOANA', 'F', 'M', 1.65),
    ('EMANUEL', 'M', 'A', 1.78);

INSERT INTO quarto (nome, quarto, chegada, saida, desconto)
VALUES
    ('MIGUEL',   1, '2010-01-01', '2010-01-08', 0.20),
    ('JOSELI',   2, '2010-01-01', '2010-01-05', 0.10),
    ('RAQUEL',   3, '2010-01-01', '2010-01-15', 0.00),
    ('LUCIANA',  4, '2010-01-01', '2010-01-10', 0.15),
    ('JOANA',    5, '2010-01-01', '2010-01-09', 0.05),
    ('EMANUEL',  6, '2010-01-01', '2010-01-08', 0.10),
    ('MIGUEL',   7, '2010-01-01', '2010-01-15', 0.00),
    ('LUCIANA',  8, '2010-01-01', '2010-01-15', 0.00);
