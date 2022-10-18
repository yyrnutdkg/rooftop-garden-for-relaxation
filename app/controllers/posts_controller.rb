class PostsController < ApplicationController
  def create
    @comment = current_user.posts.build(post_params)
    @comment.save
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end
end
