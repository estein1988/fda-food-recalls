Rails.application.routes.draw do
  resources :recalls
  get 'state', to: 'recalls#filterByState'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
