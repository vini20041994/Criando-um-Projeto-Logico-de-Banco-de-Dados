-- 1. Recuperação simples (SELECT):
	-- Quais clientes estão cadastrados?
    
SELECT * FROM Cliente;

-- 2. Filtro (WHERE):
	-- Quais veículos são do ano após 2019?
    
SELECT * FROM Veiculo
	WHERE ano > 2019;

-- 3. Atributo derivado (cálculo de valor total da OS):

SELECT 
    os.numero_OS,
    SUM(p.valor_total_peca) + SUM(s.valor_servico) AS total_calculado
	FROM Ordem_Servico os
		LEFT JOIN Ordem_Servico_has_Peca p ON p.Ordem_Servico_idOrdem_Servico = os.idOrdem_Servico
		LEFT JOIN Ordem_Servico_has_Servico s ON s.Ordem_Servico_idOrdem_Servico = os.idOrdem_Servico
	GROUP BY os.numero_OS;

-- 4. Ordenação (ORDER BY):
	-- Clientes ordenados alfabeticamente:
    
SELECT c.nome, e.logradouro, e.numero, e.bairro, e.cidade, e.estado
	FROM Cliente c
		INNER JOIN Endereco e ON e.idEndereco = c.Endereco_idEndereco
	ORDER BY nome ASC;

-- 5. Agrupamento + HAVING
	-- Quais equipes possuem mais de 1 mecânico?
    
SELECT e.nome_equipe, COUNT(*) AS total_mecanicos
FROM Equipe e
JOIN Mecanico_has_Equipe me ON me.Equipe_idEquipe = e.idEquipe
GROUP BY e.nome_equipe
HAVING COUNT(*) > 1;

INSERT INTO Mecanico_has_Equipe VALUES
(1,6),(2,1),(3,1),
(4,2),(5,2),
(6,3),(7,3),(8,3),
(9,4),
(10,5);

-- 6. Junção complexa (JOIN múltiplo)
	-- Quais clientes, veículos e serviços realizados?
    
SELECT 
    c.nome AS cliente,
    v.placa,
    s.descricao
FROM Cliente c
JOIN Veiculo v ON v.Cliente_idCliente = c.idCliente
JOIN Ordem_Servico os ON os.Veiculo_idVeiculo = v.idVeiculo
JOIN Ordem_Servico_has_Servico oss ON oss.Ordem_Servico_idOrdem_Servico = os.idOrdem_Servico
JOIN Servico s ON s.idServico = oss.Servico_idServico;

-- 7. Total gasto por cliente

SELECT 
    c.nome, os.numero_OS,
    SUM(p.valor_total_peca) + SUM(s.valor_servico) AS total_gasto
FROM Cliente c
JOIN Veiculo v ON v.Cliente_idCliente = c.idCliente
JOIN Ordem_Servico os ON os.Veiculo_idVeiculo = v.idVeiculo
LEFT JOIN Ordem_Servico_has_Peca p ON p.Ordem_Servico_idOrdem_Servico = os.idOrdem_Servico
LEFT JOIN Ordem_Servico_has_Servico s ON s.Ordem_Servico_idOrdem_Servico = os.idOrdem_Servico
GROUP BY c.nome, os.numero_OS
ORDER BY total_gasto DESC;

-- 8. Listar todos os clientes com seus veículos
	-- Quais veículos cada cliente possui?

SELECT 
    c.nome AS cliente,
    v.placa,
    v.marca,
    v.modelo,
    v.ano
FROM Cliente c
JOIN Veiculo v ON v.Cliente_idCliente = c.idCliente
ORDER BY c.nome;

-- 9. Ordens em aberto
	-- Quais ordens ainda não foram concluídas?
    
SELECT numero_OS, data_emissao, status
FROM Ordem_Servico
WHERE status <> 'Concluída';

-- 10. Tempo de duração da OS (atributo derivado)
	-- Quantos dias cada OS demorou?
    
SELECT
    numero_OS,
    DATEDIFF(data_conclusao, data_emissao) AS dias_execucao
FROM Ordem_Servico
WHERE data_conclusao IS NOT NULL;

-- 
