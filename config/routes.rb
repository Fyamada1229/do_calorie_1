Rails.application.routes.draw do
  devise_for :users
  root to: 'calories#index'
  resources :calories,  only: [:index, :new, :create, :show, :edit, :destroy, :update]
  resources :users, only: :show

  resources :users do
    get :calendar, on: :member
  end 
end
