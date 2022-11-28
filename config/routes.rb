Rails.application.routes.draw do
  get 'user/profile'
  get 'home/index'
  get 'games/snake'
  get 'games/tetris'
  get 'games/breakout'
  get 'games/helicopter'
  get 'games/doodle_jump'
  get 'games/missile_command'
  get 'games/index'
  get 'user/store'
  put 'user/:id/update_score', to: 'home#update_score'
  put 'user/:id/update_current_avatar', to: 'home#update_current_avatar'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
