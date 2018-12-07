Rails.application.routes.draw do
  resources :habitats, only: [:show]
  resources :animals, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  patch 'animals/:id/endanger', to: 'animals#endanger', as: 'endanger'
end
