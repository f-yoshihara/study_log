class Books::KanbanController < ApplicationController
  before_action :check_logined
  def index
    @wish        = Book.where(status: :wish)
    @backlog     = Book.where(status: :backlog)
    @in_progress = Book.where(status: :in_progress)
    @review      = Book.where(status: :review)
    @done        = Book.where(status: :done)
    @deleted     = Book.where(status: :deleted)
  end
end
