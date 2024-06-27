Rails.application.routes.draw do
  
  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"

  #employee routes
  devise_for :employees
  namespace :employee do
    resources :profile
    resources :leave_applications
    resources :emp_appraisals
  end
  get "employee", to: "employee#index"
  devise_scope :employee do
    get "employees/sign_out" => "devise/sessions#destroy"
  end

  #Admins routes
  devise_for :admins
  get "admin" => "admin#index"
  namespace :admin do
    resources :leave_types
    resources :employees
    resources :jobs
    resources :departments
    resources :emp_appraisals
    resources :job_applications do
      member do 
        patch :shortlist
        patch :cancel
      end
    end
  end
  authenticated :admin_user do
      root to: "admin#index", as: :admin_root
  end
  devise_scope :admin do
    get "admins/sign_out" => "devise/sessions#destroy"
  end
 

  devise_for :users
  get "job_applications/new" => "job_applications#new"
  resources :home
  resources :jobs
  resources :shortlist
  resources :job_applications, only: %i[new, create]

end
