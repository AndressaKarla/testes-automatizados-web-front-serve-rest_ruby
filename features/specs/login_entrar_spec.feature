# language: pt

@login_entrar
Funcionalidade: Tela Login - Botão Entrar
	Como usuário da Tela Login do front do ServeRest
	Quero clicar no Botão Entrar
	Para validar o comportamento da funcionalidade

@login_entrar_admin
Esquema do Cenario: Validar Login usuário administrador
	Dado que eu acesse a tela de Login do front do ServeRest
	Quando eu informar os campos de "<email>" e "<senha>" de um usuário administrador
	Então deverá apresentar a tela Home com o texto Bem Vindo
	E com o texto Este é seu sistema para administrar seu ecommerce
	Exemplos:
		| email         | senha         |
		| email_valido1 | senha_valida1 |

@login_entrar_padrao
Esquema do Cenario: Validar Login usuário padrão
	Dado que eu acesse a tela de Login do front do ServeRest
	E que eu informe os campos de email e senha de um usuário administrador
	E que eu esteja na tela Home
	E que na seção Cadastrar Usuários eu clique no botão Cadastrar
	E que eu esteja na tela Cadastro de usuários
	E que eu informe os campos de "<nome>", "<email>" e "<senha>" e eu NÃO informe a opcão Cadastrar como administrador
	E que eu esteja na tela Lista dos usuários
	E que eu clique no botão Logout
	E que eu esteja na tela de Login do front do ServeRest
	Quando eu informar os campos de "<email>" e "<senha>" do usuário padrão cadastrado anteriormente
	Então deverá apresentar a tela Home Serverest Store    
	Exemplos:
		| nome         | email         | senha         |
		| nome_valido3 | email_valido2 | senha_valida3 |

@login_entrar_invalido
Esquema do Cenario: Validar Login usuários inválidos 
	Dado que eu acesse a tela de Login do front do ServeRest
	Quando eu informar os campos de "<email>", "<senha>" incorretamente
	Então na tela Login deverá apresentar a mensagem "<mensagem>"
	Exemplos:
		| email                             | senha                          | mensagem                         |
		| email_invalido_vazio1             | senha_valida2                  | "Email é obrigatório"            |
		| email_invalido_dominio_sem_ponto1 | senha_valida2                  | "Email deve ser um email válido" |
		| email_invalido_nao_cadastrado1    | senha_invalida_nao_cadastrada1 | "Email e/ou senha inválidos"     |
		