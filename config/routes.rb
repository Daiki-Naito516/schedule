Rails.application.routes.draw do
# get  'users/new', to: 'users#new'
  resources :users
  # resources :schedules
  post 'users/new' , to: 'users#create'
  post 'users/:id/edit' , to: 'users#update'
  get 'users/:id/edit' , to: 'users#edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "posts/new" => "posts#index"
end
