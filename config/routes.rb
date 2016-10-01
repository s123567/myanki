Rails.application.routes.draw do
  root to: 'pages#home'
  get '/test', to: 'cards#test'
  resources :cards
  get 'tags/:tag', to: 'cards#index', as: :tag
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
