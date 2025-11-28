# Esquema do Cenario: Login com usuário administrador - Apresentar tela Home com textos de boas vindas e de administrar ecommerce
Quando('eu informar os campos de {string} e {string} de um usuário administrador') do |email, senha|
    @login_fixture = carregar_fixture('login')
    login.realizar_login(@login_fixture['admin_valido1'][email], @login_fixture['admin_valido1'][senha])
end

Então('deverá apresentar a tela Home com o texto Bem Vindo') do
    home.wait_until_texto_bem_vindo_visible
    expect(home.texto_bem_vindo.text).to have_content("Bem Vindo")
end

Então('com o texto Este é seu sistema para administrar seu ecommerce') do
    expect(home.texto_sistema_administrar_ecommerce.text).to have_content("Este é seu sistema para administrar seu ecommerce.")
end

# Esquema do Cenario: Login com usuário padrão - Apresentar tela Home Serverest Store
Quando('eu informar os campos de {string} e {string} do usuário padrão cadastrado anteriormente') do |email, senha|
    login.realizar_login(@usuario_fixture['padrao_valido1'][email], @usuario_fixture['padrao_valido1'][senha])
end

Então('deverá apresentar a tela Home Serverest Store') do
    home_serverest_store.wait_until_texto_serverest_store_visible
    expect(home_serverest_store.texto_serverest_store).to have_content("Serverest Store.")

    home_serverest_store.wait_until_card_produto_visible
end

# Esquema do Cenario: Validar Login usuários inválidos
Quando('eu informar os campos de {string}, {string} incorretamente') do |email, senha|
    @login_fixture = carregar_fixture('login')
    login.realizar_login(@login_fixture['invalido1'][email], @login_fixture['invalido1'][senha])
end

Então('na tela Login deverá apresentar a mensagem "{string}"') do |mensagem_esperada|
    expect(login).to have_content(mensagem_esperada)
    scroll_to(login.rolagem_tela, align: :bottom)
end
