Rails.application.routes.draw do
  namespace :api do
    get "speaker/:id" => 'speaker#id'
  end  
end
