Rails.application.routes.draw do

  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/history'

  get 'pages/how'

  get 'pages/terms'

resources :manufacturers, :cars, :bikes, :modells, :bodies, :engines, :fuels, :fuel_efficiencies, :speeds, :prices
  root "pages#home"
end
