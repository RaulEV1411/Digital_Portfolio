Rails.application.routes.draw do
  devise_for :users
  
  resources :skills
  resources :social_links
  resources :skill_types
  resources :technologies
  resources :user_types
  resources :projects
  resources :users

  devise_scope :user do
    get "/about/sign_out", as: "sign_out", to: "devise/sessions#destroy"
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "about#index"

end
    