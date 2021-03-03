Rails.application.routes.draw do
  root 'articles#index'
  resources :articles
  post '/articles/new' , to: 'articles#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
