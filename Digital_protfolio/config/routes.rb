Rails.application.routes.draw do
  root "about#index"
  resources :posts
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
  namespace :admin, path: '/admin' do
    resources :projects
    resources :skills
    resources :skills_types
    resources :social_links
    resources :tecnologies
    resources :users
    resources :users_types
  end
end
    