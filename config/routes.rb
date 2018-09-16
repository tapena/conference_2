Rails.application.routes.draw do
  namespace :api do
    get "/speakers/:id" => 'speakers#show'
    get "/meetings" => 'meetings#index'
  end  
end
