Rails.application.routes.draw do
  
  root "pages#home"
  
  get '/home', to: "pages#home"
  resources :recepies
  resources :chefs
  
  get'login' , to: "login#new"
  post'login' , to: "login#create"
  get'logout' , to: "login#destroy"
  
end
