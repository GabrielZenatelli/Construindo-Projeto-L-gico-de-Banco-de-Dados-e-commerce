-- criação do banco de dados para o cenário de E-commerce
create database ecommerce;
use ecommerce;
-- Criar tabela pessoa
create table pessoa(
	idPessoa int not null auto_increment primary key,
    nome varchar(45) not null,
    tipo enum('PJ','PF') not null,
    endereco varchar(60) not null,
    contato char(11) not null
);

create table clientePF(
	CPF_cliente char(11) not null primary key,
    idPessoa int,
    nome_cliente varchar(45) not null,
    constraint CPF_unique unique(CPF),
    constraint fk_idPessoaF foreign key (idPessoa) references pessoa(idPessoa)
);

create table clientePJ(
	CNPJ_cliente char(15) not null primary key,
    idPessoa int,
    razao_social varchar(45) not null,
    constraint CNPJ_unique unique(CNPJ),
    constraint fk_idPessoaJ foreign key (idPessoa) references pessoa(idPessoa)
);

create table pagamento(
	id_pagamento int not null auto_increment primary key,
    idPessoa int,
    tipoPagamento enum('Boleto','Cartao'),
    pagamentoBoleto bool default False,
    cartao varchar(16) not null default 'Sem pagamento por cartão',
    validade date not null,
    constraint fk_pagamento_pessoa foreign key (idPessoa) references pessoa(idPessoa),
    constraint cartao_unique unique(cartao)
);

create table produto(
	id_produto int not null auto_increment primary key,
    nome_produto varchar(45) not null,
    desc_procuto varchar(60) default 'Sem descricao',
    categoria enum('Eletronico','Moda','Brinquedos','Livros','Alimentos') not null,
    valor float not null,
    avaliacao float default 0
);

create table pedido(
	id_pedido int auto_increment primary key,
    idPedidoPessoa int,
    idPedidoPagamento int,
    desc_pedido varchar(255),
    pedido_status enum('Cancelado', 'Finalizado') default 'Processando',
    dt_pedido date not null,
    frete float default 10,
    valor_pedido float default 0,
    constraint fk_pedido_pessoa foreign key (idPedidoPessoa) references pessoa(idPessoa),
    constraint fk_pedido_pagamento foreign key (idPedidoPagamento) references pagamento(id_pagamento)
    );

create table estoque(
	id_estoque int auto_increment primary key,
    endereco varchar(255),
    quantidade int default 0
);

create table vendedor(
	id_vendedor int auto_increment primary key,
    CNPJ_vendedor char(15) not null,
    razão_social varchar(60) not null,
    endereco varchar(255) not null,
	nome_fantasia varchar(60),
    contato char(11),
    constraint unique_vendedor unique(CNPJ_vendedor)
);

create table fornecedor(
	id_fornecedor int auto_increment primary key,
    CNPJ_fornecedor char(15) not null unique,
    razão_social varchar(60) not null unique,
    endereco varchar(255) not null,
    contato char(11) not null,
	constraint unique_fornecedor unique(CNPJ_fornecedor)
);

create table entrega(
	id_entrega int auto_increment primary key,
    idEntregaPedido int,
    obs_entrega varchar(255),
    entrega_status enum('A caminho', 'Em separação', 'Entregue') default 'Em separação',
    previsao_entrega date not null,
    cod_rastreio varchar(20) unique primary key,
	constraint fk_entrega_pedido foreign key (idEntregaPedido) references pedido(id_pedido)
);


create table pedidoProduto(
	id_pedido int,
	id_produto int,
	quantidade int default 1,
    primary key (id_pedido, id_pedido),
	constraint fk_pedido_pedido foreign key (id_pedido) references pedido(id_pedido),
	constraint fk_pedido_produto foreign key (id_produto) references produto(id_produto)
);

create table produtoVendedor(
	id_produto int,
	id_vendedor int,
    primary key (id_produto, id_vendedor),
	constraint fk_produto_vendedor foreign key (id_vendedor) references vendedor(id_vendedor),
	constraint fk_produto_produto foreign key (id_produto) references produto(id_produto)
);

create table produtoFornecedor(
	id_produto int,
	id_fornecedor int,
    primary key (id_produto, id_fornecedor),
	constraint fk_produto_fornecedor foreign key (id_fornecedor) references fornecedor(id_fornecedor),
	constraint fk_produto_produto foreign key (id_produto) references produto(id_produto)
    );
    
 create table produtoEstoque(
	id_produto int,
	id_estoque int,
    primary key (id_produto, id_estoque),
	constraint fk_produto_estoque foreign key (id_estoque) references estoque(id_estoque),
	constraint fk_produto_produto foreign key (id_produto) references produto(id_produto)
    );
       