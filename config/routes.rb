Rails.application.routes.draw do
  get "/cats" => "cats#index"
  post "/cats" => "cats#create"
  patch "/cats/:id" => "cats#update"
  delete "/cats/:id" => "cats#destroy"
end
