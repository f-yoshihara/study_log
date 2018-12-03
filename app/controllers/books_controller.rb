class BooksController < ApplicationController
  before_action :set_book, only: [:show]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end
end
