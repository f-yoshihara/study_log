class PostIts::KanbanController < ApplicationController
  before_action :set_backlog,     only: [:index, :backlog]
  before_action :set_in_progress, only: [:index, :in_progress]
  before_action :set_done,        only: [:index, :done]
  before_action :set_deleted,     only: :deleted

  private
    def set_backlog
      @backlog = PostIt.where(status: :backlog)
    end

    def set_in_progress
      @in_progress = PostIt.where(status: :in_progress)
    end

    def set_done
      @done = PostIt.where(status: :done, done_at: Time.current.all_day)
    end

    def set_deleted
      @deleted = PostIt.where(status: :deleted)
    end
end
