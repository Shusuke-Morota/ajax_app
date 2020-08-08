class ArticlesController < ApplicationController
  def index
  	@articles = Article.all
  	@article = Article.new
  end

  def create
  	Article.create(article_params)
  	@articles = Article.all
  end

  def show
  end

  def edit
  end

  private
  def article_params
  	params.require(:article).permit(:title, :body)
  end
end
