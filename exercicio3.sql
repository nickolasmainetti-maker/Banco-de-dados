CREATE DATABASE empresa;
USE empresa;

CREATE TABLE Empregado (
    CPF INT PRIMARY KEY, -- Mantido INT conforme o diagrama
    Nome VARCHAR(100)
);

CREATE TABLE Projeto (
    COD INT PRIMARY KEY,
    Local VARCHAR(100),
    Nome_Projeto INT -- Mantido INT conforme o diagrama
);

CREATE TABLE Trabalho (
    CPF INT,
    COD INT,
    Horas_Trabalho TIME,
    PRIMARY KEY (CPF, COD),
    FOREIGN KEY (CPF) REFERENCES Empregado(CPF),
    FOREIGN KEY (COD) REFERENCES Projeto(COD)
);
