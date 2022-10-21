class PostsController < ApplicationController
  before_action :require_login

  def create
    @comment = current_user.posts.build(post_params)
    @comment.save
  end

  def destroy
    @comment = current_user.posts.find_by(id: params[:id])
    @comment.destroy!
  end

  private

  def post_params
    params.require(:post).permit(:title, :description).merge(place_id: params[:place_id])
  end
end
