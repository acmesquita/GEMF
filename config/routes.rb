Rails.application.routes.draw do
  devise_for :usuarios, :controllers => { registrations: 'registrations' }
  resources :usuarios
  resources :participantes
  resources :encontros
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "encontros#index"
end
