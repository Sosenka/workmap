Rails.application.routes.draw do

  devise_for :admins
    devise_for :users, path: '', path_names: { sign_in: 'logowanie', sign_out: 'wyloguj', sign_up: 'rejestracja'}
  get 'workmap/index'
  get 'ogloszenie', to: 'workmap#ogloszenie'
  get 'login', to: 'devise/session#new'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'workmap#index'
  match ':controller(/:action(/:id))', via: [:post, :get]


end
