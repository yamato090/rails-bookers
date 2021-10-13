Rails.application.routes.draw do

  resources :books
  root :to => 'homes#top'
  post 'books' => 'books#index'
  
end
