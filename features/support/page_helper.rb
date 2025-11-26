Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each {|file| require file}

module Pages
    def login
        @login ||= Login.new
    end

    def cadastro
        @cadastro ||= Cadastro.new
    end

    def home
        @home ||= Home.new
    end

    def home_serverest_store
        @home_serverest_store ||= HomeServerestStore.new
    end

    def cadastro_usuarios
        @cadastro_usuarios ||= CadastroUsuarios.new
    end

    def lista_usuarios
        @lista_usuarios ||= ListaUsuarios.new
    end
end
