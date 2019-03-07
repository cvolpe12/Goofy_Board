Rails.application.routes.draw do
  # resources :scores
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users do
        resources :scores
      end
    end
  end

  # namespace :api do
  #   namespace :v1 do
  #     resources :scores, only: [:new, :create, :index]
  #   end
  # end

  # post '/newuserandscore', to: => 'users#new_user_and_score'
end
