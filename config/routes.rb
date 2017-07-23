Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :games
  resources :users do
    resources :game_stats
    get 'create_game'
  end

  authenticated :user do
    root :to => 'users#index'
  end

  devise_scope :user do
    root :to => 'devise/sessions#new'
  end

end
