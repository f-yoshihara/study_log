class CalendarController < ApplicationController
  before_action :check_logined
  def index
    @done = PostIt.where(user_id: @user)
  end
  def show
    @date = params[:id]
    @done = PostIt.where(done_at: DateTime.parse(@date).all_day, user_id: @user)
  end
end
