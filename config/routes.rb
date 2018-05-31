Rails.application.routes.draw do
  resources :w2words
  resources :w1words
  resources :w0words
 get 'w0lookup', to: 'w0words#w0lookup'
  get 'w1lookup', to: 'w1words#w1lookup'
  get 'w2lookup', to: 'w2words#w2lookup'
  root :to => 'static_pages#crossroads'
   get 'home', to: 'static_pages#home'
   post 'whereto', to: 'static_pages#whereto'
   get 'crossroads', to: 'static_pages#crossroads'
   post 'crossroads', to: 'static_pages#crossroads'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
