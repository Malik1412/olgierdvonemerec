Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :contents, only: [:create, :show]
  # get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  
  root to: "landing_pages#index"

  resources :users
  resources :images

  post '/login' => 'landing_pages#login', as: 'login'	
  post '/logout' => 'landing_pages#logout', as: 'logout'

end
