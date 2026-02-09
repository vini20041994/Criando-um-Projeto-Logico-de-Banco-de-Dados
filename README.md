# 📦 Projeto de Banco de Dados – Oficina Mecânica (Modelo Lógico)

## 📌 Descrição do Projeto

Este projeto apresenta a **modelagem lógica de um banco de dados relacional para o gerenciamento de uma oficina mecânica**, desenvolvido a partir de um **modelo conceitual ER (Entidade-Relacionamento)**.

O objetivo é aplicar corretamente os conceitos de **modelagem de dados, mapeamento para o modelo relacional, implementação do esquema SQL, persistência de dados e consultas analíticas**, seguindo boas práticas acadêmicas e profissionais.

O projeto foi desenvolvido como parte de um desafio prático de banco de dados, com foco em **organização, integridade e análise de dados**.

----------

## 🎯 Objetivos

-   Aplicar conceitos de modelagem ER
    
-   Mapear o modelo conceitual para o modelo lógico relacional
    
-   Implementar o esquema do banco em SQL
    
-   Popular o banco com dados para testes
    
-   Desenvolver consultas SQL simples e avançadas
    
-   Versionar o projeto no GitHub
    

----------

## 🧠 Regras de Negócio Implementadas

### 🔹 Clientes

-   Um cliente pode possuir um ou mais veículos
    
-   Dados cadastrais únicos (CPF/telefone/e-mail quando aplicável)
    

### 🔹 Ordens de Serviço

-   Cada ordem pertence a um único veículo
    
-   Possui status: aberta, em andamento ou finalizada
    
-   Registra data de abertura e fechamento
    

### 🔹 Serviços

-   Uma ordem pode conter vários serviços
    
-   Cada serviço possui descrição e valor
    

### 🔹 Peças

-   Uma ordem pode utilizar várias peças
    
-   Peças possuem controle de preço e quantidade utilizada
    

### 🔹 Mecânicos

-   Serviços são executados por mecânicos
    
-   É possível analisar produtividade por profissional
    

### 🔹 Relacionamentos N:N

Relacionamentos muitos-para-muitos foram resolvidos com **tabelas associativas**, conforme o modelo relacional:

-   ordem_servico ↔ serviços
    
-   ordem_servico ↔ peças
    

----------

## 🗂️ Estrutura do Repositório
```
📁 ecommerce-der
├── README.md
├── docs
│   ├── der
│   │   ├── Oficina_mecanica.mwb.bak
│   │   ├── Oficina_mecanica.pdf
│   │   └──Oficina_mecanica.mwb
│   └── modelo_logico
│       ├── schema.sql
│       ├── seed.sql
│       └── queries.sql
 ```

----------

## 🧱 Modelo Lógico

O modelo lógico foi derivado diretamente do modelo conceitual ER, respeitando:

-   Chaves primárias e estrangeiras
    
-   Integridade referencial
    
-   Constraints (NOT NULL, UNIQUE, CHECK)
    
-   Normalização até a Terceira Forma Normal (3FN)
    
-   Tabelas associativas para relacionamentos N:N
    

Script de criação do banco:

`docs/modelo-logico/schema.sql` 

----------

## 💾 Persistência de Dados

Foram inseridos **registros de teste em todas as tabelas**, garantindo:

-   Consistência entre chaves
    
-   Cenários realistas
    
-   Suporte às consultas analíticas
    

Arquivo:

`docs/modelo-logico/seed.sql` 

----------

## 🔎 Consultas SQL

Foram desenvolvidas consultas SQL utilizando:

-   SELECT
    
-   WHERE
    
-   Atributos derivados
    
-   ORDER BY
    
-   GROUP BY e HAVING
    
-   JOIN entre múltiplas tabelas
    
-   Funções de agregação (SUM, AVG, COUNT)
    

Arquivo:

`docs/modelo-logico/queries.sql` 

----------

## 📊 Exemplos de perguntas respondidas

-   Quantas ordens cada cliente já realizou?
    
-   Qual o valor total de cada ordem de serviço?
    
-   Qual o faturamento total da oficina?
    
-   Quais mecânicos executaram mais serviços?
    
-   Quais peças são mais utilizadas?
    
-   Quais ordens ainda estão abertas?
    

----------

## 🛠️ Tecnologias Utilizadas

-   MySQL
    
-   MySQL Workbench
    
-   SQL padrão (ANSI)
    
-   Git e GitHub
    
-   Modelagem ER
    

----------

## 📚 Observações Acadêmicas

-   Modelo normalizado (3FN)
    
-   Integridade referencial garantida
    
-   Uso de tabelas associativas para N:N
    
-   Consultas compatíveis com `ONLY_FULL_GROUP_BY`
    
-   Projeto estruturado para fins didáticos e portfólio
    

----------

## 🚀 Conclusão

Este projeto demonstra a aplicação prática dos **conceitos fundamentais de bancos de dados relacionais**, desde a modelagem conceitual até a implementação lógica e análise de dados por meio de consultas SQL.

Inclui **estrutura completa de banco, dados para teste e consultas analíticas**, simulando um cenário real de negócio.

----------

📌 Projeto desenvolvido para fins educacionais e composição de portfólio no GitHub  
**Vinícius Joacir dos Anjos**
