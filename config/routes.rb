Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: "registrations"}
  
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/:page" => "pages#show"

  root "pages#index"
end
