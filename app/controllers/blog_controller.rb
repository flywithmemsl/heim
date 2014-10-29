class BlogController < ApplicationController
  def index
    @category = Category.find_by(alias: params[:category])
    @list = @category.try(:blog_posts).try(:order, :date) || BlogPost.all.try(:order, :date)

  end

  def show
    @category = Category.find_by(alias: params[:category])
    post = BlogPost.find_by(alias: params[:alias])
    if post == nil
      post = BlogPost.find_by(id: params[:alias])
    end
    @article = post
  end

  def search
    @q = params[:q].to_s
    @results = BlogPost.none.page(1)
    if @q != ''
      @results = BlogPost.search "#{@q}|*#{@q}*", page: params[:page], per_page: 20
    end
  end



end
