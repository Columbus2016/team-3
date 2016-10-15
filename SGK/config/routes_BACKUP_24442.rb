Rails.application.routes.draw do
<<<<<<< HEAD
  get 'search/get_all_users'

=======
  get 'searches', to: 'searches#index'
>>>>>>> ff7b25db02d1f53f6f9ea29d5e710570f3da2fd8
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
