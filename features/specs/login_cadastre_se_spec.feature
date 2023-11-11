# language: pt

@login_cadastre_se
Funcionalidade: Tela Login - Opção Cadastre-se
	Como usuário da Tela Login do front do ServeRest
	Quero clicar na Opção Cadastre-se
	Para validar o comportamento da funcionalidade

@login_cadastre_se_admin
Esquema do Cenario: Validar Cadastro Administrador
	Dado que eu acesse a tela de Login do front do ServeRest
	E eu clique na opção Cadastre-se
	E eu esteja na tela Cadastro
	Quando eu informar os campos "<nome>", "<email>", "<senha>" e opcão Cadastrar como administrador
	Então na tela de Cadastro deverá apresentar a mensagem "<mensagem>"

	Exemplos:
		| nome                 | email                             | senha                 | mensagem                                                                                           |
		| nome_valido1         | email_valido1                     | senha_valida1         | "Cadastro realizado com sucesso"                                                                   |
		| nome_invalido_vazio1 | email_invalido_vazio1             | senha_invalida_vazia1 | "×\nNome não pode ficar em branco\n×\nEmail é obrigatório\n×\nPassword não pode ficar em branco\n" |
		| nome_valido2         | email_invalido_dominio_sem_ponto1 | senha_valida2         | "Email deve ser um email válido"                                                                   |