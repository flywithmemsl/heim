class ShopController < ApplicationController

  def index
    @gallery = ShopGallery.first.try :gallery
    category = params[:category]
    if category == "sale"
      @items = ShopItem.where(sale: :true).try(:order, sort_index: :desc)

    else
      @category = ShopCategory.find_by(alias: category)
      @items = @category.try(:shop_items).try(:order, sort_index: :desc) || ShopItem.all.try(:order, sort_index: :desc)
    end
    # @items = ShopItem.all.order(sort_index: :desc)
    # if @category.name = "Sale"
    #
    # else



  end

  def show
    # @category = ShopCategory.find_by(alias: params[:category])

  end

end
