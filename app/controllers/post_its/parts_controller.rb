class PostIts::PartsController < ApplicationController
  before_action :set_parent, only: [:index, :new, :create]
  before_action :set_parts,  only: [:index, :new]

  def index
  end

  def new
    @part = PostIt.new
  end

  def create
    @part = @parent.children.new(part_params)
    if @part.save
      flash[:notice] = "子post-itを作成しました"
      redirect_to("/post_its/parts/#{@parent.id}")
    else
      render("/post_its/parts/#{@parent.id}/new")
    end
  end  

  private
    def set_parts
      @parts = PostIt.where(parent_id: @parent.id)
    end

    def set_parent
      @parent = PostIt.find(params[:id])
    end

    def part_params
      params.require(:post_it).permit(:memo, :status, :user_id)
    end
end
