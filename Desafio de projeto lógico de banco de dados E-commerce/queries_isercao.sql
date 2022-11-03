-- inserção de dados e queries
use ecommerce;

show tables;

insert into pessoa(nome,tipo,endereco,contato) 
	values	("Gabriel Fonseca Zenatelli", 'PF', 'Rua alameda 289, Centro','31954895454'),
			("Jonata José da Silva", 'PJ', 'Rua Cristina 1500, Centro','31994855434'),
            ("Heitor Fernandez", 'PF', 'Rua silva ouro 345, Centro','31954897454'),
            ("Ingrid Maria", 'PF', 'Rua Serpentina 289, Centro','31954965245'),
            ("Joaquina Gabriella", 'PJ', 'Rua Fernão Dias 720, Centro','31997465123'),
            ("Henrique Silva", 'PF', 'Rua alameda 302, Centro','31994415454'),
			("José Antonio" , 'PF', 'Rua Cristina 1500, Centro','31924754494')
;

select * from pessoa;

insert into clientePF(idPessoa,CPF_cliente) 
	values	(1,'12545366017'),
            (3,'77615597080'),
            (4,'02460830009'),
            (6,'37289533003'),
            (7,'84661859090')
;

insert into clientePJ(idPessoa,CNPJ_cliente,razao_social) 
	values	(2,'19078886000114','Jaragua lojas ltda'),
            (5,'16482776000125',' Joaquina bar e restaurante')
;

insert into produto(nome_produto,desc_produto,categoria,valor,avaliacao) 
	values	('Fone de ouvido','Fones bluetooth de bateria de alta duração', 'Eletronico', 125, 4.5),
			('Camiseta basica preta','Camisa de algodão tamanho G', 'Moda', 45.00, 4.75),
            ('Barbie desenvolvedora','Acompanha uma xícara de café e um notebook com linux', 'Brinquedos', 170.00, 5.00),
            ('O senhor dos aneis','A coleção completa e definitiva apenas para colecionadores', 'Livros', 40, 4),
            ('Macarrão instantâneo Sabor galinha','Macarrão delicioso com 3% menos sódio', 'Alimentos', 2.40, 2.5)
;

insert into pedido(idPedidoPessoa,desc_pedido,pedido_status,dt_pedido,frete, valor_pedido) 
	values	(1, 'Compra via aplicativo', 'Processando',20220225,15,125),
			(2,'Compra via aplicativo','Finalizado',20220213,30,45),
            (3,'Compra via web site',default,20220207,35,4.8),
            (4,'Compra via web site',default,20220217,25,120),
            (5,'Compra via aplicativo','Processando',20220228,10,170),
            (1,'Compra via web site', 'Finalizado',20220101,30,170);


insert into pedidoProduto(id_PPpedido,id_PPproduto,peQuantidade,ppStatus) 
	values	(1,1,1,default),
			(2,2,1,default),
            (3,5,2,default),
            (4,4,3,default),
            (5,3,1,default)
            
;

insert into pagamento(idPessoa,idPedidoPagamento,tipoPagamento,pagamentoBoleto,cartao, validade) 
	values	(1, 1,'Cartao',default,'1111111111111111',20300712),
			(2,2,'Cartao',default,'2222222222222222',20350918),
            (3,3,'Boleto',1,default,default),
            (4,4,'Cartao',0,3333333333333333, 20290407),
            (5,5,'Boleto',1,default, default)
;


insert into estoque(endereco) 
	values	('Juazeiro do mato, 475 Criciuma'),
			('Rua Critovão colombo, 764, Ribeirão das Neves')
;
select * from estoque;

insert into produtoEstoque(id_PEproduto,id_PEestoque,estoque_quantidade) 
	values	(1,2,340),
			(2,2,190),
            (3,1,275),
            (4,1,390),
            (5,1,140)
            
;
select * from produtoEstoque;

insert into vendedor(CNPJ_vendedor,razao_social,endereco,nome_fantasia,contato) 
	values	('91896304000134', 'LOJA ALBERTO FERRAZ','rua camões 789, São Paulo',null, '11456987412'),
			('12882932000194','MERCADO CURITIBA','Avenida Cristiano Machado 1789, Belo Horizonte',null,'31364125987'),
            ('17366036000196','BAR DA ESQUINA','Rua Joaquim Barbosa, 146, Brasilia ',null,'43134679856'),
            ('81505985000109','ROUPAS DOS IRMÃOS','Rua Herlan Figueiredo, 314, rio de Janeiro',null,'21975445461'),
            ('43397143000191','INFORMATIZANDO LTDA','Rua Augusta 789, São Paulo',null,'11987568794')
;
select * from vendedor;

insert into produtoVendedor(id_PVproduto,id_PVvendedor,pvQuantidade) 
	values	(1,1,14),
			(2,1,17),
            (3,5,25),
            (4,3,30),
            (5,2,12)
            
;
select * from produtoVendedor;

insert into fornecedor(CNPJ_fornecedor,razao_social,endereco,contato) 
	values	('06987524000102', 'LOJA ALDABERTO FERRAZ','rua camões 789, São Paulo','11456987412'),
			('10026472000177','MERCADO JURANDIR','Avenida Cristiano Machado 1789, Belo Horizonte','31364125987'),
            ('43397143000191','INFORMATIZANDO LTDA','Rua Augusta 789, São Paulo','11987568794')
;
select * from fornecedor;

insert into produtoFornecedor(id_PFproduto,id_PFfornecedor,forquantidade) 
	values	(1,1,140),
			(2,1,390),
            (3,2,225),
            (4,2,370),
            (5,2,120)
            
;
select * from produtoFornecedor;
insert into entrega(idEntregaPedido,obs_entrega,entrega_status,previsao_entrega,cod_rastreio) 
	values	(1, 'Entrega na portaria','Em separação',20220325,null),
			(2,null,'Entregue',20220313,'ACD4784QP'),
            (3,null,'A caminho',20220317,'ACD8748QP'),
            (4,null,'Em separação',20220317,null),
            (5,'Apenas fim de semana','Em separação',20220328,null)
;
select * from produtoFornecedor;


-- Queries de teste
-- Quantos clientes cadastrados?
select count(*) from pessoa;

-- Qual foi o pedido de maior e menor valor?
select * from pedido where valor_pedido = (select max(valor_pedido) from pedido);
select * from pedido where valor_pedido = (select min(valor_pedido) from pedido);

-- Qual pedido já foi entregue?
select * from entrega where entrega_status='Entregue';

-- Qual o valor medio dos pedidos?
select avg(valor_pedido) from pedido;

-- Qual o faturamento?
select sum(valor_pedido) from pedido;

-- Quais são as entregas com observações?
select * from entrega where obs_entrega is not null;

-- Qual o produto mais caro vendido?
select * from produto where valor = (select max(valor) from produto);

-- Descobrindo o id do cliente
select * from pessoa where nome = 'Gabriel Fonseca Zenatelli';

-- Descobrindo o id do pedido do cliente
select id_pedido from pedido where idPedidoPessoa=(select idPessoa from pessoa where nome = 'Gabriel Fonseca Zenatelli');

-- Quais os clientes cadastrados que possuem pedidos?
select * from pessoa right outer join pedido on pessoa.idPessoa = idPedidoPessoa;

-- Todos os cientes que possuem pedido ou não
select * from pessoa left outer join pedido on pessoa.idPessoa = idPedidoPessoa;

-- Qual os status dos pedidos dos clientes?
select nome, pedido_status from pessoa inner join pedido on idPessoa = idPedidoPessoa
					 inner join pedidoProduto on id_PPpedido = pedido.id_pedido;
                     
-- Quantos pedidos foram realizados por cada clientes?
select idPessoa, nome, count(*) as numero_de_pedidos from pessoa inner join pedido on idPessoa = idPedidoPessoa
																group by idPessoa;
                                                                
-- Quantas unidades de cada produto foram vendidos?
select * from pedidoProduto;
select id_produto, nome_produto, sum(peQuantidade) as quantidade_vendida from produto inner join pedidoProduto on id_produto= id_PPproduto
																						group by id_produto;
                                                                                        
-- Quantos dias para a previsão de entrega dos pedidos na ordem descendente?
select dt_pedido, previsao_entrega, (datediff(previsao_entrega,dt_pedido)) as dias_entrega from pedido inner join entrega on id_pedido = idEntregaPedido
																										order by dias_entrega desc;

-- Qual o tempo médio previsto para realizar um entrega?
select avg(datediff(previsao_entrega,dt_pedido)) as media_entrega from pedido inner join entrega on id_pedido = idEntregaPedido;

-- Algum vendededor é fornecedor?   
    select id_vendedor, vendedor.razao_social, CNPJ_vendedor, id_fornecedor from vendedor inner join fornecedor on CNPJ_vendedor = CNPJ_fornecedor;
    
-- Relação de produtos fornecedores e estoques

select id_PEproduto, estoque_quantidade as produto_estoque, forquantidade as produto_fornecedor, (estoque_quantidade + forquantidade) as total from produtoEstoque 
																										inner join produtoFornecedor on id_PEproduto = id_PFproduto;
			
-- Relação de nomes dos fornecedores e nomes dos produtos;

select CNPJ_fornecedor, razao_social, id_PFproduto, nome_produto, forquantidade from fornecedor inner join produtoFornecedor on id_fornecedor = id_PFfornecedor
																								inner join produto on id_produto = id_PFproduto;
                                                                                                

-- Quais cliente que somando os pedidos feitos por eles possuem valor medio maior que R$100,00?.
select * from pedido;
select idPedidoPessoa, sum(valor_pedido) as valor_total , avg(valor_pedido) as media_valor from pedido group by idPedidoPessoa having avg(valor_pedido) >100;