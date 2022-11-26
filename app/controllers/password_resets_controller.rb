class PasswordResetsController < ApplicationController
  def new; end

  def create
    @user = User.find_by_email(params[:email])

    @user&.deliver_reset_password_instructions!

    redirect_to login_path, success: t( '.password_reset')
  end

  def edit
    @token = params[:id]
    @user = User.load_from_reset_password_token(params[:id])
    not_authenticated if @user.blank?
  end

  def update
    @token = params[:id]
    @user = User.load_from_reset_password_token(params[:id])

    return not_authenticated if @user.blank?

    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.change_password(params[:user][:password])
      redirect_to login_path, success: t('.password_changed')
    else
      flash.now[:danger] = t('defaults.message.not_updated', item: User.model_name.human)
      render :edit
    end
  end
end
