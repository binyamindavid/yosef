Rails.application.routes.draw do
   resources :accounts do
        member do
          put :suspend
        end
        collection do
           get :listing
        end
   end

  devise_for :users
  get 'hub/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "hello#world"

end
