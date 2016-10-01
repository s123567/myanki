Rails.application.routes.draw do
  root to: 'cards#index'
  get '/test', to: 'cards#test'
  resources :cards
  get 'tags/:tag', to: 'cards#index', as: :tag
  
  get 'tests/:tag', to: 'cards#test', as: :test_tag
  get '/test_index', to: 'cards#test_index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
