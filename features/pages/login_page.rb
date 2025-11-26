class Login < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    set_url '/login'

    element :campo_email, '#email'
    element :campo_senha, 'input[name="password"]'
    element :botao_entrar, 'button[type="submit"]'
    element :rolagem_tela, 'small[class="message form-text"]'
    element :opcao_cadastre_se, 'a[type="button"]'

    def realizar_login(email, senha)
        campo_email.click
        campo_email.set email

        campo_senha.click
        campo_senha.set senha

        botao_entrar.click
    end
end
