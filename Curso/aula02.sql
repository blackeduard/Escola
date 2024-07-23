/*---------------------------------AULA 02-------------------------------------*/
	/*Seleciona todas as linhas e colunas da:*/
	/*Tabela "categorias"*/
	SELECT * FROM categorias;
	/*Tabela "clientes"*/
	SELECT * FROM clientes;
	/*Tabela "locais"*/
	SELECT * FROM locais;
	/*Tabela "lojas"*/
	SELECT * FROM lojas;
	/*Tabela "pedidos"*/
	SELECT * FROM pedidos;
	/*Tabela "produtos"*/
	SELECT * FROM produtos;
	
	/*Selecionar apenas algumas colunas da tabela clientes*/
	SELECT 
		ID_Cliente AS 'ID Cliente',
		Nome AS 'Nome Cliente',
		Data_Nascimento AS 'Data de Nascimento',
		Email AS 'E-mail do Cliente' 
	FROM clientes;
	
	/*Selecionar apenas as 5 primeiras linhas da tabela*/
	SELECT * FROM produtos
	LIMIT 2;
	
	/*Selecionar todas as linhas da tabela mas ordenando pela coluna*/
	/* DESC - Decendente | ASC - Ascendente (normal)*/
	SELECT * FROM produtos
	ORDER BY Preco_Unit
	LIMIT 2;
/*-----------------------------------------------------------------------------*/