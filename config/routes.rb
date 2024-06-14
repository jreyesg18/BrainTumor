

  Rails.application.routes.draw do

  get 'charts/index'
    resources :patients
    root 'patients#index'
  end


