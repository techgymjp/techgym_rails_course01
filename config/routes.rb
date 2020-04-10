Rails.application.routes.draw do
  resources :contacts, only: [:new, :create] do
    get 'thanks', on: :collection
  end
  namespace :admin do
    resources :contacts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
