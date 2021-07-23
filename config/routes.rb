Rails.application.routes.draw do
  root to: 'students#index'
  devise_for :advisors, controllers: { omniauth_callbacks: 'advisors/omniauth_callbacks' }, skip: [:sessions]
  as :advisor do
    get 'signin', to: 'devise/sessions#new', as: :new_advisor_session
    post 'signin', to: 'devise/sessions#create', as: :advisor_session
    delete 'signout', to: 'devise/sessions#destroy', as: :destroy_advisor_session
  end
  # authenticated :advisor do
  #   root to: ''
  # end
  resources :courses
  resources :advisors
  resources :students do
    resources :academic_plans
  end

  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
