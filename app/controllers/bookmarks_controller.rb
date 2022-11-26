class BookmarksController < ApplicationController
  before_action :require_login

  def create
    @place = Place.find(params[:place_id])
    current_user.bookmark(@place)
  end

  def destroy
    @place = current_user.place_users.find(params[:id]).place
    current_user.unbookmark(@place)
  end
end
