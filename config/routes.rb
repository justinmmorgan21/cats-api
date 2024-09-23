Rails.application.routes.draw do
  get "/cats" => "cats#index"
end
