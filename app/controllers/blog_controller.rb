class BlogController < ApplicationController
  def index
    @list = BlogPost.all
  end

  def show
    @category = Category.find_by(alias: params[:category])
    @article = BlogPost.find_by(alias: params[:alias])
  end
end
