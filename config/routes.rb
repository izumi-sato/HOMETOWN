Rails.application.routes.draw do
  devise_for :users
  resources :ivents
  root 'ivents#index'
  get 'ivents/:id' => 'ivents#show'
    delete  'ivents/:id'  => 'ivents#destroy'
    patch   'ivents/:id'  => 'ivents#update'
    get   'ivents/:id/edit'  => 'ivents#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
