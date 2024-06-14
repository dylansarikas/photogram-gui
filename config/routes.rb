Rails.application.routes.draw do
  get 'photos/index'
  get "/users" => "users#index"
  get "/users/:username" => "users#show"

  get "/photos" => "photos#index"
end
