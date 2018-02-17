Rails.application.routes.draw do
  get 'tidbits/index'

  get '/new' => 'tidbits#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
