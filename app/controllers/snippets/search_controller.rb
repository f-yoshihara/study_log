class Snippets::SearchController < ApplicationController
  def index
    @snippets = Snippet.where('code LIKE ?', "%#{params[:search_code]}%")
  end
end
