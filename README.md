---
# Projeto de Testes Automatizados Web | Ruby | Cucumber | Capybara | SitePrism | Rspec | HTTParty | GitHub Actions :test_tube:
---
# :information_source: Introdução
Esse projeto "testes-automatizados-web-front-serve-rest_ruby" é executado em um ambiente de desenvolvimento no ["front"](https://front.serverest.dev) e na ["API REST"](https://serverest.dev) do ["ServeRest"](https://github.com/ServeRest) que simula uma loja virtual, com o objetivo de me aprofundar um pouco mais nos estudos sobre testes automatizados web em Ruby nas ferramentas Cucumber, Capybara, SitePrism, Rspec, HTTParty e GitHub Actions.

---
# :dart: Executar testes em um ambiente de desenvolvimento e Gerar os resultados dos testes no GitHub Actions

## :triangular_flag_on_post: Executar os testes automatizados web no navegador chrome, firefox, etc em modo headless (2° plano) e Gerar os resultados dos testes no GitHub Actions
- Nesse repositório, acessar a aba "Actions"
- Na seção "Actions", clicar em "Pipeline Testes Automatizados Web Front ServeRest Ruby"
- Em "This workflow has a workflow_dispatch event trigger.", clicar em "Run workflow" > "Run workflow" para executar os testes automatizados web no navegador chrome em modo headless (2° plano) no GitHub Actions [com os conteúdos de "secrets.LOGIN_ENV", "secrets.USUARIO_ENV", etc (baseado nos arquivos ["login.example.json"](https://github.com/AndressaKarla/testes-automatizados-web-front-serve-rest_ruby/blob/main/features/support/fixtures/login.example.json), ["usuario.example.json"](https://github.com/AndressaKarla/testes-automatizados-web-front-serve-rest_ruby/blob/main/features/support/fixtures/usuario.example.json), etc, e configurados na aba "Settings" desse repositório > "Secrets and variables" > "Actions" > "Secrets" > "Repository secrets") que foram redirecionados para os arquivos "login.json", "usuario.json"]
- Após o término da execução, clicar na run "Pipeline Testes Automatizados Web Front ServeRest Ruby"
- Na seção "Artifacts", clicar em "relatorio_html_chrome", "relatorio_html_firefox", etc
- Na janela aberta, escolher um diretório para baixar a pasta compactada "relatorio_html_chrome.zip", "relatorio_html_firefox.zip", etc
- Na seção "Artifacts", clicar em "screenshots_chrome", "screenshots_firefox", etc
- Na janela aberta, escolher um diretório para baixar a pasta compactada "screenshots_chrome.zip", "screenshots_firefox.zip", etc


# Verificar no navegador padrão o relatório html gerado e armazenado anteriormente no GitHub Actions e descompactado no computador :female_detective:
- Abrir uma janela do "Windows Explorer"
- Acessar o diretório onde foi baixada a pasta compactada "relatorio_html_chrome.zip", "relatorio_html_firefox.zip" anteriormente
- Descompactar a pasta
- Acessar a pasta descompactada "relatorio_html_chrome", "relatorio_html_firefox.zip", etc
- Clicar 2 vezes sob o relatório "relatorio-web-front-serve-rest-ruby.html" gerado e armazenado anteriormente no GitHub Actions e descompactado para ser aberto e verificado no navegador padrão no computador


# Verificar os screenshots gerados e armazenados anteriormente no GitHub Actions e descompactados no computador :female_detective:
- Abrir uma outra janela do "Windows Explorer"
- Acessar o diretório onde foi baixada a pasta compactada "screenshots_chrome.zip", "screenshots_firefox.zip" anteriormente
- Descompactar a pasta
- Acessar a pasta descompactada "screenshots_chrome", "screenshots_firefox", etc


## :heavy_check_mark: Em caso de sucesso dos testes, verificar os screenshots da pasta "testes_passaram"
- Na pasta descompactada "screenshots_chrome", "screenshots_firefox" acessada anteriormente, acessar "testes_passaram > dd_mm_aaaa" 
```
- nome_cenario1-dd_mm_aaaa-hh1_mm1_ss1.png
  . . .
- nome_cenariox-dd_mm_aaaa-hhx_mmx_ssx.png
```  
  
Ex.: testes_passaram > 10_11_2023 
```
- validar_cadastro_administrador-10_11_2023-03_19_10.png
. . .
- validar_pesquisar_produtos_-_produto_não_cadastrado-10_11_2023-03_19_29.png
```

## :x: Em caso de falha dos testes, verificar os screenshots da pasta "testes_falharam"
- Na pasta descompactada "screenshots_chrome", "screenshots_firefox" acessada anteriormente, acessar "testes_falharam > dd_mm_aaaa" 
```
- nome_cenario1-dd_mm_aaaa-hh1_mm1_ss1.png
  . . .
- nome_cenariox-dd_mm_aaaa-hhx_mmx_ssx.png
```  

Ex.: testes_falharam > 10_11_2023
```
- validar_cadastro_administrador-10_11_2023-03_47_21.png
. . .
- validar_pesquisar_produtos_-_produto_não_cadastrado-10_11_2023-03_47_40.png
``` 

---
# Antes de clonar ou executar esse projeto localmente no computador, é necessário seguir as instruções abaixo :point_down:

## :hammer_and_wrench: Janela do "Windows Explorer" > aba "Exibir" e marcar algumas opções
- Abrir uma janela do "Windows Explorer"
- Clicar na aba "Exibir" 
- Marcar a opção "Extensões de nomes de arquivos"
- Marcar a opção "Itens ocultos"


## :hammer_and_wrench: Janela do "Windows Explorer", criar uma pasta "tools"
- Abrir uma janela do "Windows Explorer"
- Acessar o diretório "C:"
- Criar uma pasta "tools"


## :hammer_and_wrench: Cmder (Console Emulator)
- Baixar o [Console Emulator (cmder)](https://github.com/cmderdev/cmder/releases/download/v1.3.5/cmder.zip)
- Clicar com botão direito na pasta compactada > Extrair para "cmder"
- Mover a pasta descompactada "cmder" para o diretório "C:\tools" criado anteriormente
- Acessar o diretório "C:\tools\cmder"
- Clicar com botão direito no executável "cmder.exe" > Enviar para > Área de trabalho (criar atalho)
- Acessar a Área de Trabalho
- Clicar 2 vezes no atalho "Cmder - Atalho"
- Clicar na opção "Unblock and Continue"


## :hammer_and_wrench: Excluir chromedriver que já foi baixado em algum outro momento
- Na janela do "Windows Explorer" acessar o diretório "C:\Ruby\bin", procurar e excluir "chromedriver.exe"
- Acessar o diretório "C:\Windows", procurar e excluir "chromedriver.exe"
- Acessar o diretório "C:\Windows\System32", procurar e excluir "chromedriver.exe"


## :hammer_and_wrench: Instalar novo chromedriver 
- Verificar versão do navegador Chrome (Ex.: Versão 119.0.6045.124)
```
chrome://settings/help
```
- Acessar o site com a versão "Stable" do [chromedriver](https://googlechromelabs.github.io/chrome-for-testing/#stable) (Ex.: Version: 119.0.6045.105 (r1204232)) próxima a versão do Chrome verificada anteriormente 
- Em "chromedriver" > "win32" copiar a "URL"
  - Ex.: https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/119.0.6045.105/win32/chromedriver-win32.zip
- Acessar a "URL" copiada anteriormente
- Baixar o arquivo "chromedriver-win32.zip"
  - Descompactar o arquivo
  - NÃO executar o executável "chromedriver.exe"
  - Mover o executável "chromedriver.exe" para o diretório "C:\Windows\System32"
		
- Abrir um novo cmder ou outro terminal de preferência, informar o comando abaixo para confirmar se o novo chromedriver realmente foi instalado, e verificar se a versão apresentada é a mesma no qual foi baixada no site com a versão "Stable" anteriormente (Ex.: ChromeDriver 119.0.6045.105)
```
chromedriver -v
```
- Fechar esse cmder ou terminal

## :hammer_and_wrench: Excluir geckodriver que já foi baixado em algum outro momento
- Na janela do "Windows Explorer" acessar o diretório "C:\Ruby\bin", procurar e excluir "geckodriver.exe"
- Acessar o diretório "C:\Windows", procurar e excluir "geckodriver.exe"
- Acessar o diretório "C:\Windows\System32", procurar e excluir "geckodriver.exe"


## :hammer_and_wrench: Instalar novo geckodriver 
- Verificar versão do navegador Firefox (Ex.: 124.0.1 (64-bits))
  - Menu > Ajuda > Sobre o Firefox
- Acessar o site com a versão "Latest" do [geckodriver](https://github.com/mozilla/geckodriver/releases/latest) (Ex.: v0.34.0) compatível com a versão do Firefox verificada anteriormente 
- Em "Assets", clicar em "geckodriver...win64.zip"
  - Ex.: https://github.com/mozilla/geckodriver/releases/download/v0.34.0/geckodriver-v0.34.0-win64.zip
- Baixar o arquivo "geckodriver...win64.zip"
  - Descompactar o arquivo
  - NÃO executar o executável "geckodriver.exe"
  - Mover o executável "geckodriver.exe" para o diretório "C:\Windows\System32"
		
- Abrir um novo cmder ou outro terminal de preferência, informar o comando abaixo para confirmar se o novo geckodriver realmente foi instalado, e verificar se a versão apresentada é a mesma no qual foi baixada no site com a versão "Latest" anteriormente (Ex.: v0.34.0)
```
geckodriver --version
```
- Fechar esse cmder ou terminal


## :hammer_and_wrench: Desinstalar Ruby e/ou Rails que já foram instalados em algum outro momento
- Na ferramenta de pesquisa do Windows, informar "Adicionar ou remover programas" 
- Clicar na sugestão apresentada 
- Em "Aplicativos e recursos", no campo de busca, informar "Ruby" e/ou "Rails"
- Clicar no resultado apresentado
- Clicar no botão "Desinstalar" e prosseguir com as etapas de desinstalação
- Na janela do "Windows Explorer" acessar o diretório "C:", procurar e excluir a pasta "Ruby" e/ou "Rails"
- Acessar o diretório "C:\Users\usuario", procurar e excluir os arquivos ".gem" e ".bundle"


## :hammer_and_wrench: Ruby+Devkit versão 3.1.2-1 (x64) 
- Baixar o [Ruby+Devkit 3.1.2-1 (x64)](https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-3.1.2-1/rubyinstaller-devkit-3.1.2-1-x64.exe)
- Em "Select Components", marcar todas as opções caso ainda não estiverem marcadas
- Em "Completing the Ruby 3.1.2-1 ...", verificar se "Run 'ridk install' to set ip MSYS2 ..." está marcado por padrão e clicar em "Finish"

- No terminal aberto automaticamente, após algum tempo teclar "Enter"
- Após o término da instalação, teclar "Enter" novamente
- Fechar esse terminal

- Abrir um novo cmder ou outro terminal de preferência, informar o comando abaixo para confirmar se o ruby realmente foi instalado
```
ruby -v
```
- E verificar se foi retornada a mesma versão do ruby+devkit instalada anteriormente:
```
ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x64-mingw-ucrt]
```
- Fechar esse cmder ou terminal

## :hammer_and_wrench: Baixar, instalar e configurar o git
- Caso ainda não tenha o git baixado e instalado, acessar o site do [git](https://git-scm.com/download/win), baixar e instalar
- Caso ainda não tenha configurado o git, seguir os passos apresentados nesse link [Configure a ferramenta](https://training.github.com/downloads/pt_BR/github-git-cheat-sheet/#:~:text=Configure%20a%20ferramenta) e configurar


## :hammer_and_wrench: Clonar o projeto
- Abrir uma janela do "Windows Explorer"
- Acessar o diretório onde será clonado o projeto "testes-automatizados-web-front-serve-rest_ruby"
- Copiar esse diretório 
- Abrir um novo cmder
- Informar o comando abaixo para acessar onde será clonado o projeto
```
cd "<diretório copiado anteriormente>"
```
Ex.: 
```
cd "C:\Users\usuario\Desktop"
```
- Informar o comando abaixo para clonar este repositório via "HTTPS"

```
git clone https://github.com/AndressaKarla/testes-automatizados-web-front-serve-rest_ruby.git
```

- Ou informar o comando abaixo para clonar este repositório via "SSH"

```
git clone git@github.com:AndressaKarla/testes-automatizados-web-front-serve-rest_ruby.git
```


## :hammer_and_wrench: Instalar todas as dependências necessárias
- No cmder aberto anteriormente, informar o comando abaixo para acessar o projeto “testes-automatizados-web-front-serve-rest_ruby” clonado anteriormente
```
cd testes-automatizados-web-front-serve-rest_ruby
```
Ex.: 
```
C:\Users\usuario\Desktop\testes-automatizados-web-front-serve-rest_ruby
```
- Informar o comando abaixo para instalar todas as dependências necessárias do projeto 
```
bundle install
```

## :hammer_and_wrench: Instalar as extensões no Visual Studio Code (VS Code)
- Caso ainda não tenha o VS Code baixado e instalado, acessar o site do [Visual Studio Code](https://code.visualstudio.com/download), baixar e instalar com a opção "System Installer"
- Com o Visual Studio Code aberto, caso seja apresentado alguma mensagem de "Instalar pacote de idiomas ...", clicar no ícone de configurações > "Don't Show Again"
- Clicar na opção "Manage > Profiles > Create Profile"
- Em "Profile name", informar "Ruby"
- Clicar na opção "Create"
- Clicar na opção "Extensions", informar e instalar as extensões abaixo:
  - One Dark Pro
    - binaryify
      - Clicar na opção "One Dark Pro Darker" apresentada para habilitar a extensão
  - Material Icon Theme
    - Philipp Kief
      - Clicar na opção "Material Icon Theme" apresentada para habilitar a extensão
  - Ruby 
    - Peng Lv
  - VsCode Ruby 
    - Stafford Brunk
  - Cucumber 
    - Cucumber for Visual Studio Code
  - Cucumber (Gherkin) Full Support 
    - Alexander Krechik
  - Feature Syntax Highlight and Snippets (Cucumber/Gherkin)
    - Roland Orosz
  - Gherkin Indent 
    - Aravind Kumar
  - Snippets and Syntax Highlight for Gherkin (Cucumber) 
    - Euclidity
    
## :bookmark_tabs: Abrir o VS Code diretamente na pasta do projeto "testes-automatizados-web-front-serve-rest_ruby"
- No cmder aberto anteriormente, informar o comando abaixo para abrir o VS Code diretamente na pasta do projeto "testes-automatizados-web-front-serve-rest_ruby"
```
code .
```
- Aguardar o VS Code ser aberto
- Fechar esse cmder
- No VS Code aberto, caso seja apresentado "Do you trust the authors on the files in this folder?", marcar a opção "Trust the authors of all files in the parent folder ...."
	- Clicar no botão "Yes, I trust the authors ...."

## :hammer_and_wrench: Criar arquivos "login.json", "usuario.json", informando os dados com base nos arquivos "login.example.json", "usuario.example.json", etc
- No VS Code aberto anteriormente, acessar "features > support > fixtures"
- Criar o arquivo "login.json"
  - Informar os dados com base no arquivo ["login.example.json"](https://github.com/AndressaKarla/testes-automatizados-web-front-serve-rest_ruby/blob/main/features/support/fixtures/login.example.json)
  - Salvar o arquivo "login.json" com os dados informados anteriormente
- Criar o arquivo "usuario.json"
  - Informar os dados com base no arquivo ["usuario.example.json"](https://github.com/AndressaKarla/testes-automatizados-web-front-serve-rest_ruby/blob/main/features/support/fixtures/usuario.example.json)
  - Salvar o arquivo "usuario.json" com os dados informados anteriormente
  
---
# :dart: Executar testes em um ambiente de desenvolvimento e Gerar os resultados dos testes no computador

## :triangular_flag_on_post: Executar os testes automatizados web no navegador chrome na interface gráfica e Gerar os resultados dos testes no computador
- Abrir uma janela do "Windows Explorer"
- Acessar o diretório onde foi clonado o projeto “testes-automatizados-web-front-serve-rest_ruby”
- Copiar esse diretório 
- Abrir um novo cmder
- Informar o comando abaixo para acessar o projeto "testes-automatizados-web-front-serve-rest_ruby"
```
cd "<diretório copiado anteriormente>"
```
Ex.: 
```
cd "C:\Users\usuario\Desktop\testes-automatizados-web-front-serve-rest_ruby"
```
- Informar o comando abaixo para executar cada feature e/ou cada cenário individualmente do projeto:
```
bundle exec cucumber -t @nome_tag
```
Ex. 1:
```
bundle exec cucumber -t @login_entrar
```
Ex. 2: 
```
bundle exec cucumber -t @pesquisar_produto_nao_cadastrado
```

- Ou informar o comando abaixo para executar todas as features e/ou cenários do projeto:
```
bundle exec cucumber
```

## :triangular_flag_on_post: Ou executar os testes automatizados web no navegador chrome em modo headless (2° plano) e Gerar os resultados dos testes no computador
- No cmder aberto anteriormente, informar o comando abaixo para executar todas as features e/ou cenários do projeto em modo headless (2° plano - mesmo modo e comando que é utilizado no "Passo 4" do job "ruby-chrome" da "Pipeline Testes Automatizados Web Front ServeRest Ruby" em ".github > workflows > [workflow-testes-automatizados-web-front-serve-rest-ruby.yml](https://github.com/AndressaKarla/testes-automatizados-web-front-serve-rest_ruby/blob/main/.github/workflows/workflow-testes-automatizados-web-front-serve-rest-ruby.yml)" no GitHub Actions) e Gerar os resultados dos testes no computador:
```
bundle exec cucumber -p ci
```

## :triangular_flag_on_post: Executar os testes automatizados web no navegador firefox na interface gráfica e Gerar os resultados dos testes no computador
- No cmder aberto anteriormente, informar o comando abaixo para executar cada feature e/ou cada cenário individualmente do projeto:
```
bundle exec cucumber -p ff -t @nome_tag
```
Ex. 1:
```
bundle exec cucumber -p ff -t @login_entrar
```
Ex. 2: 
```
bundle exec cucumber -p ff -t @pesquisar_produto_nao_cadastrado
```

- Ou informar o comando abaixo para executar todas as features e/ou cenários do projeto:
```
bundle exec cucumber -p ff
```

## :triangular_flag_on_post: Ou executar os testes automatizados web no navegador firefox em modo headless (2° plano) e Gerar os resultados dos testes no computador
- No cmder aberto anteriormente, informar o comando abaixo para executar todas as features e/ou cenários do projeto em modo headless (2° plano - mesmo modo e comando que é utilizado no "Passo 4" do job "ruby-firefox" da "Pipeline Testes Automatizados Web Front ServeRest Ruby" em ".github > workflows > [workflow-testes-automatizados-web-front-serve-rest-ruby.yml](https://github.com/AndressaKarla/testes-automatizados-web-front-serve-rest_ruby/blob/main/.github/workflows/workflow-testes-automatizados-web-front-serve-rest-ruby.yml)" no GitHub Actions) e Gerar os resultados dos testes no computador:
```
bundle exec cucumber -p ci_ff
```

---
# Verificar os resultados das execuções dos testes automatizados web no computador :female_detective:

## :bookmark_tabs: Abrir o VS Code diretamente na pasta do projeto "testes-automatizados-web-front-serve-rest_ruby"
- No cmder aberto anteriormente, informar o comando abaixo para abrir o VS Code diretamente na pasta do projeto "testes-automatizados-web-front-serve-rest_ruby"
```
code .
```
- No VS Code aberto, caso seja apresentado "Do you trust the authors on the files in this folder?", marcar a opção "Trust the authors of all files in the parent folder ...."
	- Clicar no botão "Yes, I trust the authors ...."


## :bookmark_tabs: Screenshots no computador

## :heavy_check_mark: Em caso de sucesso dos testes, verificar os screenshots da pasta "testes_passaram"
- No VS Code aberto anteriormente, acessar "relatorios > screenshots > testes_passaram > dd_mm_aaaa" 
```
- nome_cenario1-dd_mm_aaaa-hh1_mm1_ss1.png
  . . .
- nome_cenariox-dd_mm_aaaa-hhx_mmx_ssx.png
```  
  
Ex.: relatorios > screenshots > testes_passaram > 10_11_2023 
```
- validar_cadastro_administrador-10_11_2023-03_19_10.png
. . .
- validar_pesquisar_produtos_-_produto_não_cadastrado-10_11_2023-03_19_29.png
```

## :x: Em caso de falha dos testes, verificar os screenshots da pasta "testes_falharam"
- No VS Code aberto anteriormente, acessar "relatorios > screenshots > testes_falharam > dd_mm_aaaa" 
```
- nome_cenario1-dd_mm_aaaa-hh1_mm1_ss1.png
  . . .
- nome_cenariox-dd_mm_aaaa-hhx_mmx_ssx.png
```  

Ex.: relatorios > screenshots > testes_falharam > 10_11_2023
```
- validar_cadastro_administrador-10_11_2023-03_47_21.png
. . .
- validar_pesquisar_produtos_-_produto_não_cadastrado-10_11_2023-03_47_40.png
``` 


## :bookmark_tabs: Relatório html no computador
- No VS Code aberto anteriormente, acessar "relatorios > relatorio-web-front-serve-rest-ruby.html" 
- Clicar com botão direito do mouse sob o arquivo "relatorio-web-front-serve-rest-ruby.html" > "Reveal in File Explorer" 
- Na janela do "Windows Explorer" aberta automaticamente, clicar 2 vezes sob o arquivo "relatorio-web-front-serve-rest-ruby.html" para ser aberto e visualizado no navegador padrão


---
### Feito com ❤️ por Andressa Karla :wave: 

### [![Medium](https://img.shields.io/badge/-Medium-595D60?style=plastic&logo=Medium&logoColor=white&link=https://medium.com/@andressakarla)](https://medium.com/@andressakarla) [![Linkedin](https://img.shields.io/badge/-LinkedIn-595D60?style=plastic&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/andressakarla//)](https://www.linkedin.com/in/andressakarla/)

---
