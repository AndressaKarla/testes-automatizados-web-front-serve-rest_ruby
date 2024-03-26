Dado('eu clique na opção Cadastre-se') do
    login.wait_until_opcao_cadastre_se_visible
    login.opcao_cadastre_se.click
end

Dado('eu esteja na tela Cadastro') do
    sleep 2
    expect(cadastro.current_url).to include('/cadastrarusuarios')
end

Quando('eu informar os campos {string}, {string}, {string} e opcão Cadastrar como administrador') do |nome, email, senha|
    @usuario_fixture = carregar_fixture('usuario')
    cadastro.realizar_login_admin_opcao_cadastre_se(@usuario_fixture['admin1'][nome], @usuario_fixture['admin1'][email], @usuario_fixture['admin1'][senha])    
end

Então('na tela de Cadastro deverá apresentar a mensagem "{string}"') do |mensagem_esperada|
    expect(cadastro).to have_content(mensagem_esperada)
    scroll_to(cadastro.rolagem_tela, align: :bottom)
end

