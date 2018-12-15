class CalendarController < ApplicationController
  def index
    @done = PostIt.all
  end
  def show
    @date = params[:id]
    @done = PostIt.where(done_at: DateTime.parse(@date).all_day)
  end
end