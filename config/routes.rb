Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cards
  get 'tags/:tag', to: 'cards#index', as: :tag
  get 'tests/:tag', to: 'cards#test_tag', as: :test_tag
  get 'test/:filter', to: 'cards#test_frequence', as: :test_frequence
  get 'test_index', to: 'cards#test_index', as: :test_index


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
