class SnippetsController < ApplicationController
  before_action :set_snippet, only: [:show, :edit]

  def index
    @snippets = Snippet.all.order(id: 'desc')
  end

  def show
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
      params.require(:snippet).permit(:code, :category)
    end
end
