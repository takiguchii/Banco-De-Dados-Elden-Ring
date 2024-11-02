INSERT INTO CLASSES (id_classe, nome, vitalidade, mente, tenacidade, forca, destreza, inteligencia, fe, arcano)
VALUES
(1, 'Herói', 14, 9, 12, 16, 9, 10, 15, 10),
(2, 'Samurai', 12, 11, 13, 12, 15, 9, 16, 10),
(3, 'Confessor', 10, 13, 10, 12, 12, 15, 17, 10),
(4, 'Guerreiro', 11, 12, 11, 10, 16, 13, 9, 10),
(5, 'Astrólogo', 9, 15, 9, 8, 12, 14, 8, 10);

INSERT INTO PERSONAGEM (id_personagem, nome, id_classe, genero, vida, mana, nivel)
VALUES
(1, 'RonaldinhoSoccer', 2, 'M', 100, 100, 1),
(2, 'ZecaPauGordinho', 1, 'M', 100, 100, 1),
(3, 'AnaMariaFodase', 2, 'F', 100, 100, 1),
(4, 'EosGuriDoSul', 5, 'M', 100, 100, 1),
(5, 'CleitonJose', 4, 'M', 100, 100, 1);

INSERT INTO TIPO_ATAQUE (id_tipo_ataque, nome)
VALUES
(1, 'Corte Veloz'),
(2, 'Golpe de Escudo'),
(3, 'Explosão Arcana'),
(4, 'Investida do Cavaleiro'),
(5, 'Dança do Vendaval');

INSERT INTO EFEITOS (id_efeito, nome, tipo_ataque, dano, duracao)
VALUES
(1, 'Sangramento', 1, 5, 2),
(2, 'Atordoamento', 2, 0, 5),
(3, 'Decomposição', 3, 12, 10),
(4, 'Perfuração', 4, 15, 1),
(5, 'Derrubada', 5, 2, 1);

INSERT INTO ARMAS (id_arma, nome, dano, efeito, classe)
VALUES
(1, 'Espada da Noite e Chama', 199, 1, 1),
(2, 'Espada de Ruína de Blasphemous', 199, 2, 2),
(3, 'Grande Espada do Deus Estelar', 212, 4, 4),
(4, 'Espada da Lua Negra', 180, 1, 5),
(5, 'Reduvia', 79, 3, 3);


INSERT INTO ORIGEM (id_origem, fonte)
VALUES
(1, 'drop'),
(2, 'bau'),
(3, 'mapa'),
(4, 'boss'),
(5, 'tesouro');

INSERT INTO ARMAS_ORIGEM (id_arma, id_origem)
VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 4),
(5, 5);

INSERT INTO TIPOS_ARMADURA (id_tipo_armadura, descricao)
VALUES
(1,'Leve'),
(2,'Média'),
(3,'Pesada'),
(4,'Arcana'),
(5,'Furtiva');

INSERT INTO ARMADURAS (NOME, PESO, ID_TIPO_ARMADURA)
VALUES
('Armadura Leve de Couro', 5.0, 1),
('Cota de Malha Média', 15.0, 2),
('Armadura de Placas Pesada', 25.0, 3),
('Manto Arcano', 8.0, 4),
('Armadura de Sombras', 6.5, 5);


INSERT INTO CONSUMIVEIS (nome, quantidade)
VALUES
('Poção de Cura', 50),
('Mana Potion', 50),
('Elixir de Força', 10),
('Poção de Agilidade', 10),
('Poção de Defesa', 10);

INSERT INTO EQUIPAMENTOS (cabeca, torso, bracos, perna, slot_arma_1, slot_arma_2, slot_consumiveis_1, slot_consumiveis_2)
VALUES
(1, 2, 3, 4, 1, 2, 1, 2),
(2, 3, 4, 5, 3, 4, 3, 4),
(3, 4, 5, 1, 5, 1, 5, 1),
(4, 5, 1, 2, 2, 3, 2, 3),
(5, 1, 2, 3, 4, 5, 4, 5);

