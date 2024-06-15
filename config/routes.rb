Rails.application.routes.draw do
  get 'comments/create'
  get "/users" => "users#index"
  get "/users/:username" => "users#show"
  post "/users" => "users#create"
  post "/users/:id" => "users#update"

  get "/photos" => "photos#index"
  get "/photos/:id" => "photos#show"
  post "/photos" => "photos#create"
  post "/photos/:id" => "photos#update"
  get "/photos_delete/:id" => "photos#destroy"

  post "/comments" => "comments#create"
end
