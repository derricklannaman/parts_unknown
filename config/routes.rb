Rails.application.routes.draw do


  get 'meals/index'

  get 'meals/show'

# Visitor accessible pages
  root 'welcome#index'
  get '/how_it_works',  to: 'welcome#how',      as: 'how_it_works'
  get '/about',         to: 'welcome#about',    as: 'about'
  get '/contact',       to: 'welcome#contact',  as: 'contact'


  resources :destinations, only: [:index, :show]

  resources :meals, only: [:show]
end
