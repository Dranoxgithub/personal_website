Rails.application.routes.draw do
  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/:page" => "pages#show"

  root "pages#index"
end
