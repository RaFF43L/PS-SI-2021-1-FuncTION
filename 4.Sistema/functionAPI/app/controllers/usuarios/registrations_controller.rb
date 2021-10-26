class Usuarios::RegistrationsController < Devise::RegistrationsController
    respond_to :json
  
    private
  
    def respond_with(resource, _opts = {})
      register_success && return if resource.persisted?
  
      register_failed
    end
  
    def register_success
      render json: { message: 'Cadastrado com sucesso!' }
    end
  
    def register_failed
      render json: { message: "Ocorreu um erro, verifique os parâmetros e tente novamente." }
    end
  end