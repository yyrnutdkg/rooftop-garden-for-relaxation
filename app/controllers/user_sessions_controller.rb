class UserSessionsController < ApplicationController
  def new; end

  def create
    @user = login(params[:email], params[:password])

    if @user
      redirect_to root_path, notice: t('defaults.login_success')
    else
      flash.now[:danger] = t('defaults.login_failure')
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path, notice: t('defaults.logout_success')
  end
end
