Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  resources :albums
  resources :events
  resources :contents
  resources :series
  resources :units do
    collection {post :import}
  end
  resources :characters do
    collection {post :import}
  end
  resources :songs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
