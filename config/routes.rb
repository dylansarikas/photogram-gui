Rails.application.routes.draw do
  get "/users" => "users#index"
  get "/users/:username" => "users#show"

  get "/photos" => "photos#index"
  get "/photos/:id" => "photos#show"
end
