class BlogController < ApplicationController
  def index
    @category = Category.find_by(alias: params[:category])
    @list = @category.try(:blog_posts) || BlogPost.all
  end

  def show
    @category = Category.find_by(alias: params[:category])
    @article = BlogPost.find_by(alias: params[:alias])
  end
end
