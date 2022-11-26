class PostsController < ApplicationController
  before_action :require_login

  def create
    @post = Post.new(post_params)
    if @post.save
      current_user.own_post(@post)
      redirect_to place_path(params[:place_id]), success: t('defaults.message.created', item: Post.model_name.human )
    else
      flash[:danger] =  t('defaults.message.not_created', item: Post.model_name.human )
      redirect_to place_path(params[:place_id])
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
    @place = Place.find_by(id: @post.place_id)
  end

  def update
    @post = Post.find_by(id: params[:id])
    if(@post.update(post_params))
      redirect_to place_path(params[:place_id]), success: t('defaults.message.updated', item: Post.model_name.human )
    else
      flash[:danger] = t('defaults.message.not_updated', item: Post.model_name.human )
      render :edit
    end
  end

  def destroy
    @post = current_user.posts.find_by(id: params[:id])
    current_user.delete_post(@post)
    @post.destroy!
    redirect_to place_path(params[:place_id]), success: t('defaults.message.deleted', item: Post.model_name.human )
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :post_type).merge(place_id: params[:place_id])
  end
end
