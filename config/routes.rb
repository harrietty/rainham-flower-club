Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  get 'about', to: 'about#index'

  get 'gallery', to: 'gallery#index'

  get 'gallery/:id', to: 'gallery#show'
end
