Rails.application.routes.draw do
  get 'stock/search'

  get 'users/my_portfolio'

  root 'welcome#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'my_portfolio', to: 'users#my_portfolio'

  get 'search_stocks', to: 'stock#search'
  
end
