class ListaUsuarios < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    element :titulo_lista_usuarios, '#root > div > div > h1'
end
