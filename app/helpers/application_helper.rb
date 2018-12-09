module ApplicationHelper
  private
    def current_user
      User.find(session[:user])
    rescue ActiveRecord::RecordNotFound
      false
    end
end
