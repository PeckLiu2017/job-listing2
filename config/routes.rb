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

  resources :jobs do
    collection do
      get :search
    end
      resources :resumes
  end
end
