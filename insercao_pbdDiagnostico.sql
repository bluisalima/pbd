-- USANDO BANCO DE DADOS DIAGNOSTICO
USE pbdDiagnostico;

-- INSERINDO DADOS NO BANCO
INSERT INTO USUARIO VALUES
	('1', 'Alice', '1976-04-05', '1.70', '70.5'),
	('2', 'Eduardo', '2000-05-07', '1.75', '71.4'),
    ('3', 'Agusto', '1999-09-23', '1.84', '71.0'),
    ('4', 'Leonardo', '1998-07-18', '1.69', '80'),
    ('5', 'Talisson', '1996-11-13', '1.67', '68'),
    ('6', 'João', '1999-10-08', '1.80', '75.5'),
    ('7', 'Mateus', '1996-05-20', '1.90', '90'),
    ('8', 'Livia', '1997-02-14', '1.67', '76.3'),
    ('9', 'Victor', '1994-02-15', '1.68', '83.6'),
    ('10', 'Ana Paula', '1993-07-29', '1.74', '80.3'),
    ('11', 'Matheus', '1997-06-21', '1.80', '78.0'),
    ('12', 'Bruno', '2000-09-01', '1.82', '77.5'),
    ('13', 'Natalia', '1996-01-03', '1.67', '73'),
    ('14', 'Vitor', '1990-03-06', '1.58', '65');
    
INSERT INTO SINTOMA VALUES
	('1', 'Febre'),
    ('2', 'Calafrio'), 
    ('3', 'Dor de Cabeça'),
    ('4', 'Dor muscular'), 
    ('5', 'Tosse'),
    ('6', 'Cansaço'),
    ('7', 'Perda de paladar ou olfato'),
    ('8', 'Diarréia'),
    ('9', 'Visão embaçada'),
    ('10', 'Não apresenta sintomas'),
    ('11', 'Tontura'),
    ('12', 'Falta de ar');
    
INSERT INTO DOENCA VALUES
	('1', 'Malária'),
    ('2', 'Ebola'),
    ('3', 'Coronavírus'),
    ('4', 'Diabetes'),
    ('5', 'Tuberculose'),
    ('6', 'Hipertensão'),
    ('7', 'Asma');
    
INSERT INTO TRATAMENTO VALUES
	('1', 'Uso de antibióticos'),
	('2', 'Uso de insulina'),
    ('3', 'Uso de medicamentos antiparasitários'),
    ('4', 'Internação'),
    ('5', 'Transfusão de sangue'),
    ('6', 'Uso de anti-hipertensivos'),
    ('7', 'Uso de corticoide');
    
INSERT INTO HISTORICO VALUES
	(1, 'Diabetes', 'Mãe', '1'),
    (2, 'Tuberculose', 'Pai', '5'),
    (3, 'Asma', 'Avó', 5),
    (4, 'Hipertensão', 'Avô', 6),
    (5, 'Diabetes', 'Mãe', 6);
    
INSERT INTO RISCO VALUES
	(1, 'Amarelo', 1), (2, 'Laranja', '2'), (3, 'Vermelho', 3);
    
-- INSERÇÃO DE DADOS PARA SINTOMA X DOENÇA 
INSERT INTO PERTENCE VALUES 
	('1', '1'), ('1', '2'), ('1', '3'), ('2', '1'), ('2', '2'), ('3', '2'), ('4', '2'), ('5', '3'),
    ('6', '4'), ('6', '3'), ('7', '3'), ('9', '4'), ('10', '3'), (5,5), (3,6), (11,6),
    (12,7), (5,7);

-- INSERÇÃO DE DADOS PARA DOENÇA X TRATAMENTO
INSERT INTO POSSUI VALUES
	('1', '3'), ('2', '5'), ('3', '4'), ('4', '2'), ('5', '1'), ('6', '6'), ('7','7');
    
-- INSERÇÃO DE DADOS PARA USUÁRIO X SINTOMA
INSERT INTO SENTE VALUES
	('1', '1'), ('1', '2'), ('2', '10'), ('3', '6'), ('3', '5'), ('4', '9'), ('5', '1'), ('5', '2'), ('6', '6'), ('6', '5'),
    (7, 3), (8, 12), (9, 1), (9, 4), (9,3), (10, 12), (10, 5), (11, 9), (11, 1), (12, 1), (12, 5), (12, 7), (13, 5),
    (13, 12), (14, 4), (14, 2);

-- INSERÇÃO DE DADOS PARA DOENCA X RISCO
INSERT INTO APRESENTA VALUES
    ('1','3'), ('2','3'), ('3','2'), ('4','1'), ('5','2'), (6, 2), (7, 1);
    
-- INSERÇÃO DE DADOS PARA USUÁRIO X HISTÓRICO
INSERT INTO TEM VALUES
	(1,2), (2,5), (3,5), (4,4), (5,4), (4,3), (1,5), (6,2);
    