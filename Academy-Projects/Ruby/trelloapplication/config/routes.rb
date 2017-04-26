Rails.application.routes.draw do
  resources :boards
    resources :statuses 
      resources :cards
    

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
