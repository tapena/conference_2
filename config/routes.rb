Rails.application.routes.draw do
  namespace :api do
    get "/id" => 'speaker#id'
  end  
end
