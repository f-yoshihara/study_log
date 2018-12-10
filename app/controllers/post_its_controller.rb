class PostItsController < ApplicationController
  before_action :check_logined, only: :create
  before_action :set_post_it, only: [:show, :destroy, :edit, :update]

  def index
    @post_its = PostIt.all
  end

  def show
  end

  def new
    @post_it = PostIt.new
  end

  def create
    @post_it = PostIt.new(post_it_params)
    if @post_it.save
      flash[:notice] = "書籍を登録しました"
      redirect_to(post_its_path)
    else
      render(new_post_it_path)
    end
  end  

  def edit
  end

  def update
    if @post_it.update(post_it_params)
      flash[:notice] = "変更を保存しました"
      redirect_to(post_its_path)
    else
      render(new_post_it_path)
    end
  end

  def destroy
    @post_it.destroy
    respond_to do |format|
      format.html { redirect_to post_its_url, notice: 'ポストイットを捨てました。' }
      format.json { head :no_content }
    end
  end

  private
    def set_post_it
      @post_it = PostIt.find(params[:id])
    end

    def post_it_params
      params.require(:post_it).permit(:memo, :status)
    end
end
