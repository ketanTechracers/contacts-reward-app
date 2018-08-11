Rails.application.routes.draw do
  get 'home/index'
  resources :contacts do
  	resources :purchases
  end

  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
