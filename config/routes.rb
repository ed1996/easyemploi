Rails.application.routes.draw do
  devise_for :users, :path=>'',
             :path_names=>{:sign_in=>'login', :sign_out=>'logout', :edit=>'profile'},
             :controller=>{:registrations=>'registrations',
                            :confirmations=>'confirmations'
             }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  #
  #


  root 'pages#home'
  resources :users, only: [:show]
  resources :emplois
  resources :subscribers


end
