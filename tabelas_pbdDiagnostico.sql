CREATE DATABASE pbdDiagnostico;

-- USANDO BANCO DE DADOS DIAGNOSTICO
USE pbdDiagnostico;

-- CRIAÇÃO DAS TABELAS 
CREATE TABLE USUARIO (
	idUsuario INT NOT NULL,
    nomeUsuario VARCHAR(30) NOT NULL, 
    dataNascimento DATE, 
    altura DECIMAL(3,2), 
    peso DECIMAL(5,2), 
    PRIMARY KEY (idUsuario) 
    );
      
CREATE TABLE HISTORICO (
	idHistorico INT NOT NULL,
    doenca VARCHAR(30), 
    grauParentesco VARCHAR(30), 
    usuarioHistorico INT NOT NULL,
    PRIMARY KEY (idHistorico), 
    FOREIGN KEY (usuarioHistorico) REFERENCES USUARIO (idUsuario)
    );
    
CREATE TABLE TEM (
     idUsuario INT NOT NULL,
     idHistorico INT NOT NULL,
     primary key (idUsuario, idHistorico),
     foreign key (idUsuario) references usuario (idUsuario),
     foreign key (idHistorico) references historico (idHistorico)
     );
     
CREATE TABLE SINTOMA (
	idSintoma INT NOT NULL,
    nomeSintoma VARCHAR(30), 
    PRIMARY KEY (idSintoma)
    );
    
CREATE TABLE SENTE (
	idUsuario INT NOT NULL,
    idSintoma INT NOT NULL,
	PRIMARY KEY (idUsuario, idSintoma),
    FOREIGN KEY (idUsuario) REFERENCES USUARIO (idUsuario),
    FOREIGN KEY (idSintoma) REFERENCES SINTOMA (idSintoma)
    );
    
CREATE TABLE DOENCA (
	idDoenca INT NOT NULL, 
    nomeDoenca VARCHAR(20), 
    PRIMARY KEY (idDoenca)
    );
    
CREATE TABLE PERTENCE (
	idSintoma INT NOT NULL,
    idDoenca INT NOT NULL, 
    PRIMARY KEY (idSintoma, idDoenca),
    FOREIGN KEY (idSintoma) REFERENCES SINTOMA (idSintoma),
    FOREIGN KEY (idDoenca) REFERENCES DOENCA (idDoenca)
    );
    
CREATE TABLE RISCO (
	idRisco INT NOT NULL,
    classificacao VARCHAR(20) NOT NULL,
    riscoDoenca INT NOT NULL,
    PRIMARY KEY (idRisco),
    FOREIGN KEY (riscoDoenca) REFERENCES DOENCA (idDoenca)
    );
    
CREATE TABLE APRESENTA (
    idDoenca int not null,
    idRisco int not null,
    primary key (idDoenca, idRisco),
    foreign key (idDoenca) references doenca (idDoenca),
    foreign key (idRisco) references Risco (idRisco)
    );
    
CREATE TABLE TRATAMENTO (
	idTratamento INT NOT NULL,
    descTratamento VARCHAR(50), 
    PRIMARY KEY (idTratamento)
    );
    
CREATE TABLE POSSUI (
	idDoenca INT NOT NULL,
    idTratamento INT NOT NULL,
    PRIMARY KEY (idDoenca, idTratamento),
    FOREIGN KEY (idDoenca) REFERENCES DOENCA (idDoenca),
    FOREIGN KEY (idTratamento) REFERENCES TRATAMENTO (idTratamento)
    );