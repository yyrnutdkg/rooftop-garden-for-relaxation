Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to:'static_pages#top'
  get 'search_detail', to: 'static_pages#detail'

  resources :users, only: %i[new create]
  get '/login', to: 'user_sessions#new'
  post '/login', to: 'user_sessions#create'
  delete '/logout', to: 'user_sessions#destroy'

  resources :places, only: %i[index show] do
    resources :posts, only: %i[create destroy]
  end
  resources :static_pages, only: %i[show]

end
