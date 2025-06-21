-- Seed de dados

-- Categorias
INSERT INTO tb_categoria (descricao) VALUES ('Curso');
INSERT INTO tb_categoria (descricao) VALUES ('Oficina');

-- Blocos
INSERT INTO tb_blocos (inicio, fim) VALUES ( '2017-09-25 08:00:00', '2017-09-25 11:00:00');
INSERT INTO tb_blocos (inicio, fim) VALUES ('2017-09-25 14:00:00', '2017-09-25 18:00:00');
INSERT INTO tb_blocos (inicio, fim) VALUES ('2017-09-26 08:00:00', '2017-09-26 11:00:00');


-- Atividades
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Curso de HTML', 'Aprenda HTML de forma prática', 80.00, 1);
INSERT INTO tb_atividade (nome, descricao, preco, categoria_id) VALUES ('Oficina de Github', 'Controle versões de seus projetos', 50.00, 2);

-- Participantes
INSERT INTO tb_participante (nome, email) VALUES ('José Silva', 'jose@gmail.com');
INSERT INTO tb_participante (nome, email) VALUES ('Tiago Faria', 'tiago@gmail.com');
INSERT INTO tb_participante (nome, email) VALUES ('Maria do Rosário', 'maria@gmail.com');
INSERT INTO tb_participante (nome, email) VALUES ('Teresa Silva', 'teresa@gmail.com');

-- Atividades x Participantes
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (1, 1);
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (1, 2);
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (1, 3);
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (2, 3);
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (2, 4);

-- Atividades x Blocos
INSERT INTO tb_atividade_bloco (atividade_id, bloco_id) VALUES (1, 1);
INSERT INTO tb_atividade_bloco (atividade_id, bloco_id) VALUES (2, 2);
INSERT INTO tb_atividade_bloco (atividade_id, bloco_id) VALUES (2, 3);