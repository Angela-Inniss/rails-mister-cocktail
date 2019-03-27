Rails.application.routes.draw do
  root to: 'pages#home'
      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :create, :new, :edit, :update,:destroy] do
    resources :doses, only: [:create, :new, :edit, :update]
  end
  resources :doses, only: [:destroy]
end
