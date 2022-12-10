Rails.application.routes.draw do
  get 'users/index'
  get 'schedule/hello'
  get 'schedule/call'
  get 'users/new'
  post 'users/new' => 'users#create' #ここ追記、間違えてる可能性１００
  get 'users/:id' => 'users#show'
  # get 'users' => 'users#show'
  resources :users
  # post 'users/new' , to: 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "posts/new" => "posts#index"
end
