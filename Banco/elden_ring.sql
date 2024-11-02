CREATE DATABASE elden_ring;
USE elden_ring;

CREATE TABLE TIPOS_ARMADURA (
    ID_TIPO_ARMADURA INT AUTO_INCREMENT PRIMARY KEY,
    DESCRICAO VARCHAR(10)
);

CREATE TABLE CONSUMIVEIS (
    ID_CONSUMIVEIS INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(32),
    QUANTIDADE INT
);

CREATE TABLE CLASSES (
    ID_CLASSE INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(30),
    VITALIDADE INT,
    MENTE INT,
    TENACIDADE INT,
    FORCA INT,
    DESTREZA INT,
    INTELIGENCIA INT,
    FE INT,
    ARCANO INT
);

CREATE TABLE TIPO_ATAQUE (
    ID_TIPO_ATAQUE INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(25)
);

CREATE TABLE ORIGEM (
    ID_ORIGEM INT AUTO_INCREMENT PRIMARY KEY,
    FONTE VARCHAR(20)
);

CREATE TABLE PERSONAGEM (
    ID_PERSONAGEM INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(98),
    ID_CLASSE INT,
    GENERO CHAR(1),
    VIDA INT,
    MANA INT,
    NIVEL INT,
    FOREIGN KEY (ID_CLASSE) REFERENCES CLASSES(ID_CLASSE)
);

CREATE TABLE ARMADURAS (
    ID_ARMADURA INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(32),
    PESO FLOAT,
    ID_TIPO_ARMADURA INT,
    FOREIGN KEY (ID_TIPO_ARMADURA) REFERENCES TIPOS_ARMADURA(ID_TIPO_ARMADURA)
);

CREATE TABLE EFEITOS (
    ID_EFEITO INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(30),
    TIPO_ATAQUE INT,
    DANO INT,
    DURACAO INT,
    FOREIGN KEY (TIPO_ATAQUE) REFERENCES TIPO_ATAQUE(ID_TIPO_ATAQUE)
);

CREATE TABLE ARMAS (
    ID_ARMA INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(32),
    DANO INT,
    EFEITO INT,
    CLASSE INT,
    FOREIGN KEY (EFEITO) REFERENCES EFEITOS(ID_EFEITO),
    FOREIGN KEY (CLASSE) REFERENCES CLASSES(ID_CLASSE)
);

CREATE TABLE ARMAS_ORIGEM (
    ID_ARMA INT,
    ID_ORIGEM INT,
    FOREIGN KEY (ID_ARMA) REFERENCES ARMAS(ID_ARMA),
    FOREIGN KEY (ID_ORIGEM) REFERENCES ORIGEM(ID_ORIGEM)
);

CREATE TABLE EQUIPAMENTOS (
    ID_EQUIPAMENTO INT AUTO_INCREMENT PRIMARY KEY,
    CABECA INT,
    TORSO INT,
    BRACOS INT,
    PERNA INT,
    SLOT_ARMA_1 INT,
    SLOT_ARMA_2 INT,
    SLOT_CONSUMIVEIS_1 INT,
    SLOT_CONSUMIVEIS_2 INT,
    FOREIGN KEY (CABECA) REFERENCES ARMADURAS(ID_ARMADURA),
    FOREIGN KEY (TORSO) REFERENCES ARMADURAS(ID_ARMADURA),
    FOREIGN KEY (BRACOS) REFERENCES ARMADURAS(ID_ARMADURA),
    FOREIGN KEY (PERNA) REFERENCES ARMADURAS(ID_ARMADURA),
    FOREIGN KEY (SLOT_ARMA_1) REFERENCES ARMAS(ID_ARMA),
    FOREIGN KEY (SLOT_ARMA_2) REFERENCES ARMAS(ID_ARMA),
    FOREIGN KEY (SLOT_CONSUMIVEIS_1) REFERENCES CONSUMIVEIS(ID_CONSUMIVEIS),
    FOREIGN KEY (SLOT_CONSUMIVEIS_2) REFERENCES CONSUMIVEIS(ID_CONSUMIVEIS)
);
