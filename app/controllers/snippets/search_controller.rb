class Snippets::SearchController < ApplicationController
  def index
    @user_id = session[:user]
    @snippets = Snippet.where('code LIKE ? AND user_id = ?', "%#{params[:search_code]}%", @user_id)
  end
end
