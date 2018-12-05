class BooksController < ApplicationController
  before_action :set_book, only: [:show, :destroy]

  def index
    @books = Book.all.order(id: 'desc')
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "書籍を登録しました"
      redirect_to(books_path)
    else
      render(new_book_path)
    end
  end

  def show
  end

  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: '書籍情報を削除しました。' }
      format.json { head :no_content }
    end
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :price, :pages, :bought_at, :purpose)
    end
end
