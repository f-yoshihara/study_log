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
      flash[:notice] = "post-itを作成しました"
      redirect_to(post_its_kanban_path)
    else
      render(new_post_it_path)
    end
  end  

  def edit
  end

  def update
    params_hash = post_it_params.to_h

    case params_hash[:status]
    when 'in_progress'
      params_hash[:in_progress_from] = DateTime.now
    when 'done'
      params_hash[:done_at]          = DateTime.now
    when 'deleted'
      params_hash[:deleted_at]       = DateTime.now
    end

    if @post_it.update(params_hash)
      flash[:notice] = "変更を保存しました"
      redirect_to(post_its_kanban_path)
    else
      render(new_post_it_path)
    end
  end

  def destroy
    @post_it.destroy
    respond_to do |format|
      format.html { redirect_to post_its_kanban_url, notice: 'ポストイットを捨てました。' }
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
