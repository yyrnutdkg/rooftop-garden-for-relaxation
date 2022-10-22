class PostsController < ApplicationController
  before_action :require_login

  def create
    @post = Post.new(post_params)
    @post.save
    current_user.own_post(@post)
  end

  def destroy
    @post = current_user.posts.find_by(id: params[:id])
    current_user.delete_post(@post)
    @post.destroy!
  end

  private

  def post_params
    params.require(:post).permit(:title, :description).merge(place_id: params[:place_id])
  end
end
