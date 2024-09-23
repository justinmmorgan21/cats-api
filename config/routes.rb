Rails.application.routes.draw do
  get "/cats" => "cats#index"
  post "/cats" => "cats#create"
end
