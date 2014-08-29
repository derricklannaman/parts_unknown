Rails.application.routes.draw do

  resources :carts

# Visitor accessible pages
  root 'welcome#index'
  get '/how_it_works',  to: 'welcome#how',      as: 'how_it_works'
  get '/about',         to: 'welcome#about',    as: 'about'
  get '/contact',       to: 'welcome#contact',  as: 'contact'
  get '/faq',           to: 'welcome#faq',      as: 'faq'


  resources :destinations

  # post '/line_items', to: 'line_items#create'

  resources :line_items
  resources :meals, only: [:index, :show]
end
