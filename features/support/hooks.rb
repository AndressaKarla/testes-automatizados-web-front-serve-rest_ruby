Before do |scenario|
    def obter_por_email_e_excluir_usuario_por_id(base_uri, email_usuario)
        retorno_get = HTTParty.get("#{base_uri}/usuarios?email=#{email_usuario}")

        if retorno_get["quantidade"] == 1
            id_usuario_retornado = retorno_get["usuarios"][0]["_id"]
            HTTParty.delete("#{base_uri}/usuarios/#{id_usuario_retornado}")
        end
    end

    usuario_fixture = carregar_fixture('usuario')
    email_usuario_padrao_valido1 = usuario_fixture['padrao_valido1']['email_valido2']
    email_usuario_admin_valido1 = usuario_fixture['admin1']['email_valido1']
    $base_uri = CONFIG['base_uri']

    obter_por_email_e_excluir_usuario_por_id($base_uri, email_usuario_padrao_valido1)
    obter_por_email_e_excluir_usuario_por_id($base_uri, email_usuario_admin_valido1)

    Capybara.current_session.driver.browser.manage.delete_all_cookies
    Capybara.page.driver.browser.manage.window.resize_to(1280, 720)
end

After do |scenario|
    nome_cenario = scenario.name.gsub(/\s+/, '_').tr('/', '_')

    if scenario.failed?
        print_screen(nome_cenario.downcase!, 'falharam')
    else
        print_screen(nome_cenario.downcase!, 'passaram')
    end
end
