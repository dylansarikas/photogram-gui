Rails.application.routes.draw do
  get 'users/index'
  get "/users" => "users#index"

end
