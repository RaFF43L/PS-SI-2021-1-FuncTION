class Usuarios::SessionsController < Devise::SessionsController
    respond_to :json
  
    private
  
    def respond_with(resource, _opts = {})
      render json: { message: 'Você está autenticado!' }, status: :ok
    end
  
    def respond_to_on_destroy
      log_out_success && return if current_user
  
      log_out_failure
    end
  
    def log_out_success
      render json: { message: "Você saiu do sistema!" }, status: :ok
    end
  
    def log_out_failure
      render json: { message: "Hmm algo de errado não está certo."}, status: :unauthorized
    end
  end