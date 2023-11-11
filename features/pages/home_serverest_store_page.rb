class HomeServerestStore < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    element :texto_serverest_store, :xpath, './/h1[text()="Serverest Store"]' 
    element :texto_nenhum_produto_encontrado, '#root > div > div > div.container-fluid > div > section > div > div > div > p'

    element :campo_pesquisar_produtos, 'input[placeholder="Pesquisar Produtos"]'
    element :botao_pesquisar, 'button[class="btn btn-primary my-2 my-sm-0"]'
    
    element :secao_produtos_produto_pesquisado, '#root > div > div > div.container-fluid > div > section > div:nth-child(1) > div > h5'
    element :card_produto, '#root > div > div > div.container-fluid > div > section > div:nth-child(1) > div'
    element :rolagem_tela, 'button[data-testid="adicionarNaLista"]'
    
    def pesquisar_produto(produto)
        campo_pesquisar_produtos.click
        campo_pesquisar_produtos.set produto

        botao_pesquisar.click
    end
end
