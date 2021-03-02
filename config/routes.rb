Rails.application.routes.draw do
  root 'articles#index'
  resources :articles
  get '/articles' , to: 'articles#index'
  get '/articles/:id', to: 'articles#show'
  get '/articles/new',to: 'articles#new'
  post '/articles/new', to: 'articles#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
