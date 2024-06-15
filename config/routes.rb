Rails.application.routes.draw do
  get "/users" => "users#index"
  get "/users/:username" => "users#show"
  post "/users" => "users#create"
  post "/users/:id" => "users#update"

  get "/photos" => "photos#index"
  get "/photos/:id" => "photos#show"
  post "/photos" => "photos#create"
end
