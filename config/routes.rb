Rails.application.routes.draw do
  get '/' => 'tidbits#index'
  get '/new' => 'tidbits#new'
  post '/create' => 'tidbits#create'
  get '/show/:id' => 'tidbits#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
