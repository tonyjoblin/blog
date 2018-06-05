class ArticlesController < ApplicationController
  def new; end

  # Creates a new article and redirects to index
  def create
    render plain: params[:article].inspect
  end
end
