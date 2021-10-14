Rails.application.routes.draw do

  resources :books
  root :to => 'homes#top'
  post 'books' => 'books#index'
  get 'books#index' => 'books#show'

  
end
