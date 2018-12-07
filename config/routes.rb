Rails.application.routes.draw do
  resources :animals, only:[:index, :show, :edit, :update, :destroy]
  resources :habitats, only:[:show]
end
