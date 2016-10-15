Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  as :user do
    get '/' => 'devise/registrations#new'
  end
  mount ActionCable.server => "/cable" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
