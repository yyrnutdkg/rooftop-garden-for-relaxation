Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:'static_pages#top'
  get 'search_detail', to: 'static_pages#detail'
  get 'about', to: 'static_pages#about'
  get 'privacy', to: 'static_pages#privacy'
  get 'tos', to: 'static_pages#tos'

  resources :users, only: %i[new create]
  get '/login', to: 'user_sessions#new'
  post '/login', to: 'user_sessions#create'
  delete '/logout', to: 'user_sessions#destroy'

  resources :places, only: %i[index show] do
    resources :posts, only: %i[create edit update destroy]
  end
  resources :bookmarks, only: %i[create destroy]
  resources :static_pages, only: %i[show]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resource :profile, only: [:show, :edit, :update]

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
