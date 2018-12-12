class PostIts::TrashCanController < ApplicationController
  def index
    @trash = PostIt.where(status: :deleted)
  end
end
