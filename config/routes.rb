Rails.application.routes.draw do
  devise_for :users, controllers: {
         registrations: 'users/registrations'
       }
       root 'welcomes#index'

  namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end
      resources :resumes
    end
  end

  namespace :account do
    resources :jobs
  end

  resources :jobs do
    collection do
      get :search
    end

    member do
      post :unfavorite
      post :favorite
    end
      resources :resumes
  end
end
