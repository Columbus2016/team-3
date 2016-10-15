class SearchesController < ActionController::Base
  resources :index, :only => [:index]
  def index
  end  
end
