Rails.application.routes.draw do
  devise_for :usuarios,
             controllers: {
                 sessions: 'usuarios/sessions',
                 registrations: 'usuarios/registrations'
             }

  namespace :api do
    namespace :v1 do
      resources :chamados
      resources :categorias
      resources :organizacaos
      resources :usuarios
      resources :departamentos
    end
  end
end