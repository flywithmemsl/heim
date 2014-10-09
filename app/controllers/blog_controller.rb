class BlogController < ApplicationController
  def index
  end

  def show
    @category = Category.find_by(alias: params[:category])
    @article = BlogPost.find_by(alias: params[:alias])
  end
end
