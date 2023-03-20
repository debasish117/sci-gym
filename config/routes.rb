Rails.application.routes.draw do
  devise_for :admins
  resources :clients do
    resources :subscription_plans do
      member do
        put 'cancel_subscription'
      end
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboards#index"

end
