class SearchController < ApplicationController
  def get_all_users
    @all_users = User.all
    render :json => @all_users.to_json, :callback => params['callback']
    # render :jsonp => @all_users
  end
end
