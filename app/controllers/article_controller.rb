class ArticleController < ApplicationController
  def index
    render json: Article.all
  end

  def show
    render json: Article.find(params[:title])
  end

  def create
    article = Article.create!(post_name)
    render json: article
  end

  def update
    article = Article.find(params[:title])
    article.update!(article_params)
    render json: post
  end

  def destroy
    Article.find(params[:title]).destroy
    head :no_content
  end

  private

  def article_param
    params.permit(:name, :title, :content)
  end
end
