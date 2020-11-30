Rails.application.routes.draw do
  resources :save_recalls
  resources :users
  resources :recalls
  get 'state', to: 'recalls#filterByState'
  get 'recalling_firm', to: 'recalls#filterByCompany'
  get 'recall_number', to: 'recalls#filterByRecall'
end
