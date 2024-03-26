Before do |scenario|
    def obter_por_email_e_excluir_usuario_por_id(base_uri, email)
        retorno_get = HTTParty.get("#{base_uri}/usuarios?email=#{email}")

        if retorno_get["quantidade"] == 1
            id_usuario_retornado = retorno_get["usuarios"][0]["_id"]
            HTTParty.delete("#{base_uri}/usuarios/#{id_usuario_retornado}")
        end
    end

    def obter_por_email_e_incluir_usuario_admin(base_uri, nome, email, senha)
        retorno_get = HTTParty.get("#{base_uri}/usuarios?email=#{email}")

        if retorno_get["quantidade"] == 0
            HTTParty.post("#{base_uri}/usuarios", headers: { 'Accept': 'application/json', 'Content-Type': 'application/json' }, body: { nome: nome, email: email, password: senha, administrador: "true" }.to_json)
        end
    end

    usuario_fixture = carregar_fixture('usuario')
    $base_uri = CONFIG['base_uri']

    obter_por_email_e_excluir_usuario_por_id($base_uri, usuario_fixture['padrao_valido1']['email_valido2'])
    obter_por_email_e_excluir_usuario_por_id($base_uri, usuario_fixture['admin1']['email_valido1'])

    obter_por_email_e_incluir_usuario_admin($base_uri, usuario_fixture['admin_valido1']['nome_valido1'], usuario_fixture['admin_valido1']['email_valido1'], usuario_fixture['admin_valido1']['senha_valida1'])

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
