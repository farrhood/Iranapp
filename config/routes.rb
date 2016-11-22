Rails.application.routes.draw do
  resources :pins
  devise_for :users
  root 'pins#index'
  get 'about' => 'pages#about'
  mount Commontator::Engine => '/commontator'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
