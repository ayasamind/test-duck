Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'aws_accounts#index'

  resources :aws_accounts do
    collection do
      get 'get_accounts'
    end
  end
end
