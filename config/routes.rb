Rails.application.routes.draw do

  devise_for :admins
  devise_for :users
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/history'

  get 'pages/how'

  get 'pages/terms'

resources :manufacturers, :cars, :bikes, :modells, :bodies, :engines, :fuels, :fuel_efficiencies, :speeds, :prices
  root "pages#home"
end
