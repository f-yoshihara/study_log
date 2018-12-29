class ApplicationController < ActionController::Base

  private
    def check_logined
      if session[:user]
        begin
          @user = User.find(session[:user])
        rescue ActiveRecord::RecordNotFound
          reset_session
        end
      end
      unless @user
        flash[:referer] = request.fullpath
        redirect_to auth_path
      end
    end
end
