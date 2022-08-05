Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to:'static_pages#top'
  get 'search_detail', to: 'static_pages#detail'

  resources :places, only: %i[index show]
  resources :static_pages, only: %i[show]

end
