CREATE DATABASE oficina;
USE oficina;

CREATE TABLE Endereco (
    idEndereco INT PRIMARY KEY AUTO_INCREMENT,
    logradouro VARCHAR(100),
    numero VARCHAR(10),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado CHAR(2),
    cep VARCHAR(8)
);

CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    telefone VARCHAR(11),
    email VARCHAR(45),
    Endereco_idEndereco INT UNIQUE,
    FOREIGN KEY (Endereco_idEndereco) REFERENCES Endereco(idEndereco)
);

CREATE TABLE Veiculo (
    idVeiculo INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(7) UNIQUE,
    marca VARCHAR(30),
    modelo VARCHAR(30),
    ano INT,
    Cliente_idCliente INT,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Mecanico (
    idMecanico INT PRIMARY KEY AUTO_INCREMENT,
    codigo VARCHAR(45),
    nome VARCHAR(45),
    Endereco_idEndereco INT UNIQUE,
    FOREIGN KEY (Endereco_idEndereco) REFERENCES Endereco(idEndereco)
);

CREATE TABLE Equipe (
    idEquipe INT PRIMARY KEY AUTO_INCREMENT,
    nome_equipe VARCHAR(45)
);

CREATE TABLE Mecanico_has_Equipe (
    Mecanico_idMecanico INT,
    Equipe_idEquipe INT,
    PRIMARY KEY (Mecanico_idMecanico, Equipe_idEquipe),
    FOREIGN KEY (Mecanico_idMecanico) REFERENCES Mecanico(idMecanico),
    FOREIGN KEY (Equipe_idEquipe) REFERENCES Equipe(idEquipe)
);

CREATE TABLE Servico (
    idServico INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(45),
    tempo_estimado INT,
    valor_mao_obra FLOAT
);

CREATE TABLE Peca (
    idPeca INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(45),
    valor_unitario FLOAT
);

CREATE TABLE Ordem_Servico (
    idOrdem_Servico INT PRIMARY KEY AUTO_INCREMENT,
    numero_OS VARCHAR(45),
    data_emissao DATE,
    data_conclusao DATE,
    status VARCHAR(45),
    valor_total FLOAT,
    Veiculo_idVeiculo INT,
    Equipe_idEquipe INT,
    FOREIGN KEY (Veiculo_idVeiculo) REFERENCES Veiculo(idVeiculo),
    FOREIGN KEY (Equipe_idEquipe) REFERENCES Equipe(idEquipe)
);
ALTER TABLE Ordem_servico
		drop valor_total
;

CREATE TABLE Ordem_Servico_has_Servico (
    Ordem_Servico_idOrdem_Servico INT,
    Servico_idServico INT,
    quantidade INT,
    valor_servico FLOAT,
    PRIMARY KEY (Ordem_Servico_idOrdem_Servico, Servico_idServico),
    FOREIGN KEY (Ordem_Servico_idOrdem_Servico) REFERENCES Ordem_Servico(idOrdem_Servico),
    FOREIGN KEY (Servico_idServico) REFERENCES Servico(idServico)
);

CREATE TABLE Ordem_Servico_has_Peca (
    Ordem_Servico_idOrdem_Servico INT,
    Peca_idPeca INT,
    quantidade INT,
    valor_total_peca FLOAT,
    PRIMARY KEY (Ordem_Servico_idOrdem_Servico, Peca_idPeca),
    FOREIGN KEY (Ordem_Servico_idOrdem_Servico) REFERENCES Ordem_Servico(idOrdem_Servico),
    FOREIGN KEY (Peca_idPeca) REFERENCES Peca(idPeca)
);
