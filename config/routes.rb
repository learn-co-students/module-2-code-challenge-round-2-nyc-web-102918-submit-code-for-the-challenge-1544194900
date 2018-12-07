Rails.application.routes.draw do
  resources :habitats, only:[:show]
  resources :animals#, only:[:index, :show, :new, :create, :edit, :update, :delete]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
