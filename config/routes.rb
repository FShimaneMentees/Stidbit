Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup' => 'users#new'
  post '/users/create'
  get '/login' => 'sessions#login_form'
  post '/login' => 'sessions#login'
  post '/logout' => 'sessions#logout'

  get '/' => 'tidbits#index'
  get '/new' => 'tidbits#new'
  post '/create' => 'tidbits#create'
  get '/show/:id' => 'tidbits#show'

  post '/likes/:tidbit_id/create' => 'likes#create'
  post '/likes/:tidbit_id/destroy' => 'likes#destroy'

  post '/comments/:tidbit_id/create' => 'comments#create'
end
