-- USANDO BANCO DE DADOS DIAGNOSTICOS
USE pbdDiagnostico;

-- CONSULTAS NO BANCO 

SELECT * FROM USUARIO; -- MOSTRA TABELA USUARIO

-- RETORNA USUARIO E HISTORICO
select usuario.nomeUsuario, historico.doenca, historico.grauParentesco
from usuario join tem on tem.idUsuario = usuario.idUsuario
join historico on tem.idHistorico = historico.idHistorico;

-- RETORNA ID, USUARIO E SINTOMA - ORDENADO PELO ID DO USUARIO
SELECT usuario.idUsuario, usuario.nomeUsuario, sintoma.nomeSintoma
FROM usuario JOIN SENTE on SENTE.idUsuario = usuario.idUsuario
JOIN sintoma on SENTE.idSintoma = sintoma.idSintoma
order by idUsuario;

-- RETORNA SINTOMAS DE USUARIOS CHAMADOS "ALICE"
SELECT usuario.idUsuario, usuario.nomeUsuario, sintoma.nomeSintoma
FROM usuario JOIN SENTE on SENTE.idUsuario = usuario.idUsuario
JOIN sintoma on SENTE.idSintoma = sintoma.idSintoma
where nomeUsuario = 'Alice';

-- RETORNA USUARIOS QUE POSSUEM SINTOMA "TOSSE"
SELECT usuario.nomeUsuario, sintoma.nomeSintoma
FROM usuario JOIN SENTE on SENTE.idUsuario = usuario.idUsuario
JOIN sintoma on SENTE.idSintoma = sintoma.idSintoma
where nomeSintoma = 'tosse';

-- RETORNA DOENÇAS COM SEUS SINTOMAS
select doenca.nomeDoenca, sintoma.nomeSintoma
from doenca join pertence on pertence.idDoenca = doenca.idDoenca
join sintoma on pertence.idSintoma = sintoma.idSintoma;

-- RETORNA DOENÇAS COM SEUS RISCOS E CLASSIFICAÇÕES
Select doenca.nomeDoenca, risco.idRisco, risco.classificacao
from doenca join apresenta on apresenta.idDoenca = doenca.idDoenca
join risco on apresenta.idRisco = risco.idRisco
order by risco.idRisco;

-- RETORNA DOENÇAS APENAS COM A CLASSIFICAÇÃO
select doenca.nomeDoenca, risco.classificacao
from doenca join apresenta on apresenta.idDoenca = doenca.idDoenca
join risco on apresenta.idRisco = risco.idRisco;

-- RETORNA APENAS USUARIO "ALICE"
select * from usuario
where nomeUsuario  like 'Alice';

-- RETORNA TABELA USUARIO + ID DOS SINTOMAS
SELECT * FROM USUARIO JOIN SENTE ON usuario.idUsuario = SENTE.idUsuario;

-- RETORNA QUANTIDADE DE USUARIOS DO BANCO
SELECT COUNT(idUsuario) FROM USUARIO;

-- RETORNA QUANTIDADE DE USUARIOS COM FEBRE
SELECT COUNT(usuario.idUsuario) as UsuariosComFebre
FROM usuario JOIN SENTE on SENTE.idUsuario = usuario.idUsuario
JOIN sintoma on SENTE.idSintoma = sintoma.idSintoma
where nomeSintoma = 'Tosse';

-- RETORNA TODAS OS TRATAMENTOS DO BANCO
SELECT * FROM TRATAMENTO; 