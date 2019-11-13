Rails.application.routes.draw do

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end


#get 'restaurants/:id/reviews/new', to: 'reviews#new', as: :review
  #post 'restaurants/:id/reviews', to: 'reviews#create'

  #get 'restaurants', to: 'restaurants#index'

  #get 'restaurants/new', to: 'restaurants#new'
  #post 'restaurants', to: 'restaurants#create'

  #get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
