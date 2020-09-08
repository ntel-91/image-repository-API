Rails.application.routes.draw do
    namespace :api do
		namespace :v1 do
            resources :users
            resources :items
            resources :users do
                resources :items
              end

            patch "/users/:user_id/unlock", to: 'items#unlock'
            delete "/removeitems", to: 'items#remove'
            post "/login", to: 'auth#login'
            get "/auto_login", to: 'auth#auto_login'
        end
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end