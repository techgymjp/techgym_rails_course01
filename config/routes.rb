Rails.application.routes.draw do
  root "contacts#new"
  resources :contacts, only: [:new, :create] do
    get 'thanks', on: :collection
  end
  namespace :admin do
    resources :contacts do
      post 'change_status', on: :member
    end
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
