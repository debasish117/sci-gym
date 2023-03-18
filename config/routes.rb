Rails.application.routes.draw do
  devise_for :admins
  resources :clients do
    collection do
      get 'common'
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboards#index"

end
