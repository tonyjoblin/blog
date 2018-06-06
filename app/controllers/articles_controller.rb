class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  # Creates a new article and redirects to index
  def create
    @article = Article.new new_article_params
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def new_article_params
    params.require(:article).permit(:title, :text)
  end
end
