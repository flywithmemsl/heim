class ShopController < ApplicationController

  def index
    @gallery = ShopGallery.first.try :gallery
    category = params[:category]

    @items = ''
    if category == "sale"
      @items = ShopItem.where(sale: :true).try(:order, sort_index: :desc)
    end

    if category == nil

      @all = true
      @kinfolk = ShopCategory.find_by(alias: 'kinfolk')
      @heim = ShopCategory.find_by(alias: 'heim')
      @items = @kinfolk.try(:shop_items).try(:order, sort_index: :desc) || ShopItem.all.try(:order, sort_index: :desc)
      @items2 = @heim.try(:shop_items).try(:order, sort_index: :desc) || ShopItem.all.try(:order, sort_index: :desc)


    end

    if @items == ''
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
