class UserSessionsController < ApplicationController
  def new; end

  def create
    @user = login(params[:email], params[:password])

    if @user
      redirect_to root_path, success: 'ログイン成功'
    else
      flash.now[:danger] = 'ログイン失敗'
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path, success: 'ログアウト成功'
  end
end
