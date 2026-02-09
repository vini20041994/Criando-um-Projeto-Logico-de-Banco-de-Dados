-- Endereço 

INSERT INTO Endereco (logradouro, numero, bairro, cidade, estado, cep) VALUES
('Rua A','10','Centro','São Paulo','SP','01001000'),
('Rua B','20','Jardins','São Paulo','SP','01400000'),
('Rua C','30','Centro','Campinas','SP','13010000'),
('Rua D','40','Barra','Salvador','BA','40010000'),
('Rua E','50','Copacabana','Rio de Janeiro','RJ','22021001'),
('Rua F','60','Centro','Goiânia','GO','74010010'),
('Rua G','70','Centro','Curitiba','PR','80010000'),
('Rua H','80','Centro','Belo Horizonte','MG','30130000'),
('Rua I','90','Boa Viagem','Recife','PE','51020000'),
('Rua J','100','Centro','Porto Alegre','RS','90010000'),

('Av K','110','Moema','São Paulo','SP','04000000'),
('Av L','120','Tijuca','Rio de Janeiro','RJ','20500000'),
('Av M','130','Savassi','Belo Horizonte','MG','30140000'),
('Av N','140','Asa Sul','Brasília','DF','70000000'),
('Av O','150','Centro','Florianópolis','SC','88000000'),
('Av P','160','Centro','Vitória','ES','29000000'),
('Av Q','170','Centro','Fortaleza','CE','60000000'),
('Av R','180','Centro','Natal','RN','59000000'),
('Av S','190','Centro','Maceió','AL','57000000'),
('Av T','200','Centro','Aracaju','SE','49000000');

-- Cliente

INSERT INTO Cliente (nome, telefone, email, Endereco_idEndereco) VALUES
('João Silva','11999990001','joao@email.com',1),
('Maria Souza','11999990002','maria@email.com',2),
('Carlos Lima','11999990003','carlos@email.com',3),
('Ana Paula','11999990004','ana@email.com',4),
('Pedro Santos','11999990005','pedro@email.com',5),
('Juliana Costa','11999990006','juliana@email.com',6),
('Marcos Oliveira','11999990007','marcos@email.com',7),
('Fernanda Rocha','11999990008','fernanda@email.com',8),
('Lucas Alves','11999990009','lucas@email.com',9),
('Beatriz Melo','11999990010','beatriz@email.com',10);

-- Veículo 

INSERT INTO Veiculo (placa, marca, modelo, ano, Cliente_idCliente) VALUES
('BRA1001','Ford','Fiesta',2018,1),
('BRA1002','GM','Onix',2020,2),
('BRA1003','Fiat','Argo',2021,3),
('BRA1004','Toyota','Corolla',2022,4),
('BRA1005','Honda','Civic',2019,5),
('BRA1006','Hyundai','HB20',2023,6),
('BRA1007','VW','Gol',2017,7),
('BRA1008','Renault','Sandero',2016,8),
('BRA1009','Nissan','Kicks',2024,9),
('BRA1010','Peugeot','208',2020,10);

-- Mecânico

INSERT INTO Mecanico (codigo, nome, Endereco_idEndereco) VALUES
('M01','Carlos Mecânico',11),
('M02','Pedro Mecânico',12),
('M03','José Mecânico',13),
('M04','Lucas Mecânico',14),
('M05','Rafael Mecânico',15),
('M06','Bruno Mecânico',16),
('M07','André Mecânico',17),
('M08','Diego Mecânico',18),
('M09','Felipe Mecânico',19),
('M10','Gustavo Mecânico',20);

-- Equipe

INSERT INTO Equipe (nome_equipe) VALUES
('Equipe Alfa'),
('Equipe Beta'),
('Equipe Gama'),('Equipe Delta'),
('Equipe Omega'),
('Equipe Turbo'),
('Equipe Speed'),
('Equipe Power'),
('Equipe Master'),
('Equipe Prime');

-- Mecânico/Equipe

INSERT INTO Mecanico_has_Equipe VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);

-- Serviço 

INSERT INTO Servico (descricao, tempo_estimado, valor_mao_obra) VALUES
('Troca óleo',1,100),
('Alinhamento',1,80),
('Balanceamento',1,70),
('Revisão geral',3,300),
('Freio',2,250),
('Bateria',1,60),
('Suspensão',3,400),
('Motor',8,1500),
('Ar condicionado',2,220),
('Diagnóstico',1,120);

-- Peça

INSERT INTO Peca (descricao, valor_unitario) VALUES
('Filtro óleo',40),
('Pastilha freio',120),
('Bateria',350),
('Pneu',500),
('Correia',180),
('Amortecedor',300),
('Vela',35),
('Radiador',600),
('Farol',250),
('Óleo sintético',50);

-- Ordem de serviço

INSERT INTO Ordem_Servico
(numero_OS, data_emissao, data_conclusao, status, valor_total, Veiculo_idVeiculo, Equipe_idEquipe)
VALUES
('OS001','2025-01-01','2025-01-02','Concluída',0,1,1),
('OS002','2025-01-03','2025-01-04','Concluída',0,2,2),
('OS003','2025-01-05','2025-01-06','Concluída',0,3,3),
('OS004','2025-01-07',NULL,'Aberta',0,4,4),
('OS005','2025-01-08',NULL,'Aberta',0,5,5),
('OS006','2025-01-09','2025-01-10','Concluída',0,6,6),
('OS007','2025-01-11','2025-01-12','Concluída',0,7,7),
('OS008','2025-01-13',NULL,'Em andamento',0,8,8),
('OS009','2025-01-14','2025-01-15','Concluída',0,9,9),
('OS010','2025-01-16',NULL,'Aberta',0,10,10);

-- Ordem de serviço/Serviço

INSERT INTO Ordem_Servico_has_Servico VALUES
(1,1,1,100),
(2,2,1,80),
(3,3,1,70),
(4,4,1,300),
(5,5,1,250),
(6,6,1,60),
(7,7,1,400),
(8,8,1,1500),
(9,9,1,220),
(10,10,1,120);

-- Ordem de serviço/Peça

INSERT INTO Ordem_Servico_has_Peca VALUES
(1,1,1,40),
(2,2,1,120),
(3,3,1,350),
(4,4,2,1000),
(5,5,1,180),
(6,6,2,600),
(7,7,3,105),
(8,8,1,600),
(9,9,2,500),
(10,10,4,200);
