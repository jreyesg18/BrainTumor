Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # config/routes.rb

  Rails.application.routes.draw do
    resources :patients
    root 'patients#index'
  end

end
