class SearchController < ApplicationController
  def get_all_users
    @all_users = User.all
    render :json => @all_users
  end
end
