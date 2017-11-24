Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, except: [:show, :update]
  end
  resources :doses, only: [:show]

  root to: 'cocktails#index'
end
