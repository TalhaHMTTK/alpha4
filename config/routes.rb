Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
 # delete '/articles/:id', to: 'articles#destroy', as: 'delete_article'

  resources :articles
end


