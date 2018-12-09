class AuthController < ApplicationController
  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      reset_session
      session[:user] = @user.id
      redirect_to '/'
    else
      flash_reset
      render 'user'
    end
  end

  def destroy
    reset_session
    redirect_to '/'
  end
end
