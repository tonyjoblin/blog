class ArticlesController < ApplicationController
  def new; end

  # Creates a new article and redirects to index
  def create
    @article = Article.new new_article_params
    @article.save
    redirect_to @article
  end

  def new_article_params
    params.require(:article).permit(:title, :text)
  end
end
