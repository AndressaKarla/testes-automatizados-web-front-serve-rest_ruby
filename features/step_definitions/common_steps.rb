# Esquema do Cenario: Login com usuário administrador - Apresentar tela Home com textos de boas vindas e de administrar ecommerce
# Esquema do Cenario: Login com usuário padrão - Apresentar tela Home Serverest Store
# Esquema do Cenario: Validar Login usuários inválidos
# Esquema do Cenario: Cadastrar usuário administrador válido ou inválido - Apresentar mensagens de obrigatoriedade ou de cadastro realizado com sucesso
# Esquema do Cenario: Pesquisar produto (produto cadastrado) - Apresentar produto pesquisado anteriormente
# Esquema do Cenario: Pesquisar produto (produto não cadastrado) - Apresentar texto de nenhum produto encontrado
Dado('que eu acesse a tela de Login do front do ServeRest') do
    login.load
end

# Esquema do Cenario: Login com usuário padrão - Apresentar tela Home Serverest Store
# Esquema do Cenario: Pesquisar produto (produto cadastrado) - Apresentar produto pesquisado anteriormente
# Esquema do Cenario: Pesquisar produto (produto não cadastrado) - Apresentar texto de nenhum produto encontrado
Dado('que eu informe os campos de email e senha de um usuário administrador') do
    @login_fixture = carregar_fixture('login')
    login.realizar_login(@login_fixture['admin_valido1']['email_valido1'], @login_fixture['admin_valido1']['senha_valida1'])
end

Dado('que eu esteja na tela Home') do
    sleep 2
    expect(home.current_url).to include('/admin/home')
end

Dado('que na seção Cadastrar Usuários eu clique no botão Cadastrar') do
    home.botao_cadastrar_secao_cadastrar_usuarios.click
end

Dado('que eu esteja na tela Cadastro de usuários') do
    sleep 2
    expect(cadastro_usuarios.current_url).to include('/admin/cadastrarusuarios')
end

Dado('que eu informe os campos de {string}, {string} e {string} e eu NÃO informe a opcão Cadastrar como administrador') do |nome, email, senha|
    @usuario_fixture = carregar_fixture('usuario')
    cadastro_usuarios.cadastrar_usuario_padrao(@usuario_fixture['padrao_valido1'][nome], @usuario_fixture['padrao_valido1'][email], @usuario_fixture['padrao_valido1'][senha])
end

Dado('que eu esteja na tela Lista dos usuários') do
    sleep 2
    expect(home.current_url).to include('/admin/listarusuarios')
end

Dado('que eu clique no botão Logout') do
    home.wait_until_botao_logout_visible
    home.botao_logout.click
end

Dado('que eu esteja na tela de Login do front do ServeRest') do
    sleep 2
    expect(home.current_url).to include('/login')
end

# Esquema do Cenario: Pesquisar produto (produto cadastrado) - Apresentar produto pesquisado anteriormente
# Esquema do Cenario: Pesquisar produto (produto não cadastrado) - Apresentar texto de nenhum produto encontrado
Dado('que eu informe os campos de {string} e {string} do usuário padrão cadastrado anteriormente') do |email, senha|
    login.realizar_login(@usuario_fixture['padrao_valido1'][email], @usuario_fixture['padrao_valido1'][senha])
end

Dado('que eu esteja na tela Home Serverest Store') do
    sleep 2
    expect(home_serverest_store.current_url).to include('/home')
end
