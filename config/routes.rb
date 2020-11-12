Rails.application.routes.draw do
  root to: 'posts#index'
  devise_for :users do
    get "/login" => "devise/sessions#new"
    delete "/login" => "devise/sessions#destroy"
    get "/register" => "devise/registrations#new"
  end
  resources :posts, only: [:new, :create, :index]
end
