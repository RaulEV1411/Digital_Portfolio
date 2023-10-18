Rails.application.routes.draw do
  resources :skills
  resources :social_links
  resources :skill_types
  resources :technologies
  resources :user_types
  resources :projects
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
