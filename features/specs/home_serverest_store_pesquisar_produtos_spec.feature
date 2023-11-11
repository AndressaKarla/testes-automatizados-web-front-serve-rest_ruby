# language: pt

@pesquisar_produtos
Funcionalidade: Tela Home Serverest Store - Pesquisar Produtos
	Como usuário da Tela Home Serverest Store do front do ServeRest
	Quero informar o campo Pesquisar Produtos 
	Para validar o comportamento da funcionalidade

@pesquisar_produto_cadastrado
Esquema do Cenario: Validar Pesquisar Produtos - produto cadastrado
	Dado que eu acesse a tela de Login do front do ServeRest
	E que eu informe os campos de email e senha de um usuário administrador
	E que eu esteja na tela Home
	E que na seção Cadastrar Usuários eu clique no botão Cadastrar
	E que eu esteja na tela Cadastro de usuários
	E que eu informe os campos de "<nome>", "<email>" e "<senha>" e eu NÃO informe a opcão Cadastrar como administrador
	E que eu esteja na tela Lista dos usuários
	E que eu clique no botão Logout
	E que eu esteja na tela de Login do front do ServeRest
	E que eu informe os campos de "<email>" e "<senha>" do usuário padrão cadastrado anteriormente
	E que eu esteja na tela Home Serverest Store
	Quando no campo Pesquisar Produtos eu informar um produto cadastrado "<produto>"
	Então na seção Produtos deverá apresentar o produto pesquisado anteriormente
	Exemplos:
		| nome         | email         | senha         | produto             |
		| nome_valido3 | email_valido2 | senha_valida3 | produto_cadastrado1 |

@pesquisar_produto_nao_cadastrado
Esquema do Cenario: Validar Pesquisar Produtos - produto não cadastrado 
	Dado que eu acesse a tela de Login do front do ServeRest
	E que eu informe os campos de email e senha de um usuário administrador
	E que eu esteja na tela Home
	E que na seção Cadastrar Usuários eu clique no botão Cadastrar
	E que eu esteja na tela Cadastro de usuários
	E que eu informe os campos de "<nome>", "<email>" e "<senha>" e eu NÃO informe a opcão Cadastrar como administrador
	E que eu esteja na tela Lista dos usuários
	E que eu clique no botão Logout
	E que eu esteja na tela de Login do front do ServeRest
	E que eu informe os campos de "<email>" e "<senha>" do usuário padrão cadastrado anteriormente
	E que eu esteja na tela Home Serverest Store
	Quando no campo Pesquisar Produtos eu informar um produto NÃO cadastrado "<produto>"
	Então na seção Produtos deverá apresentar o texto Nenhum produto foi encontrado
	Exemplos:
		| nome         | email         | senha         | produto                 |
		| nome_valido3 | email_valido2 | senha_valida3 | produto_nao_cadastrado1 |