class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def show
    @articles = Article.find(params[:id])
  end
  def new
    @articles = Article.new
  end
  def create
    @articles = Article.new(title: params[:title],body: params[:body])
    # play ssti ?
    if @articles.save
      redirect_to @articles
    else
      render :new
    end
  end
end
