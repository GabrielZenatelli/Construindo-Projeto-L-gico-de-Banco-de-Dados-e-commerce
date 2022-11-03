# Construindo-Projeto-Logico-de-Banco-de-Dados-e-commerce
Desafio BOOTCAMP Unimed-BH - Projeto lógico de banco de dados no cenário de um e-commerce
# Construindo-Projeto-Logico-de-Banco-de-Dados-e-commerce
Desafio BOOTCAMP Unimed-BH - Projeto lógico de banco de dados no cenário de um e-commerce
Descrição do Desafio
Replique a modelagem do projeto lógico de banco de dados para o cenário de e-commerce. Fique atento as definições de chave primária e estrangeira, assim como as constraints presentes no cenário modelado. Perceba que dentro desta modelagem haverá relacionamentos presentes no modelo EER. Sendo assim, consulte como proceder para estes casos. Além disso, aplique o mapeamento de modelos aos refinamentos propostos no módulo de modelagem conceitual.

Assim como demonstrado durante o desafio, realize a criação do Script SQL para criação do esquema do banco de dados. Posteriormente, realize a persistência de dados para realização de testes. Especifique ainda queries mais complexas dos que apresentadas durante a explicação do desafio. Sendo assim, crie queries SQL com as cláusulas abaixo:

Recuperações simples com SELECT Statement
Filtros com WHERE Statement
Crie expressões para gerar atributos derivados
Defina ordenações dos dados com ORDER BY
Condições de filtros aos grupos – HAVING Statement
Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
Diretrizes
Não há um mínimo de queries a serem realizadas;
Os tópicos supracitados devem estar presentes nas queries;
Elabore perguntas que podem ser respondidas pelas consultas;
As cláusulas podem estar presentes em mais de uma query;
O projeto deverá ser adicionado a um repositório do Github para futura avaliação do desafio de projeto. Adicione ao Readme a descrição do projeto lógico para fornecer o contexto sobre seu esquema lógico apresentado.

Objetivo:
[Relembrando] Aplique o mapeamento para o  cenário:

“Refine o modelo apresentado acrescentando os seguintes pontos”

Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;
Pagamento – Pode ter cadastrado mais de uma forma de pagamento;
Entrega – Possui status e código de rastreio;
Algumas das perguntas que podes fazer para embasar as queries SQL:

Quantos pedidos foram feitos por cada cliente?
Algum vendedor também é fornecedor?
Relação de produtos fornecedores e estoques;
Relação de nomes dos fornecedores e nomes dos produtos;

# Esse repositório contém:
O modelo conceitual do cenário de e-commerce feito no desafio anterior.
O script do modelo lógico do banco de dados
O script das queries e inserções afim de testar a permanência de daos e desenvolver a manimulação dos mesmos.

## Perguntas sobre o banco de dados que foram respondidas.

-- Quantos clientes cadastrados?
-- Qual foi o pedido de maior e menor valor?
-- Qual pedido já foi entregue?
-- Qual o valor medio dos pedidos?
-- Qual o faturamento?
-- Quais são as entregas com observações?
-- Qual o produto mais caro vendido?
-- Descobrindo o id do cliente
-- Descobrindo o id do pedido do cliente
-- Quais os clientes cadastrados que possuem pedidos?
-- Todos os cientes que possuem pedido ou não
-- Qual os status dos pedidos dos clientes?              
-- Quantos pedidos foram realizados por cada clientes?                                                         
-- Quantas unidades de cada produto foram vendidos?                                                                                
-- Quantos dias para a previsão de entrega dos pedidos na ordem descendente?
-- Qual o tempo médio previsto para realizar um entrega?
-- Algum vendededor é fornecedor?   
-- Relação de produtos fornecedores e estoques		
-- Relação de nomes dos fornecedores e nomes dos produtos;                      
-- Quais cliente que somando os pedidos feitos por eles possuem valor medio maior que R$100,00?.
  
