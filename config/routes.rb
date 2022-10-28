Rails.application.routes.draw do
  get 'home/index'
  get 'games/snake'
  get 'games/tetris'
  get 'games/breakout'
  get 'games/doodle_jump'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
