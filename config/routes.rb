Rails.application.routes.draw do
  devise_for :users
  root 'results#index'
  resources :results do
    collection do
      get :control
    end
  end
end
