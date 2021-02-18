Rails.application.routes.draw do
  get 'doses/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: %I[index show new create] do
    resources :doses, only: %I[new create]
  end
  resources :doses, only: :destroy
end
