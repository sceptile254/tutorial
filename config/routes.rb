Rails.application.routes.draw do
  resources :weight_histories #この1行でCRUDのルーティングをすべて作成している
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'top#index' #url'/'を要求されたら、topコントローラーのindexアクションを起こす

  get '/users', to: 'users#index', as: "users"
  # /users/1
  # /users/2 という感じ
  get '/users/:id', to: 'users#show', as: "user"
  #as: "user" ... ルーティングに対して名前をつける
end
