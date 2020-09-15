Rails.application.routes.draw do
  resources :users
  resources :posts, except: :index
  get 'blog', action: :index, controller: :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
