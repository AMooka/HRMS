Rails.application.routes.draw do
   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
    root "home#index"


  namespace :employee do
    resources :profile
    resources :leave_applications
    resources :emp_appraisals
    resources :appraisals
  end

  devise_for :users
  namespace :admin do
    resources :leave_types
    resources :employees
    resources :jobs
    resources :departments
    resources :job_applications do
      member do 
        patch :shortlist
        patch :cancel
      end
    end
  end

  get "employee", to: "employee#index"

  devise_for :admins
 

  authenticated :admin_user do
      root to: "admin#index", as: :admin_root
  end
  get "admin" => "admin#index"
  devise_scope :admin do
    get "admins/sign_out" => "devise/sessions#destroy"
  end

  resources :home
  resources :jobs
  resources :job_applications, only: %i[new, create]

  get "job_applications/new" => "job_applications#new"
  
end
