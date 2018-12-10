class Books::KanbanController < ApplicationController
  def index
    @wish        = Book.where(status: 0)
    @backlog     = Book.where(status: 1)
    @in_progress = Book.where(status: 2)
    @review      = Book.where(status: 3)
    @done        = Book.where(status: 4)
  end
end
