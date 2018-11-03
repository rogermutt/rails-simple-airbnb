Rails.application.routes.draw do
  resources :flats
  get 'top', to: 'flats#top', as: 'top'
end
