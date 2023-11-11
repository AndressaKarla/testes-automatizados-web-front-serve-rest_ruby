class CadastroUsuarios < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL
    
    element :campo_nome, '#nome'
    element :campo_email, 'input[name="email"]'
    element :campo_senha, 'input[data-testid="password"]'
    element :opcao_admin, 'div[class="form-check"]'
    element :botao_cadastrar, 'button[data-testid="cadastrarUsuario"]'
    
    def cadastrar_usuario_padrao(nome, email, senha)
        campo_nome.click
        campo_nome.set nome

        campo_email.click
        campo_email.set email

        campo_senha.click
        campo_senha.set senha
    
        botao_cadastrar.click
    end
end
