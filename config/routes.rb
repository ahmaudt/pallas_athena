Rails.application.routes.draw do
  resources :advisors
  resources :academic_plans
  resources :students do
    resources :academic_plans
  end
  resources :advisors do
    resources :students
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
