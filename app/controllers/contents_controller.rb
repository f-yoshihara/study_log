class ContentsController < ApplicationController
  before_action :set_book, only: :new
  before_action :set_content, only: [:show, :edit]

  def index
  end

  def show
  end

  def edit
  end

  def update
    if @content.update(content_params)
      flash[:notice] = "変更を保存しました"
      redirect_to(contents_path)
    else
      render(new_content_path)
    end
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    if @content.save
      flash[:notice] = "コンテンツを登録しました"
      redirect_to("/books/#{@content.book.id}")
    else
      render(new_content_path)
    end
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def set_content
      @content = Content.find(params[:id])
    end

    def content_params
      params.require(:content).permit(:book_id, :title, :pages)
    end
end
