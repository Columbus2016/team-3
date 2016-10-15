Rails.application.routes.draw do
  get 'search/get_all_users'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
