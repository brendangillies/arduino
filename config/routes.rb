Rails.application.routes.draw do 
  
  namespace :api do
    root 'temperatures#index'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 
    resources :temperatures 
  end
end
