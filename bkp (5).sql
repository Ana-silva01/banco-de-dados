CREATE TABLE hospede (
	nome VARCHAR(25) NOT NULL,
	genero VARCHAR(1),
	biotipo VARCHAR(1),
	altura NUMERIC(5,2), 
	PRIMARY KEY (nome)
)
SELECT nome, genero, biotipo, altura FROM hospede;

INSERT INTO hospede (nome, genero, biotipo, altura)
VALUES ('MIGUEL', 'M', 'M', 1.67)