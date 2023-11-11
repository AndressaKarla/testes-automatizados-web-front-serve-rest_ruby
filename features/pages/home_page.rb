class Home < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    element :texto_bem_vindo, '#root > div > div > h1' 
    element :texto_sistema_administrar_ecommerce, '#root > div > div > p.lead' 

    element :botao_logout, 'button[data-testid="logout"]'
    element :botao_cadastrar_secao_cadastrar_usuarios, 'a[data-testid="cadastrarUsuarios"]'
end
