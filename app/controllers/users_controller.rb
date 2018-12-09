class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy, :edit, :update]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "新規登録が完了しました"
      redirect_to(users_path)
    else
      render(new_user_path)
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "変更を保存しました"
      redirect_to(users_path)
    else
      render(new_user_path)
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: '書籍情報を削除しました。' }
      format.json { head :no_content }
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
