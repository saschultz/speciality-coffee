Rails.application.routes.draw do
  root :to => 'products#index'
  resources :products do
    get 'all'
    resources :reviews
  end
end
