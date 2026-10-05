CREATE DATABASE escola; 
USE escola; 

CREATE TABLE estudantes ( 
    id_estudantes INT AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR(100), 
    email VARCHAR(100), 
    data_nascimento DATE 
); 

CREATE TABLE professores ( 
    id_professores INT AUTO_INCREMENT PRIMARY KEY, 
    nome_professores VARCHAR(100), 
    email_professores VARCHAR(100), 
    materia VARCHAR(100) 
); 

CREATE TABLE cursos ( 
    id_cursos INT AUTO_INCREMENT PRIMARY KEY, 
    nome_cursos VARCHAR(100), 
    tempo_cursos VARCHAR(100), 
    id_estudantes FOREIGN KEY,
    id_professores FOREIGN KEY
);
