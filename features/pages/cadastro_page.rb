class Cadastro < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    element :campo_nome, :xpath, './/*[@id="nome"]'
    element :campo_email, 'input[placeholder="Digite seu email"]'
    element :campo_senha, '#password'
    element :opcao_admin, 'div[class="form-check"]'
    element :botao_cadastrar, 'button[type="submit"]'
    element :rolagem_tela, 'small[class="message form-text"]'

    def cadastrar_usuario_admin(nome, email, senha)
        campo_nome.click
        campo_nome.set nome

        campo_email.click
        campo_email.set email

        campo_senha.click
        campo_senha.set senha

        opcao_admin.click
        botao_cadastrar.click
    end
end
