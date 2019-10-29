Rails.application.routes.draw do 
  namespace :api do
    get '/activities' => 'activities#index'
    post '/activities' => 'activities#create'
    get '/activities/:id' => 'activities#show'
    patch '/activities/:id' => 'activities#update'
    delete '/activities/:id' => 'activities#destroy'


    get '/markers' => 'markers#index'
    post '/markers' => 'markers#create'
    get '/markers/:id' => 'markers#show'
    patch '/markers/:id' => 'markers#update'
    delete '/markers/:id' => 'markers#destroy'


    get '/users' => 'users#index'
    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'
    patch '/users/:id' => 'users#update'
    delete '/users/:id' => 'users#destroy'


    post "/sessions" => "sessions#create"



  end
end
