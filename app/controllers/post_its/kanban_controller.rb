class PostIts::KanbanController < ApplicationController
  def index
    @backlog     = PostIt.where(status: :backlog)
    @in_progress = PostIt.where(status: :in_progress)
    @done        = PostIt.where(status: :done)
    @deleted     = PostIt.where(status: :deleted)
  end
end
