# Esquema do Cenario: Validar Login usuário administrador
# Esquema do Cenario: Validar Login usuário padrão
# Esquema do Cenario: Validar Login usuários inválidos 
# Esquema do Cenario: Validar Cadastro Administrador
# Esquema do Cenario: Validar Pesquisar Produtos - produto cadastrado
# Esquema do Cenario: Validar Pesquisar Produtos - produto não cadastrado 
Dado('que eu acesse a tela de Login do front do ServeRest') do
    login.load
end

# Esquema do Cenario: Validar Login usuário padrão
# Esquema do Cenario: Validar Pesquisar Produtos - produto cadastrado
# Esquema do Cenario: Validar Pesquisar Produtos - produto não cadastrado 
Dado('que eu informe os campos de email e senha de um usuário administrador') do 
    @login_fixture = carregar_fixture('login')
    login.realizar_login_botao_entrar(@login_fixture['admin_valido1']['email_valido1'], @login_fixture['admin_valido1']['senha_valida1'])
end

Dado('que eu esteja na tela Home') do
    expect(page).to have_current_path(/\/admin\/home/, wait: 10)
end

Dado('que na seção Cadastrar Usuários eu clique no botão Cadastrar') do
    home.botao_cadastrar_secao_cadastrar_usuarios.click
end

Dado('que eu esteja na tela Cadastro de usuários') do
    expect(page).to have_current_path(/\/admin\/cadastrarusuarios/, wait: 10)
end

Dado('que eu informe os campos de {string}, {string} e {string} e eu NÃO informe a opcão Cadastrar como administrador') do |nome, email, senha|
    @usuario_fixture = carregar_fixture('usuario')
    cadastro_usuarios.cadastrar_usuario_padrao(@usuario_fixture['padrao_valido1'][nome], @usuario_fixture['padrao_valido1'][email], @usuario_fixture['padrao_valido1'][senha])
end

Dado('que eu esteja na tela Lista dos usuários') do
    expect(page).to have_current_path(/\/admin\/listarusuarios/, wait: 10)
end

Dado('que eu clique no botão Logout') do
    home.wait_until_botao_logout_visible
    home.botao_logout.click
end

Dado('que eu esteja na tela de Login do front do ServeRest') do
    expect(page).to have_current_path(/\/login/, wait: 10)
end

# Esquema do Cenario: Validar Pesquisar Produtos - produto cadastrado
# Esquema do Cenario: Validar Pesquisar Produtos - produto não cadastrado 
Dado('que eu informe os campos de {string} e {string} do usuário padrão cadastrado anteriormente') do |email, senha|
    login.realizar_login_botao_entrar(@usuario_fixture['padrao_valido1'][email], @usuario_fixture['padrao_valido1'][senha])
end

Dado('que eu esteja na tela Home Serverest Store') do
    expect(page).to have_current_path(/\/home/, wait: 10)
end


