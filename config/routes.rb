Servico::Application.routes.draw do
  devise_for :admins

  mount RailsAdmin::Engine => '/_admin', :as => 'rails_admin'
  
  resources :places
  resources :events
end
