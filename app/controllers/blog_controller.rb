class BlogController < ApplicationController
  def index

    @category = Category.find_by(alias: params[:category])
    @list = @category.try(:blog_posts).try(:where, publish: :false).try(:order, date: :desc) || BlogPost.all.try(:where, publish: :false).try(:order, date: :desc)

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
      @results = BlogPost.search "#{@q}|*#{@q}*", page: params[:page], per_page: 20, :order => 'date DESC'
      @shop_results = ShopItem.search "#{@q}|*#{@q}*", page: params[:page], per_page: 20, :order => 'sort_index DESC'
    end
  end



end
