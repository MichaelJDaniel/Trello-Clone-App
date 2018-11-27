Rails.application.routes.draw do
  get 'cards/index'
  get 'cards/show'
  get 'cards/new'
  get 'cards/edit'
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  get 'lists/edit'
  get 'boards/index'
  get 'boards/show'
  get 'boards/new'
  get 'boards/edit'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
