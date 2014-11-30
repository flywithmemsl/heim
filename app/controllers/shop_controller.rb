class ShopController < ApplicationController

  def index
    # @gallery = ShopGallery.first.try :gallery
    @category = ShopCategory.find_by(alias: params[:category])
    # @items = ShopItem.all.order(sort_index: :desc)
    @items = @category.try(:shop_items).try(:order, sort_index: :desc) || ShopItem.all.try(:order, sort_index: :desc)


  end

  def show
    # @category = ShopCategory.find_by(alias: params[:category])

  end

end
