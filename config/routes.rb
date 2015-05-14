Rails.application.routes.draw do

	get '/countries' => 'countries#index'

  namespace :api do
    namespace :v1 do

      get '/countries' => 'countries#index'
      get '/countries/:id' => 'countries#show', :as => :country
      post '/countries' => 'countries#create'
    end
  end  
end
