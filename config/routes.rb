Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    delete 'sign_out', :to => 'devise/sessions#destroy'
    get '/login' => 'devise/sessions#new'
    get '/register' => 'devise/registrations#new'
    get '/account_update' => 'devise/registrations#edit'
  end

  root 'pages#index'
end
