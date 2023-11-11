# Esquema do Cenario: Validar Pesquisar Produtos - produto cadastrado
Quando('no campo Pesquisar Produtos eu informar um produto cadastrado {string}') do |produto|
    @produto_fixture = carregar_fixture('produto') 
    home_serverest_store.pesquisar_produto(@produto_fixture['produto_valido1'][produto])
end

Então('na seção Produtos deverá apresentar o produto pesquisado anteriormente') do
    home_serverest_store.wait_until_secao_produtos_produto_pesquisado_visible
    expect(home_serverest_store.secao_produtos_produto_pesquisado.text).to have_content(@produto_fixture['produto_valido1']['produto_cadastrado1'])

    scroll_to(home_serverest_store.rolagem_tela, align: :bottom)
end

# Esquema do Cenario: Validar Pesquisar Produtos - produto não cadastrado 
Quando('no campo Pesquisar Produtos eu informar um produto NÃO cadastrado {string}') do |produto|
    @produto_fixture = carregar_fixture('produto') 
    home_serverest_store.pesquisar_produto(@produto_fixture['produto_invalido1'][produto])
end

Então('na seção Produtos deverá apresentar o texto Nenhum produto foi encontrado') do
    home_serverest_store.wait_until_texto_nenhum_produto_encontrado_visible
    expect(home_serverest_store.texto_nenhum_produto_encontrado).to have_content("Nenhum produto foi encontrado")
end
