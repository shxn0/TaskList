Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "tasks#index"
  resources :tasks, except:[:show] do
    post :status, on: :member
  end

  get 'search', to: 'tasks#search'

end
