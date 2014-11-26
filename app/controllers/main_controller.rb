class MainController < ApplicationController
  def index
    @posts = BlogPost.all.order(id: :desc).limit(6)
    @index = IndexPage.first
    @items = ShopItem.all.order(sort_index: :desc)
    @blocks = @index.promo_blocks.sort_by {|e| e.id }

  end

  def static
    @page = IndexPage.find_by(alias: params[:alias])
  end

end
