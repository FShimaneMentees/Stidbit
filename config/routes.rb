Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup' => 'users#new'
  post '/users/create'
  get '/login' => 'users#login_form'
  post '/login' => 'users#login'
  post '/logout' => 'users#logout'

  get '/' => 'tidbits#index'
  get '/new' => 'tidbits#new'
  post '/create' => 'tidbits#create'
  get '/show/:id' => 'tidbits#show'
end
