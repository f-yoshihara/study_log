class SnippetsController < ApplicationController
  before_action :check_logined
  before_action :set_snippet, only: [:edit, :update]

  def index
    @snippets = Snippet.where(user_id: @user)
  end

  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new(snippet_params)
    if @snippet.save
      flash[:notice] = "スニペットを登録しました"
      redirect_to(snippets_path)
    else
      render(new_snippet_path)
    end
  end

  def update
    if @snippet.update(snippet_params)
      flash[:notice] = "変更を保存しました"
      redirect_to(snippets_path)
    else
      render(new_snippet_path)
    end
  end

  def edit
  end

  private
    def set_snippet
      @snippet = Snippet.find(params[:id])
    end

    def snippet_params
      params.require(:snippet).permit(:code, :category, :user_id)
    end
end
