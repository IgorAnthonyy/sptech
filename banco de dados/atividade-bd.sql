CREATE DATABASE sprint1;
USE sprint1;
CREATE TABLE Atletas(
idAtleta int primary key,
nome varchar(40),
modalidade varchar(40),
qtdMedalhas int
);

INSERT INTO Atletas VALUES
(1, 'Wilson Vagner', 'Futebol', 3),
(2, 'Jhonathan Matias', 'Basquete', 10),
(3, 'Rooney Neves', 'Futebol', 5),
(4, 'Jobson Augusto', 'Volei', 7);

SELECT * FROM Atletas;

SELECT nome, qtdMedalhas  FROM Atletas;

SELECT * FROM Atletas
 WHERE modalidade = 'Futebol';
SELECT * FROM Atletas ORDER BY modalidade;
SELECT * FROM Atletas ORDER BY qtdMedalhas DESC;

SELECT *FROM Atletas
 WHERE nome  LIKE '%S%';
 
 SELECT * FROM Atletas
 WHERE nome LIKE 'J%';
 
 SELECT * FROM Atletas
 WHERE nome LIKE '%o';
 
 SELECT * FROM Atletas
 WHERE nome LIKE '%R_';
 
DROP TABLE Atletas;

CREATE TABLE Musica(
	idMusica int primary key,
    titulo varchar(40),
    artista varchar(40),
    genero varchar(40)
);
INSERT INTO Musica VALUE 
(1, 'Tenho a senha', 'João Gomes', 'Sertanejo'),
(2, 'Melhor só', 'Kayblack', 'Trap'),
(3, 'Engana dizendo que ama', 'Veigh', 'Trap');

INSERT INTO Musica VALUE 
(4, 'Prós coringa 2', 'MC Ig','Funk'),
(5, 'Red Dot', 'Yunk Vino', 'Trap'),
(6, '01 não é 02', 'MC Paiva', 'Funk'),
(7, 'Menor Magrinho', 'Kyan', 'Trap');

SELECT * FROM Musica;

SELECT titulo, artista FROM Musica;

SELECT * FROM Musica
WHERE genero = 'Trap';

SELECT * FROM Musica ORDER BY titulo;
SELECT * FROM Musica ORDER By artista DESC;

SELECT * FROM Musica
WHERE titulo LIKE 'M%';

SELECT * FROM Musica
WHERE artista LIKE '%a';

SELECT * FROM Musica
WHERE genero LIKE '_r%';

SELECT * FROM Musica
WHERE titulo like '%o_';

DROP TABLE Musica;

CREATE TABLE Filme (
idFilme int primary key,
titulo varchar(50),
genero varchar(40),
diretor varchar(40)
);

INSERT INTO Filme VALUES
(1, 'Como treinar seu dragão', 'Ação', 'Dean DeBlois'),
(2, 'Como treinar seu dragão 2', 'Ação', 'Dean Deblois'),
(3, 'Como treinar seu dragão 3', 'Ação', 'Dean DeBlois'),
(4, 'Era do gelo', 'Comédia', 'Chris Wedge'),
(5, 'Era do gelo 2', 'Comédia', 'Chris Wedge'),
(6, 'Era do gelo 3', 'Comédia', 'Chris Wedge'),
(7, 'Era do gelo 4', 'Comédia', 'Chris Wedge');

SELECT * FROM Filme;

SELECT titulo, diretor FROM Filme;

SELECT * FROM Filme
WHERE genero = 'Comédia';

SELECT * FROM Filme
WHERE diretor = 'Dean DeBlois';

SELECT * FROM Filme ORDER BY titulo;

SELECT * FROM Filme ORDER BY diretor DESC;

SELECT * FROM Filme
WHERE titulo LIKE 'C%';

SELECT * FROM Filme
WHERE diretor LIKE '%s';

SELECT * FROM Filme
WHERE genero LIKE '_ç%';

SELECT * FROM Filme
WHERE titulo LIKE '%a_';

DROP TABLE Filme;

CREATE TABLE Professor(
idProfessor int primary key,
nome varchar(50),
especialidade varchar(40),
dataNasc date);

INSERT INTO Professor VALUES
(1, 'Vivian', 'Banco de Dados', '2001-10-20'),
(2, 'Igor', 'Front-end', '2000-05-31'),
(3, 'JP', 'Front-end', '1992-09-27'),
(4, 'Brian', 'Banco de Dados', '1998-07-22'),
(5, 'Marize', 'Arq Comp', '2002-09-22'),
(6, 'Fernandi', 'Arq Comp', '1998-06-22');

SELECT * FROM Professor;

SELECT especialidade FROM Professor;

SELECT * FROM Professor
WHERE especialidade = 'Front-end';

SELECT * FROM Professor ORDER BY nome;

SELECT * FROM Professor ORDER BY dataNasc DESC;

SELECT * FROM Professor
WHERE nome LIKE 'i%';

SELECT * FROM Professor
WHERE nome LIKE '%r';

SELECT * FROM Professor
WHERE nome LIKE '_i%';

SELECT * FROM Professor
WHERE nome LIKE '%o_';

DROP TABLE Professor;

CREATE TABLE Cursos(
idCurso int primary key,
nome varchar(50),
sigla varchar(3),
coordenador varchar(40)
);

INSERT INTO Cursos VALUES
(1, 'Analise e Desenvolvimento de Sistemas', 'ADS', 'Gerson'),
(2, 'Ciencia da Computação', 'CCO', 'Marize'),
(3, 'Sistema da Informação', 'SIS', 'Marcela');

SELECT * FROM Cursos;

SELECT coordenador FROM Cursos;

SELECT * FROM Cursos
WHERE sigla = 'ADS';

SELECT * FROM Cursos ORDER BY nome;

SELECT * FROM Cursos ORDER BY coordenador DESC;

SELECT * FROM Cursos
WHERE nome LIKE 'A%';

SELECT * FROM Cursos
WHERE nome LIKE '%o';

SELECT * FROM Cursos
WHERE nome LIKE '_i%';

SELECT * FROM Cursos
WHERE nome LIKE '%a_';

DROP TABLE Cursos;

CREATE TABLE Revista(
idRevista int primary key auto_increment,
nome varchar(40),
categoria varchar(30)
);

INSERT INTO Revista (nome) VALUES ('VEJA'),('MODELS'),('whey'),('gr7');

SELECT * FROM Revista;

UPDATE Revista SET categoria = 'Notícias'
 WHERE idRevista = '1';
UPDATE Revista SET categoria = 'Divulgação'
 WHERE idRevista = '2';
UPDATE Revista SET categoria = 'Divulgação'
 WHERE idRevista = '3';
 UPDATE Revista SET categoria = 'Notícias'
 WHERE idRevista = '4';
 
 SELECT * FROM Revista;
 
 INSERT INTO Revista (nome, categoria) VALUES
('EPOCA', 'Entreterimento'),
('VOGUE','Divulgação'),
('NOPE TIME', 'Notícias');

SELECT * FROM Revista;

DESCRIBE Revista;

ALTER TABLE Revista MODIFY COLUMN categoria varchar(40);

DESCRIBE Revista;

ALTER TABLE revista ADD COLUMN periodicidade VARCHAR(15);

SELECT * FROM Revista;

ALTER TABLE Revista DROP COLUMN periodicidade;

DROP DATABASE sprint1;






