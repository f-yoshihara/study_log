class KanbanController < ApplicationController
  before_action :set_book, only: [:show]

  def index
    @backlog      = Book.where(status: 0)
    @in_progress  = Book.where(status: 1)
    @review       = Book.where(status: 2)
    @done         = Book.where(status: 3)
  end

  def show

  end

  private
    def set_book
      @book = Book.find(params[:id])
    end
end
