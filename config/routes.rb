Rails.application.routes.draw do

  root 'welcome#index'

  get '/how_it_works', to: 'welcome#how', as: 'how_it_works'
  get '/about', to: 'welcome#about', as: 'about'
  get '/contact', to: 'welcome#contact', as: 'contact'
end
