# language: pt

@cadastro_usuarios
Funcionalidade: Cadastrar Usuários
	Como usuário da tela Login do front do ServeRest
	Quero clicar na opção Cadastre-se
	Para validar o comportamento da funcionalidade

@cadastro_usuario_admin
Esquema do Cenario: Cadastrar usuário administrador válido ou inválido - Apresentar mensagens de obrigatoriedade ou de cadastro realizado com sucesso
	Dado que eu acesse a tela de Login do front do ServeRest
	E eu clique na opção Cadastre-se
	E eu esteja na tela Cadastro
	Quando eu informar os campos "<nome>", "<email>", "<senha>" e opcão Cadastrar como administrador
	Então na tela de Cadastro deverá apresentar a mensagem "<mensagem>"
	Exemplos:
		| nome         | email                             | senha         | mensagem                         |
		| nome_valido1 | email_valido1                     | senha_valida1 | "Cadastro realizado com sucesso" |
		| nome_valido1 | email_invalido_vazio1             | senha_valida1 | "Email é obrigatório"            |
		| nome_valido2 | email_invalido_dominio_sem_ponto1 | senha_valida2 | "Email deve ser um email válido" |